##########################################################################################
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##########################################################################################
##########################################################################################
## init_design_odl.tcl : initial script that reads the design and loads the floorplan
##########################################################################################


source -echo ./rm_setup/icc_setup.tcl 

########################################################################################
# Design Creation 
########################################################################################

if { $ICC_INIT_DESIGN_INPUT == "MW" } {

########################################################################################
# MW CEL as the format between DCT and ICC
########################################################################################

  if {$ICC_IMPLEMENTATION_PHASE == "default"} {

    ## If $MW_DESIGN_LIBRARY already exists and $COPY_FROM_MW_DESIGN_LIBRARY is specified ...
    if {[file exists $MW_DESIGN_LIBRARY]} {
      if {[file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
        file delete -force $MW_DESIGN_LIBRARY
        file copy -force $COPY_FROM_MW_DESIGN_LIBRARY $MW_DESIGN_LIBRARY
      } elseif {$COPY_FROM_MW_DESIGN_LIBRARY != "" && ![file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
        echo "RM-Error: $COPY_FROM_MW_DESIGN_LIBRARY is specified but doesn't exist. Skip copying. Use existing $MW_DESIGN_LIBRARY"
      }

    ## If $MW_DESIGN_LIBRARY does NOT exist and $COPY_FROM_MW_DESIGN_LIBRARY is specified ...
    } else {
      if {[file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
        file copy -force $COPY_FROM_MW_DESIGN_LIBRARY $MW_DESIGN_LIBRARY
      } elseif {$COPY_FROM_MW_DESIGN_LIBRARY != "" && ![file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
        echo "RM-Error: $COPY_FROM_MW_DESIGN_LIBRARY is specified but doesn't exist. Skip copying."
  echo "RM-Error: $MW_DESIGN_LIBRARY doesn't exist. Please provide a valid $MW_DESIGN_LIBRARY. Exiting ..."
        exit
      } else {
        echo "RM-Error: $MW_DESIGN_LIBRARY doesn't exist. Please provide a valid $MW_DESIGN_LIBRARY. Exiting ..." 
        exit
      }
    }

  }

 open_mw_cel $ICC_INPUT_CEL -library $MW_DESIGN_LIBRARY 

 if {$ICC_IMPLEMENTATION_PHASE == "top" && $ICC_BLOCK_ABSTRACTIONS_LIST != ""} {
   set_top_implementation_options -block_references $ICC_BLOCK_ABSTRACTIONS_LIST
   save_mw_cel  
 }

} else {
## The Milkyway libraries by default supports user defined and routing layers on layers 1-187 in 
# the tech file. The library can support from 1-4000 in the tech file if the extended layer mode
# is activated. The extended layer mode is permanent and cannot be reverted back to the 255 
# layer mode once activated. To check if the library is in the extended layer mode query for the
# "is_extended_layer_mode" attribute on the Milkyway library.
#
# get_attribute [current_mw_lib] is_extended_layer_mode
#
# The reference libraries should also be created in the extended layer mode to be consistent with
# the design library. For more information on the extended layer mode in schema 8.1 please refer
# to the Milkyway module of Solvnet article #1823238

  if {$MW_EXTENDED_LAYER_MODE} {
      extend_mw_layers
  }

  if { ![file exists [which $MW_DESIGN_LIBRARY/lib]] } {
     if { [file exists $MW_REFERENCE_CONTROL_FILE]} {
       create_mw_lib \
            -tech $TECH_FILE \
            -bus_naming_style {[%d]} \
            -reference_control_file $MW_REFERENCE_CONTROL_FILE \
            $MW_DESIGN_LIBRARY 
     } else {
       create_mw_lib \
            -tech $TECH_FILE \
            -bus_naming_style {[%d]} \
            -mw_reference_library $MW_REFERENCE_LIB_DIRS \
            $MW_DESIGN_LIBRARY 
     }
  }

}



if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {

########################################################################################
# Ascii as the format between DCT and ICC
########################################################################################

 open_mw_lib $MW_DESIGN_LIBRARY

 ## add -dirty_netlist in case there are mismatches between the VERILOG netlist and the FRAM view of the cells
 read_verilog -top $DESIGN_NAME $ICC_IN_VERILOG_NETLIST_FILE

 uniquify_fp_mw_cel 
 current_design $DESIGN_NAME 

}


if {$DFT} {

  ## Read Scan Chain Information from DEF for hierarchical flow : DFT-aware hierarchical design planning
  if {$ICC_DP_DFT_FLOW && $ICC_IMPLEMENTATION_PHASE == "default"} {
    set DFT_SCAN_DEF_FILE $ICC_IN_FULL_CHIP_SCANDEF_FILE
    set DFT_REPORT_PREFIX full_chip

  ## Read Scan Chain Information from DEF for flat 
  } elseif {!$ICC_DP_DFT_FLOW && $ICC_IMPLEMENTATION_PHASE == "default"} {
    set DFT_SCAN_DEF_FILE $ICC_IN_SCAN_DEF_FILE
    set DFT_REPORT_PREFIX scan_chain_pre_reordering

  ## Read Scan Chain Information from DEF for hierarchical flow : block level implementation
  } elseif {$ICC_IMPLEMENTATION_PHASE != "default"} {
    set DFT_SCAN_DEF_FILE $ICC_IN_SCAN_DEF_FILE
    set DFT_REPORT_PREFIX scan_chain_pre_reordering
  }    

  if {[info exists DFT_SCAN_DEF_FILE]} {
    if {[file exists [which $DFT_SCAN_DEF_FILE]]} {
      if {[get_scan_chain] != 0} {
        remove_scan_def
      }
      read_def $DFT_SCAN_DEF_FILE
    } elseif {$DFT_SCAN_DEF_FILE != ""} {
      echo "RM-Error: SCANDEF file $DFT_SCAN_DEF_FILE is specified but not found. Please investigate it"  
    }
  unset DFT_SCAN_DEF_FILE
  }

  if {[get_scan_chain] != 0} {
    redirect -file $REPORTS_DIR_INIT_DESIGN/$DESIGN_NAME.$DFT_REPORT_PREFIX.check_scan_chain.rpt {check_scan_chain}
    redirect -file $REPORTS_DIR_INIT_DESIGN/$DESIGN_NAME.$DFT_REPORT_PREFIX.report_scan_chain.rpt {report_scan_chain}
  }

}

  if {$TLUPLUS_MIN_FILE == ""} {set TLUPLUS_MIN_FILE $TLUPLUS_MAX_FILE}
  if {$TLUPLUS_MAX_EMULATION_FILE == ""} {
    set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MIN_FILE -tech2itf_map $MAP_FILE
  } else {
    if {$TLUPLUS_MIN_EMULATION_FILE == ""} {set TLUPLUS_MIN_EMULATION_FILE $TLUPLUS_MAX_EMULATION_FILE}
    set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MIN_FILE \
            -max_emulation_tluplus $TLUPLUS_MAX_EMULATION_FILE -min_emulation_tluplus $TLUPLUS_MIN_EMULATION_FILE -tech2itf_map $MAP_FILE
  }
  report_tlu_plus_files

#############################################################################################################################
# Floorplan Creation: DEF OR FLOORPLAN FILE OR PIN/PAD PHYSICAL CONSTRAINT FILE + create_floorplan
#############################################################################################################################
## Below steps apply if floorplan input is not a DEF file
##Connect P/G, to create Power and Ground Ports for Non-MV designs 
##Assuming P/G Ports are included in DEF file, need PG ports created for non-DEF flows 
if {$ICC_FLOORPLAN_INPUT != "DEF" } {
      ## If you have additional scripts to create pads, for example, create_cell, load it here       
      #       source $YOUR_SCRIPT 

      ## Connect PG first before loading floorplan file or create_floorplan
        if {[file exists [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]]} {
   echo "RM-Info: Sourcing [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]"
        source -echo $CUSTOM_CONNECT_PG_NETS_SCRIPT
        } else {
  derive_pg_connection -power_net $MW_POWER_NET -power_pin $MW_POWER_PORT -ground_net $MW_GROUND_NET -ground_pin $MW_GROUND_PORT -create_port top 
        }
}

if {[file exists [which $CUSTOM_INIT_DESIGN_PRE_SCRIPT]]} {
echo "RM-Info: Sourcing [which $CUSTOM_INIT_DESIGN_PRE_SCRIPT]"
source $CUSTOM_INIT_DESIGN_PRE_SCRIPT
}

## You can have DEF, floorplan file, or pin pad physical constraint file as floorplan input
if {$ICC_FLOORPLAN_INPUT == "DEF" && [file exists [which $ICC_IN_DEF_FILE]]} {
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE}
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE}

    ## Need mapping if there are multiple sites in DEF and they do not match the MW tile names. 
    #  Examples: 
    #    set_app_var mw_site_name_mapping {{CORE unit}} OR   
    #    set_app_var mw_site_name_mapping {{CORE unit} {CORE012 unit012} {CORE015 unit015}}
    #  In the example, CORE is the DEF site name and unit is the MW tile name.
    #  This helps fix PSYN-267 issues: XXX has no associated site row defined in the floorplan.

    read_def -verbose -no_incremental $ICC_IN_DEF_FILE


    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..." }
} 

if {$ICC_FLOORPLAN_INPUT == "FP_FILE" } {
  if { [file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE}
  if { [file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE}

  if { [file exists [which $ICC_IN_FLOORPLAN_FILE]]} {
  read_floorplan $ICC_IN_FLOORPLAN_FILE
  }
}

if {$ICC_FLOORPLAN_INPUT == "CREATE"} {
  if { [file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE}
  if { [file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE}

  if {[file exists [which $ICC_IN_PIN_PAD_PHYSICAL_CONSTRAINTS_FILE]]} {
    read_pin_pad_physical_constraints $ICC_IN_PIN_PAD_PHYSICAL_CONSTRAINTS_FILE
  }

  create_floorplan \
        -control_type aspect_ratio \
        -core_aspect_ratio 1 \
        -core_utilization 0.7 \
        -left_io2core 30 \
        -bottom_io2core 30 \
        -right_io2core 30 \
        -top_io2core 30 \
        -start_first_row  
  # Note : the value 30 is just an example, not a recommendation

}

if {$ICC_FLOORPLAN_INPUT == "USER_FILE"} {
   if {[file exists [which $ICC_IN_FLOORPLAN_USER_FILE]]} { source $ICC_IN_FLOORPLAN_USER_FILE}
} 

if {$ICC_FLOORPLAN_INPUT == "SKIP"} {
}

## If you want to add additional floorplan details such as macro location, corner cells, io filler cells, or pad rings,
## you can add them here :
if {[file exists [which $ICC_PHYSICAL_CONSTRAINTS_FILE]] } {
  source $ICC_PHYSICAL_CONSTRAINTS_FILE
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



save_mw_cel -as $ICC_FLOORPLAN_ODL_CEL




exit

