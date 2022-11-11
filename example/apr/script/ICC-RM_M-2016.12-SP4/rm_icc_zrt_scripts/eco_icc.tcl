##########################################################################################
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##########################################################################################

source -echo ./rm_setup/icc_setup.tcl 

#######################################
#            ECO Script
#######################################

##Open Design
open_mw_lib $MW_DESIGN_LIBRARY

redirect /dev/null "remove_mw_cel -version_kept 0 $ICC_ECO_CEL"
copy_mw_cel -from $ICC_ECO_STARTING_CEL -to $ICC_ECO_CEL
open_mw_cel $ICC_ECO_CEL

source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl
source -echo common_route_si_settings_zrt_icc.tcl

#######################################
# Unconstrained ECO Flow
#######################################
if {$ICC_ECO_FLOW == "UNCONSTRAINED"} {

  echo "RM-Info: starting the UNCONSTRAINED ECO flow, executing the ECO steps"
  
  if {[file exists [which $ICC_ECO_FILE]]} {

    ## Read ECO file
    if {$ICC_ECO_FLOW_TYPE == "verilog"} {
      # This variable helps when there are dangling SYNOPSYS_UNCONNECTED_* nets on open bus pins and dangling tie-low nets on hierarchical ports. 
      # With this variable turned true it will suppress these unnecessary kinds of differences in the eco_netlist command. 
      set_app_var eco_netlist_preprocess_for_verilog true
      ## For functional ECO :
      eco_netlist -compare_pg -by_verilog_file $ICC_ECO_FILE
    }

    if {$ICC_ECO_FLOW_TYPE == "pt_drc_setup_fixing_tcl" || $ICC_ECO_FLOW_TYPE == "pt_hold_fixing_tcl" || $ICC_ECO_FLOW_TYPE == "pt_minimum_physical_impact"} {
      ## For DRC/Setup fixing ECO, hold fixing ECO, or Minimum Physical Impact ECO :
      #  ECO file is typically from PT generated change file by fix_eco_drc, fix_eco_leakage, OR fix_eco_timing -setup/-hold commands
      eco_netlist -by_tcl_file $ICC_ECO_FILE
    }

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

    ## Place ECO cells
    if {$ICC_ECO_FLOW_TYPE == "pt_drc_setup_fixing_tcl"} {
      ## For DRC/Setup fixing ECO :
      #  ECO file is typically from PT generated change file by fix_eco_drc OR fix_eco_timing -setup commands
      set drcbuffer [get_cells -hier -filter "eco_change_status==insert_buffer"]
      place_eco_cells -cells $drcbuffer -no_legalize
    }

        set place_eco_cells_cmd "place_eco_cells -eco_changed_cells"

    if {$ICC_ECO_FLOW_TYPE != "verilog"} {lappend place_eco_cells_cmd -legalize_only}
    if {$ADD_FILLER_CELL} {lappend place_eco_cells_cmd -remove_filler_references "$FILLER_CELL_METAL $FILLER_CELL"}
    if {$ICC_ECO_FLOW_TYPE == "pt_minimum_physical_impact"} {lappend place_eco_cells_cmd -displacement_threshold 10}

    echo $place_eco_cells_cmd
    eval $place_eco_cells_cmd

    if {$ICC_ECO_FLOW_TYPE == "pt_minimum_physical_impact"} {
      ## ICC-PT Minimum Physical Impact Flow 
      # Legalize rejected cells by moving non-ECO cells
      legalize_placement -incremental
      set_attribute $epl_legalizer_rejected_cells eco_change_status eco_legalized
    }

  ## Insert fillers
    if {$FILLER_CELL_METAL != ""} {insert_stdcell_filler -cell_with_metal $FILLER_CELL_METAL -connect_to_power $MW_POWER_NET -connect_to_ground $MW_GROUND_NET}
    if {$FILLER_CELL != ""} {insert_stdcell_filler -cell_without_metal $FILLER_CELL -connect_to_power $MW_POWER_NET -connect_to_ground $MW_GROUND_NET}

    ## ECO route    
    #  Please refer to SolvNet #029833 for more information
    set_route_zrt_global_options -timing_driven false -crosstalk_driven false
    set_route_zrt_track_options -timing_driven false -crosstalk_driven false
    set_route_zrt_detail_options -timing_driven false
    # set_route_zrt_common_options -reshield_modified_nets reshield
    route_zrt_eco -reroute modified_nets_first_then_others

    if {$ICC_ECO_METAL_FILL_MODE == "early_stage"} {

      ## DRC based metal fill removal
      if {$ADD_METAL_FILL == "ICV" } {
        set_extraction_options -real_metalfill_extraction FLOATING
      
        if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
        save_mw_cel -as ${ICC_ECO_CEL}_metal_fill

        if {[file exists [which $SIGNOFF_FILL_RUNSET]] } {
          set_physical_signoff_options -exec_cmd icv -fill_runset $SIGNOFF_FILL_RUNSET
        }
      
        if {$SIGNOFF_MAPFILE != ""} {set_physical_signoff_options -mapfile $SIGNOFF_MAPFILE}

        report_physical_signoff_options  
        
        if {$ICC_ECO_AUTO_ECO_METAL_FILL} {
          ## Use the automatic ECO metal fill to perform fill removal and refill in the ECO change area
          signoff_metal_fill -auto_eco
        } else {
          signoff_metal_fill -remove_overlap_by_rules min_spacing
        }
      }

    } elseif {$ICC_ECO_METAL_FILL_MODE == "signoff_stage"} {

      if {$ADD_METAL_FILL == "ICV" } {
        set_extraction_options -real_metalfill_extraction FLOATING
      
        if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
        save_mw_cel -as ${ICC_ECO_CEL}_metal_fill

        if {[file exists [which $SIGNOFF_FILL_RUNSET]] } {
          set_physical_signoff_options -exec_cmd icv -fill_runset $SIGNOFF_FILL_RUNSET
        }
      
        if {$SIGNOFF_MAPFILE != ""} {set_physical_signoff_options -mapfile $SIGNOFF_MAPFILE}

        report_physical_signoff_options  

        if {!$SIGNOFF_METAL_FILL_TIMING_DRIVEN} {
           if {$ICC_ECO_AUTO_ECO_METAL_FILL} {
              ## Use the automatic ECO metal fill to perform fill removal and refill in the ECO change area
              signoff_metal_fill -auto_eco
           } else {
              ## Purge metal fill
              signoff_metal_fill -purge
              ## Insert metal fill
              signoff_metal_fill
           }
        } else {
           if {!$ICC_ECO_AUTO_ECO_METAL_FILL} {
              ## Purge metal fill
              signoff_metal_fill -purge
           } 
              set_extraction_options -real_metalfill_extraction NONE
  
              ## To help meet the your required density in timing driven metal fill you can also 
              # apply the following option to signoff_metal_fill:
              #
              #   -fix_density_errors true
              #
              # You need to add minimum density rules to the tech file before adding this option. 
              # Check with your foundry for the density rules. 

              ## Insert metal fill
              if {$ICC_ECO_AUTO_ECO_METAL_FILL} {
                 ## Use the automatic ECO metal fill to perform fill removal and refill in the ECO change area while also preserving setup timing
                 signoff_metal_fill -auto_eco -timing_preserve_setup_slack_threshold $TIMING_PRESERVE_SLACK_SETUP
              } else {
                 signoff_metal_fill -timing_preserve_setup_slack_threshold $TIMING_PRESERVE_SLACK_SETUP
              }

              set_extraction_options -real_metalfill_extraction FLOATING

              if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }
        }

        ## Auto DRC Repair (ADR)
        #  When routing DRC is within a reasonable range, you can perform ADR to resolve remaining DRC
        #  Please refer to SolvNet #031882 for more information and how to generate config file for signoff_autofix_drc command

        #  signoff_drc -user_defined_options {-holding_cell} -run_dir {./signoff_drc_run} -ignore_child_cell_errors -read_cel_view 
        #  signoff_autofix_drc -incremental_level high -config_file $config_file -init_drc_error_db signoff_drc_run 
        #  save_mw_cel 
        #  signoff_drc -user_defined_options {-holding_cell} -run_dir {./signoff_drc_run_after} -ignore_child_cell_errors -read_cel_view
      }
    }
  } else {
    echo "RM-Error : ECO can't be performed as $ICC_ECO_FILE is not found ..."
  }
}

