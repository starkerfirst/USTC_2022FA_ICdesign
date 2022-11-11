#-----------------------------------------------------------------------------
# clock_opt_psyn_icc.tcl:
#     Post CTS optimization.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl 

 
open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_CLOCK_OPT_PSYN_CEL}" 
copy_mw_cel -from $ICC_CLOCK_OPT_CTS_CEL -to $ICC_CLOCK_OPT_PSYN_CEL
open_mw_cel $ICC_CLOCK_OPT_PSYN_CEL

source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_cts_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl

set_app_var compile_instance_name_prefix icc_clock 

if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


#-----------------------------------------------------------------------------
# Clock Tree Optimization
#-----------------------------------------------------------------------------

if {[file exists [which $ICC_IN_AOCV_TABLE_FILE]]} {
    # Enable AOCV analysis.
    set_app_var timing_aocvm_enable_analysis          true
    set_app_var timing_aocvm_enable_distance_analysis true
  
    # Read AOCV tables for design, hierarchical cells or lib cells.
    #read_aocvm $ICC_IN_AOCV_TABLE_FILE
    read_aocvm -max $ICC_IN_AOCV_TABLE_FILE_MAX
    read_aocvm -min $ICC_IN_AOCV_TABLE_FILE_MIN

    # Report specified AOCV data and computed derates.
    redirect -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.aocvm.rpt {report_ocvm -type aocvm -nosplit}
    }

# Control the effort level of TNS optimization.
set_optimization_strategy -tns_effort $ICC_TNS_EFFORT_PREROUTE

extract_rc
if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}

if {$ICC_ENABLE_CHECKPOINT} {
    echo "RM-Info : Please ensure there's enough disk space before enabling the set_checkpoint_strategy feature."
    set_checkpoint_strategy -enable -overwrite
    # The -overwrite option is used by default. Remove it if needed.
    }

