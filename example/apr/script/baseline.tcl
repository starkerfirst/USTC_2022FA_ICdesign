#-----------------------------------------------------------------------------
# baseline.tcl:
#     Virtual flat placement, PNS, PNA, IPO, and proto route.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "rm-info: running script [info script]\n"
puts "-----------------------------------------------------------------------"


#-----------------------------------------------------------------------------
# Set Placement Strategies
#-----------------------------------------------------------------------------

# Set placement strategies to further fine tune the placer.
# To find all available strategies and current values, use:
# report_fp_placement_strategy

# Place macros on edge of chip or plan group.
# Default: off.
# set_fp_placement_strategy -macros_on_edge on

# Control channels among macros which standard cell can not be placed.
# Default: 0.
set_fp_placement_strategy -sliver_size 10


#-----------------------------------------------------------------------------
# Create Virtual Flat Placement
#-----------------------------------------------------------------------------

# create_fp_placement is default with -effort low.
# Alternatively, the placement can be broken into 3 steps and fine tune the
# results gradually:
#
# First placement is intended to get a fast and default macro placement result
# which allows to observe design characteristics. Then please check GUI for
# macro locations and connectivity.
# create_fp_placement -effort low -no_legalize
#
# legalize_fp_placement
#
# Second placement is intended to add appropriate options to improve results.
# For example, -timing_driven -congestion_driven
# create_fp_placement -effort high -incremental all
#
create_fp_placement


#-----------------------------------------------------------------------------
# Check Routability and Timing
#-----------------------------------------------------------------------------

route_zrt_global -exploration true 
save_mw_cel -as flat_dp_groute_after_place
remove_route_by_type -signal_detail_route -clock_tie_off -pg_tie_off

extract_rc -estimate
# create_qor_snapshot -name flat_dp_place
# report_qor_snapshot -name flat_dp_place > ${REPORT_DIR_DP}/pre.qor


#-----------------------------------------------------------------------------
# Template Based Power Network Synthesis (T-PNS)
#-----------------------------------------------------------------------------

# For template based power network synthesis, need to provide a customized
# script to include set_power_ring_strategy, set_power_plan_strategy, and
# compile_power_plan commands to synthesize ring and mesh.
# Refer to SolvNet #034446 for application note with complete details.

# Specify a customized script through $CUSTOM_ICC_DP_PNS_SCRIPT.
if {[file exists [which $CUSTOM_ICC_DP_PNS_SCRIPT]]} {
    source $CUSTOM_ICC_DP_PNS_SCRIPT
    }

# Check the integrity of the power network.
# check_fp_rail


#-----------------------------------------------------------------------------
# Power Network Analysis (PNA)
#-----------------------------------------------------------------------------

# To run it on block level with existing PG pins, use following option:
#     -use_pins_as_pads
#
# To run it on a block without existing PG pins, use following commands before
# analyze_fp_rail:
#     create_fp_virtual_pad -load_file pna_output/strap_end.VDD.vpad
#     create_fp_virtual_pad -load_file pna_output/strap_end.VSS.vpad
# then add the following option to analyze_fp_rail:
#     -use_pins_as_pads
#
# To run it on top level with existing power pads, use one of the following
# options:
#     -pad_masters $PNS_PAD_MASTERS                   (specify pad cell masters)
#     -read_pad_master_file $PNS_PAD_MASTER_FILE      (specify a file with pad cell masters)
#     -read_pad_instance_file $PNS_PAD_INSTANCE_FILE  (specify a file with pad cell instances)
#
# To run it on top level without existing power pads, use following commands
# before analyze_fp_rail:
#     create_fp_virtual_pad -load_file pna_output/strap_end.VDD.vpad
#     create_fp_virtual_pad -load_file pna_output/strap_end.VSS.vpad
#
# To simulate standard cell rail during PNA, use the following option:
#     -create_virtual_rails $PNS_VIRTUAL_RAIL_LAYER
#
# To use more accurate power consumption of each instance calculated in ICC,
# use the following option:
#     -analyze_power

# create_fp_virtual_pad -nets $MW_POWER_NET  -point {}
# create_fp_virtual_pad -nets $MW_GROUND_NET -point {}

# analyze_fp_rail \
#     -power_budget       $PNS_POWER_BUDGET \
#     -voltage_supply     $PNS_VOLTAGE_SUPPLY \
#     -output_directory   $PNS_OUTPUT_DIR \
#     -nets               $PNS_POWER_NETS \
#     -use_pins_as_pads

source common_optimization_settings_icc.tcl
extract_rc -estimate
report_timing -nosplit -cap -tran -input -net -delay max > $REPORT_DIR_DP/optimize_fp_timing_before.rpt

set compile_instance_name_prefix dp_ipo
optimize_fp_timing


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

if {[file exists [which $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT]]} {
    source $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT
    }

route_zrt_global -exploration true 
save_mw_cel -as flat_dp_groute
save_mw_cel -as $ICC_FLOORPLAN_CEL
remove_route_by_type -signal_detail_route -clock_tie_off -pg_tie_off

extract_rc -estimate
#create_qor_snapshot -name flat_dp
#report_qor_snapshot -name flat_dp > ${REPORT_DIR_DP}/final.qor
report_timing -nosplit -cap -tran -input -net -delay max > ${REPORT_DIR_DP}/final.rpt

if {[all_macro_cells] != ""} { 
    set_attribute [all_macro_cells] is_fixed true
    }

save_mw_cel

write_floorplan -placement {io hard_macro soft_macro} ${RESULT_DIR}/dump.floorplan
write_floorplan -preroute ${RESULT_DIR}/dump.route
write_floorplan -all ${RESULT_DIR}/dump.complete_floorplan
write_pin_pad_physical_constraints -cel [get_object_name  [current_mw_cel]] -io_only -constraint_type side_order ${RESULT_DIR}/dump.tdf

# Outputs for DCT.
write_def -version 5.7 -rows_tracks_gcells -macro -pins -blockages -specialnets -vias -regions_groups -verbose -output ${RESULT_DIR}/dump.DCT.def
write_floorplan -create_terminal -create_bound -row -track -preroute -placement {io terminal hard_macro soft_macro} ${RESULT_DIR}/dump.DCT.fp


close_mw_cel

puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"
