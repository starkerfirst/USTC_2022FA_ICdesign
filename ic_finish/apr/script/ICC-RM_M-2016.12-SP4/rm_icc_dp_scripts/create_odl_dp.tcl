##########################################################################################
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##########################################################################################
##########################################################################################
## create_odl_dp.tcl : create on demand netlist
##########################################################################################


source -echo ./rm_setup/icc_setup.tcl 

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_DP_CREATE_PLANGROUPS_CEL -to $ICC_DP_CREATE_ODL_CEL
open_mw_cel $ICC_DP_CREATE_ODL_CEL
link


set create_on_demand_netlist_cmd "create_on_demand_netlist -plan_groups {$ICC_DP_PLAN_GROUPS} -on_demand_cell Design_ODN"

lappend create_on_demand_netlist_cmd -block_sdc_map_file [which $ICC_DP_ODL_BLOCK_SDC_MAP_FILE]

set ICC_DP_ODL_HOST_OPTION_NOT_SPECIFIED_PROPERLY FALSE
if {($ICC_DP_ODL_HOST_OPTION == "lsf" || $ICC_DP_ODL_HOST_OPTION == "grd") && $ICC_DP_ODL_HOST_OPTION_SUBMIT_OPTIONS != ""} {
  set_host_options -name my_odl_host_options -pool $ICC_DP_ODL_HOST_OPTION -submit_options $ICC_DP_ODL_HOST_OPTION_SUBMIT_OPTIONS
} elseif {$ICC_DP_ODL_HOST_OPTION == "samehost"} {
  set_host_options -name my_odl_host_options [sh hostname]
} elseif {$ICC_DP_ODL_HOST_OPTION == "list_of_hosts"} {
  set_host_options -name my_odl_host_options $ICC_DP_ODL_HOST_OPTION_HOSTS_LIST
} else {
  set ICC_DP_ODL_HOST_OPTION_NOT_SPECIFIED_PROPERLY TRUE
}

if {!$ICC_DP_ODL_HOST_OPTION_NOT_SPECIFIED_PROPERLY} {
  lappend create_on_demand_netlist_cmd -host_options my_odl_host_options
} else {
  echo "RM-Error : \$ICC_DP_ODL_HOST_OPTION is not specified properly. Host options are not applied. Please specify a valid \$ICC_DP_ODL_HOST_OPTION value (and \$ICC_DP_ODL_HOST_OPTION_SUBMIT_OPTIONS or \$ICC_DP_ODL_HOST_OPTION_HOSTS_LIST)"
}
unset ICC_DP_ODL_HOST_OPTION_NOT_SPECIFIED_PROPERLY

echo $create_on_demand_netlist_cmd
eval $create_on_demand_netlist_cmd

## Note: 
#  For larger designs, consider using a two step approach to further reduce run time.
#  Please refer to the example in rm_icc_dp_scripts/odl_two_step_approach_example 

open_mw_cel Design_ODN
report_on_demand_netlist


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


save_mw_cel -as $ICC_DP_CREATE_ODL_CEL


exit