if {[file exists [which $CUSTOM_CLOCK_OPT_PSYN_PRE_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_CLOCK_OPT_PSYN_PRE_SCRIPT]"
    source $CUSTOM_CLOCK_OPT_PSYN_PRE_SCRIPT
    }

set clock_opt_psyn_cmd "clock_opt -no_clock_route -only_psyn -area_recovery" 

if {$PLACE_OPT_CONGESTION_DRIVEN}   {lappend clock_opt_psyn_cmd -congestion}
if {!$DFT && [get_scan_chain] == 0} {lappend clock_opt_psyn_cmd -continue_on_missing_scandef}
if {$POWER_OPTIMIZATION}            {lappend clock_opt_psyn_cmd -power}

echo $clock_opt_psyn_cmd
eval $clock_opt_psyn_cmd
# Use -optimize_dft if there are SCANDEF and scan nets with hold violations.
# Note that scan wire length can increase and may impact QoR.

if {[file exists [which $CUSTOM_CLOCK_OPT_PSYN_POST_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_CLOCK_OPT_PSYN_POST_SCRIPT]"
    source $CUSTOM_CLOCK_OPT_PSYN_POST_SCRIPT
    }

if {$ICC_ENABLE_CHECKPOINT} {set_checkpoint_strategy -disable}

route_zrt_group -all_clock_nets -reuse_existing_global_route true -stop_after_global_route true
if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


#-----------------------------------------------------------------------------
# Additional Features for the Post CTS Optimization
#-----------------------------------------------------------------------------

# When the design has congestion issues post CTS, use:
refine_placement -congestion_effort medium

# Additional optimization can be done using the psynopt command:
# psynopt -effort "medium|high"

if {$CLOCK_OPT_PSYN_PREROUTE_FOCALOPT_LAYER_OPTIMIZATION} {
    # For advanced technologies, where upper metal layer resistance values are
    # much smaller then lower layer ones, layer optimization can be performed
    # to improve existing buffer trees.
    #Use set_preroute_focal_opt_strategy to customize the settings.
    report_preroute_focal_opt_strategy
    preroute_focal_opt -layer_optimization
    }

if {$CLOCK_OPT_PSYN_PREROUTE_FOCALOPT_AUTO_NDR} {
    # This will assign 2x width spacing non-default rules to timing critical
    # nets while taking congestion into consideration. The automatically
    # generated non-default rule will be named "auto_ndr_rule" and can be
    # reported by the report_net_routing_rule command. 
    set_preroute_focal_opt_strategy -congestion_effort high
    preroute_focal_opt -auto_routing_rule
    }


#-----------------------------------------------------------------------------
# Antenna Prevention
#-----------------------------------------------------------------------------

if {$ICC_USE_DIODES && $ICC_PORT_PROTECTION_DIODE != ""} {
    # Optionally insert a diode before routing to avoid antenna effects on
    # the ports of the block.
    remove_attribute $ICC_PORT_PROTECTION_DIODE dont_use
    set ports [remove_from_collection [get_ports * -filter "direction==in"] [get_ports $ICC_PORT_PROTECTION_DIODE_EXCLUDE_PORTS]]
    insert_port_protection_diodes -prefix port_protection_diode -diode_cell [get_lib_cells $ICC_PORT_PROTECTION_DIODE] -port $ports -ignore_dont_touch
    legalize_placement
    }


#-----------------------------------------------------------------------------
# Connect P/G
#-----------------------------------------------------------------------------

# Connect power & ground for non-MV and MV-mode.
if {[file exists [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]"
    source -echo $CUSTOM_CONNECT_PG_NETS_SCRIPT
    } \
else {
    derive_pg_connection \
        -power_net      $MW_POWER_NET \
        -power_pin      $MW_POWER_PORT \
        -ground_net     $MW_GROUND_NET \
        -ground_pin     $MW_GROUND_PORT 
    if {!$ICC_TIE_CELL_FLOW} {
        derive_pg_connection -power_net $MW_POWER_NET -ground_net $MW_GROUND_NET -tie
        }
    }

if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


#-----------------------------------------------------------------------------
# Saving the Cell and Snapshot Creation
#-----------------------------------------------------------------------------

save_mw_cel -as $ICC_CLOCK_OPT_PSYN_CEL 


if {$ICC_REPORTING_EFFORT == "MED"} {
    redirect -tee -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.qor {report_qor}
    redirect -tee -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.qor -append {report_qor -summary}
    # redirect -tee -file $REPORT_DIR_PLACE_OPT/$ICC_CLOCK_OPT_PSYN_CEL.qor -append {report_timing_histogram -range_maximum 0}
    # redirect -tee -file $REPORT_DIR_PLACE_OPT/$ICC_CLOCK_OPT_PSYN_CEL.qor -append {report_timing_histogram -range_minimum 0}
    redirect      -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.con {report_constraints}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -tee -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.clock_tree   {report_clock_tree -nosplit -summary}
    redirect      -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.clock_timing {report_clock_timing -nosplit -type skew}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.max.tim {report_timing -nosplit -capacitance -transition_time -input_pins -nets -delay max} 
    redirect -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.min.tim {report_timing -nosplit -capacitance -transition_time -input_pins -nets -delay min} 
    }

if {$ICC_REPORTING_EFFORT == "MED" && $POWER_OPTIMIZATION} {
    redirect -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.power {report_power -nosplit}
    }

# Create snapshot and save
if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.placement_utilization.rpt {report_placement_utilization -verbose}
    create_qor_snapshot -clock_tree -name $ICC_CLOCK_OPT_PSYN_CEL
    redirect -file $REPORT_DIR_CLOCK_OPT_PSYN/$ICC_CLOCK_OPT_PSYN_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
    }

# Categorized Timing Report (CTR)
# Use CTR in the interactive mode to view the results of create_qor_snapshot.
# Recommended to be used with GUI opened.
# query_qor_snapshot -display (or GUI: Timing -> Query QoR Snapshot)
#
# query_qor_snapshot condenses the timing report into a cross-referencing
# table for quick analysis. It can be used to highlight violating paths and
# metric in the layout window and timing reports. CTR also provides special
# options to focus on top-level and hierarchical timing issues. When dealing
# with dirty designs, increasing the number violations per path to 20-30 when
# generating a snapshot can help finding more issues after each run
# (create_qor_snapshot -max_paths 20). 


close_mw_lib


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

#exit