#######################################
# Freeze Silicon ECO Flow
#######################################
if {$ICC_ECO_FLOW == "FREEZE_SILICON"} {
  
  echo "RM-Info: starting the Freeze Silicon ECO flow, executing the ECO steps"
  
  if {[file exists [which $ICC_ECO_FILE]]} {
    # This variable helps when there are dangling SYNOPSYS_UNCONNECTED_* nets on open bus pins and dangling tie-low nets on hierarchical ports. 
    # With this variable turned true it will suppress these unnecessary kinds of differences in the eco_netlist command. 
    set_app_var eco_netlist_preprocess_for_verilog true
    eco_netlist -compare_pg -freeze_silicon -by_verilog_file $ICC_ECO_FILE

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

    place_freeze_silicon

    set_route_zrt_global_options -timing_driven false -crosstalk_driven false
    set_route_zrt_track_options -timing_driven false -crosstalk_driven false
    set_route_zrt_detail_options -timing_driven false
    route_zrt_eco

  } else {
    echo "RM-Error : ECO can't be performed as $ICC_ECO_FILE is not found ..."
  }
}

## Automatic Incremental ECO flow
# If you set the ICC_ECO_SIGNOFF_DRC_MODE variable to AUTO_ECO it will enable the automatic incremental ECO flow for using signoff_drc. This will enable signoff_drc to look at the previous cell that had signoff_drc called on the whole design and do a comparison with the current design that has had ECO performed. Since signoff_drc will identify what areas had ECO changes the checking will only happen in those areas. This should improve runtime since checking does not need to be performed on the whole chip again.
# This feature requires that the signoff_drc -auto_eco command is run on the most recently checked design and the current design. By default it will check for another design of the same name as the current one but using -pre_mw_eco_cel you can point to another design if it was saved to a different name. For multiple iterations of ECO please point the -pre_mw_eco_cel option to the design name of the previous iteration's ECO changes. 

