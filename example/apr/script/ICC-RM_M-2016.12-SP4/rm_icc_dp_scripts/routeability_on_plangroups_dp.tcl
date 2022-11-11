##################################################################################################
# ICC Hierarchical RM  							 	 	 
# routeability_on_plangroups_dp: PNS/PNA, IPO, and PGAR  				 	 
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##################################################################################################

source -echo ./rm_setup/icc_setup.tcl 
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
copy_mw_cel -from $ICC_DP_CREATE_ODL_CEL -to $ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL 
open_mw_cel $ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL
link

source common_placement_settings_icc.tcl


## You can customize power network synthesis constraints by loading a file
## Below are examples for the kind of commands to put in the file using set_fp_rail_constraints
#       set_fp_rail_constraints -set_global -keep_ring_outside_core -no_routing_over_hard_macros
if {[file exists [which $CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT]]} {
  source $CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT}

##############################################################################################################################
## Template Based Power Network Synthesis (T-PNS)
##############################################################################################################################
## For template based power network synthesis, you need to provide a customized script to include set_power_ring_strategy, 
#  set_power_plan_strategy, and compile_power_plan commands to synthesize ring and mesh.
#  Refer to SolvNet #034446 for application note with complete details

#  Please specify a customized script through $CUSTOM_ICC_DP_PNS_SCRIPT 
if {[file exists [which $CUSTOM_ICC_DP_PNS_SCRIPT]]} {
  source $CUSTOM_ICC_DP_PNS_SCRIPT
}

## Here are some examples for your reference :
#  <tpns_example.tcl> : an example of a customized script that makes use of the template examples mentioned below.
#  <ring_example.tpl> : an example of a template file for the ring strategies used by tpns_example.tcl 
#  <mesh_example.tpl> : an example of a template file for the mesh strategies used by tpns_example.tcl
#
#  Note :
#  - you can write out default templates from the tool instead of creating new ones yourself by doing the following :
#    compile_power_plan -ring -write_default_template ring_example.tpl and compile_power_plan -write_default_template mesh_example.tpl
#  - for advanced examples with parameters, refer to rm_icc_dp_scripts/tpns.example
#
#  <tpns_example.tcl> ------------------------------------------------------------------------------------------------------------------
#    /specify strategy for rings/
#    set_power_ring_strategy r1 -nets {VDD VSS} -core -template ring_example.tpl:non_uniform_top
#    set_power_ring_strategy r2 -nets {VDDS VSS} -voltage_area VA0 -template ring_example.tpl:non_uniform_block
#    compile_power_plan -ring 
#    
#    /specify strategy for top mesh and VA0 voltage area/
#    set_power_plan_strategy s1 -core -nets {VDD VSS} -template mesh_example.tpl:top -extension {{stop: outermost_ring}}
#    set_power_plan_strategy s2 -voltage_areas VA0 -nets {VDDS VDD} -template mesh_example.tpl:block -extension {{stop: innermost_ring}}
#    compile_power_plan
#
#  <ring_example.tpl> ------------------------------------------------------------------------------------------------------------------
#    /A side is an edge in the ring contour. A side is numbered from the lowest leftmost edge starting with "1" and 
#     increased in the clockwise direction.
#     Horizontal represents all horizontal sides and vertical represents all vertical sides/ 
#
#  template : non_uniform_top {
#    side : horizontal {
#          layer: M7
#          width : 4
#          spacing: minimum
#          offset : 
#    }
#    side : vertical {
#          layer: M6
#          width : 4
#          spacing: minimum
#          offset : 
#    }
#    side : "1 3" {
#          layer: M6
#          width : 5
#          spacing: minimum
#          offset : 
#    }     
#  }
#  template : non_uniform_block {
#    side : horizontal {
#          layer: M7
#          width : 3
#          spacing: minimum
#          offset : 
#    }
#    side : vertical {
#          layer: M6
#          width : 3
#          spacing: minimum
#          offset : 
#    }
#    side : "1 3" {
#          layer: M6
#          width : 3
#          spacing: minimum
#          offset : 
#    }     
#  }
#
#  <mesh_example.tpl> ------------------------------------------------------------------------------------------------------------------
#  template : top {
#    layer : M7 {
#          direction : horizontal
#          width : 5
#          spacing : minimum
#          number : 
#          pitch : 20 
#          offset :
#          trim_strap : true
#    }
#    layer : M8 {
#          direction : vertical
#          width : 5
#          spacing : minimum
#          number : 7
#          pitch : 20
#          offset :
#          trim_strap : true
#    }
#  }
#  
#  template : block {
#    layer : M5 {
#          direction : horizontal
#          width : 2.5
#          spacing : minimum
#          number : 
#          pitch : 15
#          offset :
#          trim_strap : true
#    }
#    layer : M6 {
#          direction : vertical
#          width : 2.5
#          spacing : minimum
#          number : 9
#          pitch : 15
#          offset :
#          trim_strap : true
#    }
#  }

