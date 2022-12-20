#-----------------------------------------------------------------------------
# chip_finish_icc.tcl:
#     Several chipfinishing steps.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl 

open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_CHIP_FINISH_CEL}"
copy_mw_cel -from $ICC_ROUTE_OPT_CEL -to $ICC_CHIP_FINISH_CEL
open_mw_cel $ICC_CHIP_FINISH_CEL

source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl
source -echo common_route_si_settings_zrt_icc.tcl

# Turn off soft spacing for timing optimization during chip finishing.
set_route_zrt_detail_options -eco_route_use_soft_spacing_for_timing_optimization false

# Enable place std filler under power/ground net.
remove_pnet_options
set_pnet_options -partial $PNET_METAL_LIST -see_object {all_types}

if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


#-----------------------------------------------------------------------------
# Critical Area Reduction
#-----------------------------------------------------------------------------

if {$ICC_REDUCE_CRITICAL_AREA} {
    # Timing driven wire spreading for shorts and widening for opens.
    # It is recommended to define a slack threshold to avoid that nets with
    # too small slack are touched. The unit of $TIMING_PRESERVE_SLACK_SETUP
    # and $TIMING_PRESERVE_SLACK_HOLD is the library unit, so make sure that
    # provide the correct values in case the library has ps as unit.
    # Default are 0.1 and 0, i.e. 0.1ns and 0ns, respectively.
    spread_zrt_wires -timing_preserve_setup_slack_threshold $TIMING_PRESERVE_SLACK_SETUP -timing_preserve_hold_slack_threshold $TIMING_PRESERVE_SLACK_HOLD
    widen_zrt_wires -timing_preserve_setup_slack_threshold $TIMING_PRESERVE_SLACK_SETUP -timing_preserve_hold_slack_threshold $TIMING_PRESERVE_SLACK_HOLD

    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
    }


#-----------------------------------------------------------------------------
# Antenna Diode Fixing
#-----------------------------------------------------------------------------

if {$ICC_FIX_ANTENNA} {
    if {$ICC_USE_DIODES && [file exists [which $ANTENNA_RULES_FILE]] && $ICC_ROUTING_DIODES != ""} {
        set_route_zrt_detail_options -antenna true -diode_libcell_names $ICC_ROUTING_DIODES -insert_diodes_during_routing true
        route_zrt_detail -incremental true 
        }
    }
  

#-----------------------------------------------------------------------------
# Auto Shielding
#-----------------------------------------------------------------------------

# Generate shielding wires for clocks (if not done in clock_opt_route_icc step)
# or selected signal nets.
# create_zrt_shield
# set_route_zrt_common_options -reshield_modified_nets reshield
# set_extraction_options -virtual_shield_extraction false
  

#-----------------------------------------------------------------------------
# Standard Cell Fillers
#-----------------------------------------------------------------------------

if {$ADD_FILLER_CELL } {

    # Stdcell filler for MultiVth designs.
    # https://solvnet.synopsys.com/retrieve/025405.html
    # 
    # set_cell_vt_type -library ./libs/cmos10lphvt -vt_type vtType0
    # set_cell_vt_type -library ./libs/cmos10lplvt -vt_type vtType1
    #
    # # use HT fillers between ST & HT cells
    # set_vt_filler_rule -threshold_voltage "vtType0 vtType1" \
    #     -lib_cell "STH_FILL64 STH_FILL32 STH_FILL16 STH_FILL8 STH_FILL4 STH_FILL2 STH_FILL1"      
    # 
    # # use HT fillers between HT & HT cells
    # set_vt_filler_rule -threshold_voltage "vtType0 vtType0" \
    #     -lib_cell "STH_FILL64 STH_FILL32 STH_FILL16 STH_FILL8 STH_FILL4 STH_FILL2 STH_FILL1"     
    # 
    # # use ST fillers between ST & ST cells
    # set_vt_filler_rule -threshold_voltage "vtType1 vtType1" \
    #     -lib_cell "STN_FILL64 STN_FILL32 STN_FILL16 STN_FILL8 STN_FILL4 STN_FILL2 STN_FILL1"     
    # 
    # insert_stdcell_filler -respect_overlap -connect_to_power VDD -connect_to_ground VSS
    # 
    # Constrained decoupling capacitor insertion UI:
    # insert_stdcell_filler -leakage_power <mW> -metal_filler_coverage_area <um^2>

    if {$FILLER_CELL_METAL != ""} {insert_stdcell_filler -cell_with_metal $FILLER_CELL_METAL -connect_to_power $MW_POWER_NET -connect_to_ground $MW_GROUND_NET}
    if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -connect_to_power $MW_POWER_NET -connect_to_ground $MW_GROUND_NET}

    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}

    }
  

