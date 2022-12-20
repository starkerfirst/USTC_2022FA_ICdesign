#-----------------------------------------------------------------------------
# clock_opt_cts_icc.tcl:
#     Clock tree synthesis and optimization.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl 


open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_CLOCK_OPT_CTS_CEL}" 
copy_mw_cel -from $ICC_PLACE_OPT_CEL -to $ICC_CLOCK_OPT_CTS_CEL
open_mw_cel $ICC_CLOCK_OPT_CTS_CEL

source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_cts_settings_icc.tcl

set_app_var cts_instance_name_prefix CTS


#-----------------------------------------------------------------------------
# Relative Placement (RP)
#-----------------------------------------------------------------------------

# Ensure that the RP cells are not changed during clock_opt.
# set_rp_group_options [all_rp_groups] -cts_option fixed_placement
# set_rp_group_options [all_rp_groups] -cts_option size_only


#-----------------------------------------------------------------------------
# Clock Tree Synthesis
#-----------------------------------------------------------------------------

# set_delay_calculation_options -routed_clock arnoldi

if {$ICC_SANITY_CHECK} {
    check_physical_design -stage pre_clock_opt -no_display -output $REPORT_DIR_CLOCK_OPT_CTS/check_physical_design.pre_clock_opt 
    }

if {$ICC_ENABLE_CHECKPOINT} {
    echo "RM-Info: Please ensure there's enough disk space before enabling the set_checkpoint_strategy feature."
    set_checkpoint_strategy -enable -overwrite
    # The -overwrite option is used by default. Remove it if needed.
    }

# A SAIF file is optional for low power placement and self-gating.
if {$POWER_OPTIMIZATION && $ICC_CTS_LOW_POWER_PLACEMENT || $ICC_CTS_SELF_GATING} {
    if {[file exists [which $ICC_IN_SAIF_FILE]]} {
        read_saif -input $ICC_IN_SAIF_FILE -instance_name $ICC_SAIF_INSTANCE_NAME
        }
    }

if {$POWER_OPTIMIZATION && $ICC_CTS_LOW_POWER_PLACEMENT} {set_optimize_pre_cts_power_options -low_power_placement true}
if {$POWER_OPTIMIZATION && $ICC_CTS_CLOCK_GATE_MERGE   } {set_optimize_pre_cts_power_options -merge_clock_gates true}
# Gate splitting to avoid timing violations on enable pins of ICGs.
if {$POWER_OPTIMIZATION && $ICC_CTS_CLOCK_GATE_SPLIT   } {set_optimize_pre_cts_power_options -split_clock_gates true}

if {[file exists [which $CUSTOM_CLOCK_OPT_CTS_PRE_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_CLOCK_OPT_CTS_PRE_SCRIPT]"
    source $CUSTOM_CLOCK_OPT_CTS_PRE_SCRIPT
    }

set clock_opt_cts_cmd "clock_opt -only_cts -no_clock_route"

if {!$DFT && [get_scan_chain] == 0} {lappend clock_opt_cts_cmd -continue_on_missing_scandef}
if {$POWER_OPTIMIZATION} {
    if {$ICC_CTS_LOW_POWER_PLACEMENT || $ICC_CTS_CLOCK_GATE_MERGE || $ICC_CTS_CLOCK_GATE_SPLIT} {lappend clock_opt_cts_cmd -power}
    }
if {$ICC_CTS_INTERCLOCK_BALANCING && [file exists [which $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE]]} {lappend clock_opt_cts_cmd -inter_clock_balance}
if {$ICC_CTS_UPDATE_LATENCY} {lappend clock_opt_cts_cmd -update_clock_latency}
if {$ICC_CTS_SELF_GATING}    {lappend clock_opt_cts_cmd -insert_self_gating}


echo $clock_opt_cts_cmd
eval $clock_opt_cts_cmd


if {[file exists [which $CUSTOM_CLOCK_OPT_CTS_POST_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_CLOCK_OPT_CTS_POST_SCRIPT]"
    source $CUSTOM_CLOCK_OPT_CTS_POST_SCRIPT
    }

if {$ICC_ENABLE_CHECKPOINT} {set_checkpoint_strategy -disable}

if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


#-----------------------------------------------------------------------------
# Additional Features to the clock_opt Command
#-----------------------------------------------------------------------------

# Do interclock delay balancing.
# set_inter_clock_delay_options -balance_group "Clk1 Clk2"
# clock_opt -inter_clock_balance

# Update the IO latency before starting the post CTS optimization.
# set_latency_adjustment_options -from_clock ... -to_clock ... -latency ...
# clock_opt -update_clock_latency -no_clock_route

# Check whether the clock nets got the NDR.
# report_net_routing_rules [get_nets -hier *]


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

source -echo common_post_cts_timing_settings.tcl

# Remove ideal networks.
remove_ideal_network [all_fanout -flat -clock_tree]

# Set fix hold.
set_fix_hold [all_clocks]

# Uncertainties.
if {$ICC_APPLY_RM_UNCERTAINTY_POSTCTS && [file exists [which $ICC_UNCERTAINTY_POSTCTS_FILE]]} {
    echo "RM-Info: Sourcing the post-cts uncertainty file: $ICC_UNCERTAINTY_POSTCTS_FILE"
    source -echo $ICC_UNCERTAINTY_POSTCTS_FILE 
    }


#-----------------------------------------------------------------------------
# Saving the Cell and Snapshot Creation
#-----------------------------------------------------------------------------

save_mw_cel -as $ICC_CLOCK_OPT_CTS_CEL


if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -tee -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.clock_tree   {report_clock_tree -nosplit -summary}
    redirect      -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.clock_timing {report_clock_timing -nosplit -type skew}
    }

if {$ICC_REPORTING_EFFORT == "MED"} {
    redirect -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.max.tim {report_timing -nosplit -capacitance -transition_time -input_pins -nets -delay max} 
    redirect -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.min.tim {report_timing -nosplit -capacitance -transition_time -input_pins -nets -delay min} 
    }

if {$ICC_REPORTING_EFFORT == "MED"} {
    redirect -tee -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.qor {report_qor}
    redirect -tee -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.qor -append {report_qor -summary}
    redirect      -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.con {report_constraints}
    }


if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.placement_utilization.rpt {report_placement_utilization -verbose}
    create_qor_snapshot -clock_tree -name $ICC_CLOCK_OPT_CTS_CEL
    redirect -file $REPORT_DIR_CLOCK_OPT_CTS/$ICC_CLOCK_OPT_CTS_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
    }

# Categorized Timing Report (CTR).
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
# Specify -type min for hold time violations. 


close_mw_lib


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

exit