## Use the following command to check the integrity of the power network
#  check_fp_rail

##############################################################################################################################
## Power Network Analysis (PNA)
##############################################################################################################################
## Optionally, use this command to set the wire extraction options for PNA. 
if {$PNA_EXTRACTION_TEMPERATURE != "" || $PNA_EXTRACTION_CORNER != ""} {
  set set_fp_rail_extraction_options_cmd "set_fp_rail_extraction_options"
  if {$PNA_EXTRACTION_TEMPERATURE != ""} {
  	lappend set_fp_rail_extraction_options_cmd -operating_temperature $PNA_EXTRACTION_TEMPERATURE
  }
  if {$PNA_EXTRACTION_CORNER != ""} {
  	lappend set_fp_rail_extraction_options_cmd -parasitic_corner $PNA_EXTRACTION_CORNER
  }
  eval $set_fp_rail_extraction_options_cmd
}

## To run it on block level with existing PG pins, you can use following option
#  -use_pins_as_pads
## To run it on a block without existing PG pins, you can use following commands before analyze_fp_rail
#       create_fp_virtual_pad -load_file pna_output/strap_end.VDD.vpad (VDD is your power net name)
#       create_fp_virtual_pad -load_file pna_output/strap_end.VSS.vpad (VSS is your ground net name
##   then add the following option to analyze_fp_rail
#       -use_pins_as_pads
## To run it on top level with existing power pads, you can use one of the following options
#       -pad_masters $PNS_PAD_MASTERS                   (specify pad cell masters) or
#       -read_pad_master_file $PNS_PAD_MASTER_FILE      (specify a file with pad cell masters) or
#       -read_pad_instance_file $PNS_PAD_INSTANCE_FILE  (specify a file with pad cell instances)
## To run it on top level without existing power pads, you cna use following commands before analyze_fp_rail
#       create_fp_virtual_pad -load_file pna_output/strap_end.VDD.vpad (VDD is your power net name)
#       create_fp_virtual_pad -load_file pna_output/strap_end.VSS.vpad (VSS is your ground net name
## To simulate standard cell rail during PNA, you can use the following option
#       -create_virtual_rails $PNS_VIRTUAL_RAIL_LAYER
## To use more accurate power consumption of each instance calculated in ICC, you can use the following option
#  -analyze_power
if {[file exists [which $CUSTOM_ICC_DP_PNA_SCRIPT]]} {
  source $CUSTOM_ICC_DP_PNA_SCRIPT
} else {
  analyze_fp_rail -power_budget $PNS_POWER_BUDGET -voltage_supply $PNS_VOLTAGE_SUPPLY -output_directory $PNS_OUTPUT_DIR -nets $PNS_POWER_NETS
}
if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {
      read_sdc $ICC_IN_SDC_FILE
      ## If there are "create_voltage_area" commands in the input SDC, pls remove them before SDC is read.
      #  Otherwise, the message "Error: Core Area not defined" will appear.
      #  The "create_voltage_area" commands are to be provided through the $CUSTOM_CREATE_VA_SCRIPT variable.    
}
if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
  if {$ICC_CTS_INTERCLOCK_BALANCING && [file exists [which $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE]]} {
   echo "RM-Info: Sourcing [which $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE]"
   source -echo $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE
  }
  if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {
        set ports_clock_root {} 
        foreach_in_collection a_clock [get_clocks -quiet] { 
          set src_ports [filter_collection [get_attribute $a_clock sources] @object_class==port] 
          set ports_clock_root  [add_to_collection $ports_clock_root $src_ports] 
        }
  
        group_path -name REGOUT -to [all_outputs]
        group_path -name REGIN -from [remove_from_collection [all_inputs] $ports_clock_root]
        group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_outputs]
  }
 remove_propagated_clock -all
 # Timing derate
 ## if you add below your own set_timing_derate commands on lib cells, you'll need to apply the following for every step in the flow
 if {$ICC_APPLY_RM_DERATING} { 
  ##derate values may vary by corner
  set_timing_derate -early $ICC_EARLY_DERATING_FACTOR -cell_delay 
  set_timing_derate -late  $ICC_LATE_DERATING_FACTOR  -cell_delay 
  set_timing_derate -early $ICC_EARLY_DERATING_FACTOR -net_delay 
  set_timing_derate -late  $ICC_LATE_DERATING_FACTOR  -net_delay
 }