if {$ICC_ECO_SIGNOFF_DRC_MODE == "AUTO_ECO"} {
   if {[file exists [which $SIGNOFF_DRC_RUNSET]] } {

    set_physical_signoff_options -exec_cmd icv -drc_runset $SIGNOFF_DRC_RUNSET

    if {$SIGNOFF_MAPFILE != ""} {
      set_physical_signoff_options -mapfile [which $SIGNOFF_MAPFILE]
    }
  
    report_physical_signoff_options
    signoff_drc -auto_eco -pre_eco_mw_cel $ICC_ECO_STARTING_CEL
  }
}

save_mw_cel -as $ICC_ECO_CEL

if {$ICC_REPORTING_EFFORT != "OFF" } {
    redirect -tee -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.clock_tree {report_clock_tree -nosplit -summary}     ;# global skew report
    redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.clock_timing {report_clock_timing -nosplit -type skew} ;# local skew report
}
if {$ICC_REPORTING_EFFORT == "MED" } {
 redirect -tee -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.qor {report_qor}
 redirect -tee -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.qor -append {report_qor -summary}
 redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.con {report_constraints}
}
if {$ICC_REPORTING_EFFORT != "OFF" } {
 redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.max.tim {report_timing -nosplit -capacitance -transition_time -input_pins -nets -delay max} 
 redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.min.tim {report_timing -nosplit -capacitance -transition_time -input_pins -nets -delay min} 
}


if {$ICC_REPORTING_EFFORT != "OFF" } {
  create_qor_snapshot -clock_tree -name $ICC_ECO_CEL
  redirect -file $REPORTS_DIR_ECO/$ICC_ECO_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
}



exit

