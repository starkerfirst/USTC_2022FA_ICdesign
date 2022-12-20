##################################################################################################
# ICC Hierarchical RM  							 	 	 
# pin_assignment_budgeting_dp: Pin Assignment, Optimization, and Timing Budgetting
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##################################################################################################

source -echo ./rm_setup/icc_setup.tcl 
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL -to $ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL
open_mw_cel $ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL
link

source common_placement_settings_icc.tcl
source common_optimization_settings_icc.tcl


#########################################################################################
## Pin Assignment  								#
#########################################################################################

if {$ICC_DP_ALLOW_FEEDTHROUGH} {
  set_fp_pin_constraints -allow_feedthroughs on -keep_buses_together on
} else {
  set_fp_pin_constraints -keep_buses_together on
}
## If -allow_feedthroughs on is enabled :
#  - You can use the -feedthrough_map_file option to specify a feedthrough map input file
#  - You can use report_fp_feedthroughs command to report feedthroughs


report_fp_pin_constraints

set_route_zrt_common_options -plan_group_aware all_routing
## For large designs, you can try top level routing only by:
#  set_route_zrt_common_options -plan_group_aware top_level_routing_only
route_zrt_global -exploration true

place_fp_pins -use_existing_routing [get_plan_groups *]
save_mw_cel -as ${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_place_fp_pins

check_fp_pin_assignment -pin_spacing -pin_preroute_spacing -shorts -missing [get_plan_groups *] > ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_check_pin_assignment.rpt
check_fp_pin_alignment > ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_check_pin_alignment.rpt

# To view feedthrough nets, use the following command from GUI : 
# File/Task/Design Planning/Pin Assignment/Pin and Feedthrough Analysis


#########################################################################################
## Timing Budgeting  								#
#########################################################################################
check_fp_timing_environment -unbudgetable_pins -unconstrained_pins > $REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_check_timing_env.rpt

## If clock tree is fully synthesized on the design, set the following to let timing budgeting recognize the clock tree:
#  set synthesized_clocks TRUE
#  set_propagated_clock [get_clocks *]

optimize_fp_timing -feedthrough_buffering_only 
extract_rc -estimate
virtual_ipo
redirect -file ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_vipo.rpt {report_timing -nosplit -cap -tran -input -net -delay max -attribute -physical}
allocate_fp_budgets -file_format_spec "$BUDGETING_SDC_OUTPUT_DIR/m.sdc"
virtual_ipo -end

check_fp_budget_result -block $ICC_DP_PLAN_GROUPS -file_name ${REPORTS_DIR_DP_PIN_ASSIGNMENT_BUDGETING}/${ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL}_budget_result.rpt

# remove_propagated_clock -all

########################################
#           CONNECT P/G                #
########################################
## Connect Power & Ground for non-MV and MV-mode

if {[file exists [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]]} {
   echo "RM-Info: Sourcing [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]"
  source -echo $CUSTOM_CONNECT_PG_NETS_SCRIPT
} else {
  derive_pg_connection -power_net $MW_POWER_NET -power_pin $MW_POWER_PORT -ground_net $MW_GROUND_NET -ground_pin $MW_GROUND_PORT 
  if {!$ICC_TIE_CELL_FLOW} {derive_pg_connection -power_net $MW_POWER_NET -ground_net $MW_GROUND_NET -tie}
}
if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }

save_mw_cel
close_mw_lib
exit