if {[file exists [which $CUSTOM_CHIP_FINISH_POST_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_CHIP_FINISH_POST_SCRIPT]"
    source $CUSTOM_CHIP_FINISH_POST_SCRIPT
    }


#-----------------------------------------------------------------------------
# Incremental Optimization
#-----------------------------------------------------------------------------

if {$ICC_FIX_ANTENNA || $ICC_REDUCE_CRITICAL_AREA || $ADD_FILLER_CELL} {
    # TIO setup for route_opt command.
    if {$ICC_IMPLEMENTATION_PHASE == "top"} {
        source -echo common_route_opt_tio_settings_icc.tcl
        }

    # Incremental timing optimization.
    route_opt -incremental -size_only

    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
    }


# Redundant vias.
# Optionally, if DV is really a key issue, it's recommended to run a 3rd time,
# but with timing preserve on, so that any critical paths are not touched by
# this step.
if {$ICC_DBL_VIA} {
    if {$ICC_DBL_VIA_FLOW_EFFORT == "HIGH"} {
        insert_zrt_redundant_vias \
            -effort                                 medium \
            -timing_preserve_setup_slack_threshold  $TIMING_PRESERVE_SLACK_SETUP \
            -timing_preserve_hold_slack_threshold   $TIMING_PRESERVE_SLACK_HOLD

        if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
        }
    }


# Filler Cells.
if {$ADD_FILLER_CELL} {
    if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -connect_to_power $MW_POWER_NET -connect_to_ground $MW_GROUND_NET}
    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
    }
  

# Signal EM.
if {$ICC_FIX_SIGNAL_EM} {
    # All details of the ICC Signal EM flow can be found here:
    # https://solvnet.synopsys.com/retrieve/023849.html
    #
    # Loading EM constraint is required for EM analysis and fixing. 
    # It can be in TLUPlus, plib, ALF, or ITF format.
    # ex, set_mw_technology_file -plib plib_file_name.plib $MW_DESIGN_LIBRARY  
    # ex, set_mw_technology_file -alf alf_file_name $MW_DESIGN_LIBRARY 
    #
    # Loading and setting switching activity steps are optional.
    # ex, read_saif -input your_switching.saif
    # ex, set_switching_activity -toggle_rate <positive number> -static_probability <0to1> [get_nets -hier *]
    #
    # To fix signal EM, please uncomment the following commands after route_opt
    # is completed:
    # fix_signal_em
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

# Final route clean-up, if needed:
# Once we hit minor cleanup, best to turn off ZRoute timing options.
# This avoids extraction/timing hits.
set_route_zrt_global_options -timing_driven false -crosstalk_driven false
set_route_zrt_track_options  -timing_driven false -crosstalk_driven false
set_route_zrt_detail_options -timing_driven false

# Catch any opens and try to re-route them, recheck DRC.
route_zrt_eco               


#-----------------------------------------------------------------------------
# Saving the Cell and Snapshot Creation
#-----------------------------------------------------------------------------

save_mw_cel -as $ICC_CHIP_FINISH_CEL

if {$ICC_REPORTING_EFFORT == "MED"} {
    redirect -tee -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.qor {report_qor}
    redirect -tee -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.qor -append {report_qor -summary}
    redirect      -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.con {report_constraints}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -tee -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.clock_tree {report_clock_tree -nosplit -summary}
    redirect      -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.clock_timing {report_clock_timing -nosplit -type skew}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.max.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay max} 
    redirect -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.min.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay min} 
    }

# verify_zrt_route -antenna true 
# verify_zrt_route -antenna false 

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -tee -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.sum {report_design_physical -all -verbose}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    create_qor_snapshot -clock_tree -name $ICC_CHIP_FINISH_CEL
    redirect -file $REPORT_DIR_CHIP_FINISH/$ICC_CHIP_FINISH_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
    }


close_mw_lib


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

exit