## The set_critical_range command sets the value of critical_range attribute.
## It specifies absolute values and uses timing units, such as ns and is used in both WNS and TNS 
## optimization.
## If user does not use the set_critical_range command to set the critical_range attribute to a specified 
## value, the default value will be 0. This is the same for place_opt, clock_opt, and route_opt.
## However, in this case, ICC will dynamically derive internal value for the critical_range attribute. 
## This automatic critical range setting starts from 50% of a path group's WNS value at different stages of 
## TNS optimization.
   if {$ICC_CRITICAL_RANGE != ""} {echo $ICC_CRITICAL_RANGE ; set_critical_range $ICC_CRITICAL_RANGE [current_design]}
   if {$ICC_MAX_TRANSITION != ""} {echo $ICC_MAX_TRANSITION ; set_max_transition $ICC_MAX_TRANSITION [current_design]}
   if {$ICC_MAX_FANOUT     != ""} {echo $ICC_MAX_FANOUT ; set_max_fanout     $ICC_MAX_FANOUT     [current_design]}
   # set_clock_gating_check -setup 0 [current_design]
   # set_clock_gating_check -hold 0 [current_design]
   ## Note on using set_clock_gating_check for different clock gating styles:
   #  1.If your design has discrete clock gates but does not have any clock gating checks defined on them,
   #    you should uncomment the above 2 commands or 
   #    customize them with non-zero values and set them on either the design level or on the instances preferably.
   #  2.If your design has ICG cells only,
   #    you do not need to uncomment the above commands as the tool will honor library defined checks.
  if {$ICC_CTS_UPDATE_LATENCY && [file exists [which $ICC_CTS_LATENCY_OPTIONS_FILE]]} {
   echo "RM-Info: Sourcing [which ICC_CTS_LATENCY_OPTIONS_FILE]"
   source -echo $ICC_CTS_LATENCY_OPTIONS_FILE
  }

## Also support for Well proximity effect (WPE) end cap cells 
if {$ICC_H_CAP_CEL != "" } {
  if {$ICC_V_CAP_CEL == ""} {
    add_end_cap -respect_blockage -lib_cell $ICC_H_CAP_CEL
  } else {
    add_end_cap -respect_blockage -lib_cell $ICC_H_CAP_CEL -vertical_cells $ICC_V_CAP_CEL -fill_corner
  }
}

source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl

if {$ICC_REPORTING_EFFORT != "OFF" } {
########################################################################################
# Additional reporting: zero interconnect timing report and design summaries 
########################################################################################
redirect -tee -file $REPORTS_DIR_DP_ROUTEABILITY_ON_PLANGROUPS/$ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL.sum {report_design_physical -all -verbose}

set_zero_interconnect_delay_mode true
redirect -tee -file $REPORTS_DIR_DP_ROUTEABILITY_ON_PLANGROUPS/$ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL.zic.qor {report_qor}
set_zero_interconnect_delay_mode false
if {$ICC_SANITY_CHECK} {
  check_physical_design -stage pre_place_opt -no_display -output $REPORTS_DIR_DP_ROUTEABILITY_ON_PLANGROUPS/check_physical_design.pre_place_opt
}

########################################################################################
# Checks : Library + technology checks
########################################################################################
set_check_library_options -all
redirect -file $REPORTS_DIR_DP_ROUTEABILITY_ON_PLANGROUPS/check_library.sum {check_library}
}

#########################################################################################
## Check Placement QoR  								#
#########################################################################################
mark_clock_tree -clock_net
if {$ICC_DP_ALLOW_FEEDTHROUGH} {
  set_fp_pin_constraints -allow_feedthroughs on -keep_buses_together on
} else {
  set_fp_pin_constraints -keep_buses_together on
}

set_host_options -max_cores $ICC_NUM_CORES
## For large designs, you can try top level routing only by:
#  set_route_zrt_common_options -plan_group_aware top_level_routing_only
set_route_zrt_common_options -plan_group_aware all_routing
route_zrt_global -exploration true -congestion_map_only true
save_mw_cel -as ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_groute_after_pna

extract_rc
create_qor_snapshot -name ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_groute_after_pna




#########################################################################################
## Optimization  									#
#########################################################################################
source common_optimization_settings_icc.tcl
set compile_instance_name_prefix dp_ipo_hfs

if {[all_macro_cells] != "" } {
  set_attribute [all_macro_cells] is_fixed true
}

optimize_fp_timing -hfs_only 

save_mw_cel -as ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_ipo_hfs
create_qor_snapshot -name ${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_ipo_hfs
redirect -file ${REPORTS_DIR_DP_ROUTEABILITY_ON_PLANGROUPS}/${ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL}_ipo_hfs.rpt {report_timing -nosplit -cap -tran -input -net -delay max -attribute -physical}

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

if {[file exists [which $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT]]} {
  source $CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT
}

save_mw_cel
close_mw_lib
exit

