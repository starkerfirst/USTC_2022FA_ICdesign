#-----------------------------------------------------------------------------
# init_design_icc.tcl:
#     Initial scripts that reads the design, applies constraints and generates
#     a zero interconnect timing report.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl


#-----------------------------------------------------------------------------
# Design Creation 
#-----------------------------------------------------------------------------

#-----------------------------------------------------------------------------
# Milkyway CEL as the Format between DCT and ICC
#-----------------------------------------------------------------------------

if {$ICC_INIT_DESIGN_INPUT == "MW"} {

    if {$ICC_IMPLEMENTATION_PHASE == "default"} {

        # If $MW_DESIGN_LIBRARY already exists and $COPY_FROM_MW_DESIGN_LIBRARY
        # is specified ...
        if {[file exists $MW_DESIGN_LIBRARY]} {
            if {[file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
                file delete -force $MW_DESIGN_LIBRARY
                file copy -force $COPY_FROM_MW_DESIGN_LIBRARY $MW_DESIGN_LIBRARY
                } \
            elseif {$COPY_FROM_MW_DESIGN_LIBRARY != "" && ![file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
                echo "RM-Error: $COPY_FROM_MW_DESIGN_LIBRARY is specified but doesn't exist. Skip copying. Use existing $MW_DESIGN_LIBRARY."
                }
            } \
        else {
        # If $MW_DESIGN_LIBRARY does NOT exist and $COPY_FROM_MW_DESIGN_LIBRARY
        # is specified ...
            if {[file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
                file copy -force $COPY_FROM_MW_DESIGN_LIBRARY $MW_DESIGN_LIBRARY
                } \
            elseif {$COPY_FROM_MW_DESIGN_LIBRARY != "" && ![file exists $COPY_FROM_MW_DESIGN_LIBRARY]} {
                echo "RM-Error: $COPY_FROM_MW_DESIGN_LIBRARY is specified but doesn't exist. Skip copying."
                echo "RM-Error: $MW_DESIGN_LIBRARY doesn't exist. Please provide a valid $MW_DESIGN_LIBRARY. Exiting ..."
                exit
                } \
            else {
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
    
    } \
else {

    # The Milkyway libraries by default supports user defined and routing
    # layers on layers 1-187 in the tech file. The library can support from
    # 1-4000 in the tech file if the extended layer mode is activated. The
    # extended layer mode is permanent and cannot be reverted back to the 255
    # layer mode once activated. To check if the library is in the extended
    # layer mode query for the "is_extended_layer_mode" attribute on the
    # Milkyway library.
    #
    # get_attribute [current_mw_lib] is_extended_layer_mode
    #
    # The reference libraries should also be created in the extended layer
    # mode to be consistent with the design library. For more information on
    # the extended layer mode in schema 8.1 please refer to the Milkyway
    # module of Solvnet article #1823238.

    if {$MW_EXTENDED_LAYER_MODE} {
        extend_mw_layers
        }

    if {![file exists [which $MW_DESIGN_LIBRARY/lib]]} {
        if {[file exists $MW_REFERENCE_CONTROL_FILE]} {
            create_mw_lib \
                -tech                   $MW_TECH_FILE \
                -bus_naming_style       {[%d]} \
                -reference_control_file $MW_REFERENCE_CONTROL_FILE \
                $MW_DESIGN_LIBRARY 
            } \
        else {
            create_mw_lib \
                -tech                   $MW_TECH_FILE \
                -bus_naming_style       {[%d]} \
                -mw_reference_library   $MW_REFERENCE_LIB_DIRS \
                $MW_DESIGN_LIBRARY 
            }
        }

    }


#-----------------------------------------------------------------------------
# DDC as the Format between DCT and ICC
#-----------------------------------------------------------------------------

if {$ICC_INIT_DESIGN_INPUT == "DDC" } {
    open_mw_lib $MW_DESIGN_LIBRARY

    # Avoid local link library messages.
    suppress_message "UID-3"

    if {$ICC_IMPLEMENTATION_PHASE == "top" && $ICC_BLOCK_ABSTRACTIONS_LIST != ""} {
        set_top_implementation_options -block_references $ICC_BLOCK_ABSTRACTIONS_LIST
        }
    import_designs $ICC_IN_DDC_FILE -format ddc -top $DESIGN_NAME -cel $DESIGN_NAME

    unsuppress_message "UID-3" 
    }


#-----------------------------------------------------------------------------
# ASCII as the Format between DCT and ICC
#-----------------------------------------------------------------------------

if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {
    open_mw_lib $MW_DESIGN_LIBRARY

    # Add -dirty_netlist in case there are mismatches between the Verilog
    # netlist and the FRAM view of the cells.
    read_verilog -top $DESIGN_NAME $ICC_IN_VERILOG_NETLIST_FILE

    uniquify_fp_mw_cel 
    current_design $DESIGN_NAME 
    }

if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {
      read_sdc $ICC_IN_SDC_FILE
      # If there are "create_voltage_area" commands in the input SDC, please
      # remove them before SDC is read. Otherwise, the message "Error: Core
      # Area not defined" will appear. The "create_voltage_area" commands are
      # to be provided through the $CUSTOM_CREATE_VA_SCRIPT variable.    
    }

if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


if {$DFT} {

    # Read scan chain information from DEF for hierarchical flow: DFT-aware
    # hierarchical design planning.
    if {$ICC_DP_DFT_FLOW && $ICC_IMPLEMENTATION_PHASE == "default"} {
        set DFT_SCAN_DEF_FILE $ICC_IN_FULL_CHIP_SCANDEF_FILE
        set DFT_REPORT_PREFIX full_chip
        } \
    elseif {!$ICC_DP_DFT_FLOW && $ICC_IMPLEMENTATION_PHASE == "default"} {
    # Read scan chain information from DEF for flat.
        set DFT_SCAN_DEF_FILE $ICC_IN_SCAN_DEF_FILE
        set DFT_REPORT_PREFIX scan_chain_pre_reordering
        } \
    elseif {$ICC_IMPLEMENTATION_PHASE != "default"} {
    # Read scan chain information from DEF for hierarchical flow: block level
    # implementation.
        set DFT_SCAN_DEF_FILE $ICC_IN_SCAN_DEF_FILE
        set DFT_REPORT_PREFIX scan_chain_pre_reordering
        }    

    if {[info exists DFT_SCAN_DEF_FILE]} {
        if {[file exists [which $DFT_SCAN_DEF_FILE]]} {
            if {[get_scan_chain] != 0} {
                remove_scan_def
                }
            read_def $DFT_SCAN_DEF_FILE
            } \
        elseif {$DFT_SCAN_DEF_FILE != ""} {
            echo "RM-Error: SCANDEF file $DFT_SCAN_DEF_FILE is specified but not found. Please investigate it."
            }
        unset DFT_SCAN_DEF_FILE
        }

    if {[get_scan_chain] != 0} {
        redirect -file $REPORT_DIR_INIT_DESIGN/$DESIGN_NAME.$DFT_REPORT_PREFIX.check_scan_chain.rpt {check_scan_chain}
        redirect -file $REPORT_DIR_INIT_DESIGN/$DESIGN_NAME.$DFT_REPORT_PREFIX.report_scan_chain.rpt {report_scan_chain}
        }

    }


if {$ICC_CTS_INTERCLOCK_BALANCING && [file exists [which $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE]]} {
    echo "RM-Info: Sourcing [which $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE]"
    source -echo $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE
    }

if {$ICC_INIT_DESIGN_INPUT == "VERILOG" } {
    set ports_clock_root {}
    foreach_in_collection a_clock [get_clocks -quiet] {
        set src_ports        [filter_collection [get_attribute $a_clock sources] @object_class==port] 
        set ports_clock_root [add_to_collection $ports_clock_root $src_ports] 
        }

    group_path -name REGOUT        -to [all_outputs]
    group_path -name REGIN       -from [remove_from_collection [all_inputs] $ports_clock_root]
    group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] $ports_clock_root] -to [all_outputs]
    }

remove_propagated_clock -all

# Timing derate
if {$ICC_APPLY_RM_DERATING} { 
    # Derate values may vary by corner.
    set_timing_derate -early $ICC_EARLY_DERATING_FACTOR -cell_delay 
    set_timing_derate -late  $ICC_LATE_DERATING_FACTOR  -cell_delay 
    set_timing_derate -early $ICC_EARLY_DERATING_FACTOR -net_delay 
    set_timing_derate -late  $ICC_LATE_DERATING_FACTOR  -net_delay
    }

# The set_critical_range command sets the value of critical_range attribute.
# It specifies absolute values and uses timing units, such as ns and is used
# in both WNS and TNS optimization.
# If user does not use the set_critical_range command to set the critical_range
# attribute to a specified value, the default value will be 0. This is the same
# for place_opt, clock_opt, and route_opt.
# However, in this case, ICC will dynamically derive internal value for the
# critical_range attribute. This automatic critical range setting starts from
# 50% of a path group's WNS value at different stages of TNS optimization.
if {$ICC_CRITICAL_RANGE != ""} {echo $ICC_CRITICAL_RANGE; set_critical_range $ICC_CRITICAL_RANGE [current_design]}
if {$ICC_MAX_TRANSITION != ""} {echo $ICC_MAX_TRANSITION; set_max_transition $ICC_MAX_TRANSITION [current_design]}
if {$ICC_MAX_FANOUT     != ""} {echo $ICC_MAX_FANOUT    ; set_max_fanout     $ICC_MAX_FANOUT     [current_design]}

# Note on using set_clock_gating_check for different clock gating styles:
# 1. If the design has discrete clock gates but does not have any clock gating
#    checks defined on them, uncomment the two commands or customize them with
#    non-zero values and set them on either the design level or on the instances
#    preferably.
# 2. If the design has ICG cells only, do not need to uncomment the commands as
#    the tool will honor library defined checks.
# set_clock_gating_check -setup 0 [current_design]
# set_clock_gating_check -hold  0 [current_design]

if {$TLUPLUS_MIN_FILE == ""} {set TLUPLUS_MIN_FILE $TLUPLUS_MAX_FILE}
if {$TLUPLUS_MAX_EMULATION_FILE == ""} {
    set_tlu_plus_files \
        -max_tluplus            $TLUPLUS_MAX_FILE \
        -min_tluplus            $TLUPLUS_MIN_FILE \
        -tech2itf_map           $TLUPLUS_MAP_FILE
    } \
else {
    if {$TLUPLUS_MIN_EMULATION_FILE == ""} {set TLUPLUS_MIN_EMULATION_FILE $TLUPLUS_MAX_EMULATION_FILE}
    set_tlu_plus_files \
        -max_tluplus            $TLUPLUS_MAX_FILE \
        -min_tluplus            $TLUPLUS_MIN_FILE \
        -max_emulation_tluplus  $TLUPLUS_MAX_EMULATION_FILE \
        -min_emulation_tluplus  $TLUPLUS_MIN_EMULATION_FILE \
        -tech2itf_map           $TLUPLUS_MAP_FILE
    }

report_tlu_plus_files

if {$ICC_CTS_UPDATE_LATENCY && [file exists [which $ICC_CTS_LATENCY_OPTIONS_FILE]]} {
    echo "RM-Info: Sourcing [which ICC_CTS_LATENCY_OPTIONS_FILE]"
    source -echo $ICC_CTS_LATENCY_OPTIONS_FILE
    }


#-----------------------------------------------------------------------------
# Floorplan Creation
#-----------------------------------------------------------------------------

# Below steps apply if floorplan input is not a DEF file.
# Connect P/G to create power and ground ports for non-MV designs. 
# Assuming P/G ports are included in DEF file, need P/G ports created for
# non-DEF flows.
if {$ICC_FLOORPLAN_INPUT != "DEF"} {
    # If there are additional scripts to create pads, for example, create_cell,
    # load it here.
    # source $YOUR_SCRIPT 

    # Connect P/G first before loading floorplan file or create_floorplan.
    if {[file exists [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]]} {
        echo "RM-Info: Sourcing [which $CUSTOM_CONNECT_PG_NETS_SCRIPT]"
        source -echo $CUSTOM_CONNECT_PG_NETS_SCRIPT
        } \
    else {
        derive_pg_connection \
            -power_net      $MW_POWER_NET \
            -power_pin      $MW_POWER_PORT \
            -ground_net     $MW_GROUND_NET \
            -ground_pin     $MW_GROUND_PORT \
            -create_port    top 
        }
    }


if {[file exists [which $CUSTOM_INIT_DESIGN_PRE_SCRIPT]]} {
    echo "RM-Info: Sourcing [which $CUSTOM_INIT_DESIGN_PRE_SCRIPT]"
    source $CUSTOM_INIT_DESIGN_PRE_SCRIPT
    }


# If DEF, floorplan file, or pin pad physical constraint file as floorplan input.
if {$ICC_FLOORPLAN_INPUT == "DEF" && [file exists [which $ICC_IN_DEF_FILE]]} {
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE  ]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE  }
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE}

    # Need mapping if there are multiple sites in DEF and they do not match
    # the MW tile names. 
    # Examples: 
    #     set_app_var mw_site_name_mapping {{CORE unit}} OR   
    #     set_app_var mw_site_name_mapping {{CORE unit} {CORE012 unit012} {CORE015 unit015}}
    # In the example, CORE is the DEF site name and unit is the MW tile name.
    # This helps fix PSYN-267 issues: XXX has no associated site row defined
    # in the floorplan.

    read_def -verbose -no_incremental $ICC_IN_DEF_FILE

    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..." }
    }


if {$ICC_FLOORPLAN_INPUT == "FP_FILE" } {
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE  ]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE  }
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE}

    if {[file exists [which $ICC_IN_FLOORPLAN_FILE]]} {
        read_floorplan [which $ICC_IN_FLOORPLAN_FILE]
        }
    }


if {$ICC_FLOORPLAN_INPUT == "CREATE"} {
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE  ]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE  }
    if {[file exists [which $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE]]} {source $ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE}

    if {[file exists [which $ICC_IN_PIN_PAD_PHYSICAL_CONSTRAINTS_FILE]]} {
        # read_pin_pad_physical_constraints [which $ICC_IN_PIN_PAD_PHYSICAL_CONSTRAINTS_FILE]
        source [which $ICC_IN_PIN_PAD_PHYSICAL_CONSTRAINTS_FILE]
        }

    #create_floorplan \
        -control_type       width_and_height \
        -core_width         3280 \
        -core_height        1410 \
        -left_io2core       25 \
        -bottom_io2core     25 \
        -right_io2core      25 \
        -top_io2core        25 \
        -start_first_row

     create_floorplan \
         -control_type       aspect_ratio \
         -core_aspect_ratio  1.0 \
         -core_utilization   0.7 \
         -left_io2core       20 \
         -bottom_io2core     20 \
         -right_io2core      20 \
         -top_io2core        20 \
         -start_first_row
    }


if {$ICC_FLOORPLAN_INPUT == "USER_FILE"} {
    if {[file exists [which $ICC_IN_FLOORPLAN_USER_FILE]]} {source $ICC_IN_FLOORPLAN_USER_FILE}
    } 


if {$ICC_FLOORPLAN_INPUT == "SKIP"} {
    }


# Add additional floorplan details such as macro location, corner cells,
# IO filler cells, or pad rings.
if {[file exists [which $ICC_PHYSICAL_CONSTRAINTS_FILE]]} {
    source $ICC_PHYSICAL_CONSTRAINTS_FILE
    }

# Add well proximity effect (WPE) end cap cells.
if {$ICC_H_CAP_CEL != "" } {
    if {$ICC_V_CAP_CEL == ""} {
        add_end_cap -respect_blockage -lib_cell $ICC_H_CAP_CEL
        } \
    else {
        add_end_cap -respect_blockage -lib_cell $ICC_H_CAP_CEL -vertical_cells $ICC_V_CAP_CEL -fill_corner
        }
    }

# Add tap cells array.
add_tap_cell_array \
    -master_cell_name           $ICC_TAP_CEL \
    -distance                   42 \
    -offset                     -21.28 \
    -remove_redundant_tap_cells
    #-left_boundary_extra_tap    must_insert \
    #-right_boundary_extra_tap   must_insert \


insert_pad_filler -cell $PAD_FILLER_CELL
#preroute_instances  -ignore_macros -ignore_cover_cells -primary_routing_layer pin
#preroute_instances  -ignore_macros -ignore_cover_cells -primary_routing_layer specified \
#    -specified_horizontal_layer METAL3 -specified_vertical_layer METAL4

source -echo common_optimization_settings_icc.tcl
 source -echo common_placement_settings_icc.tcl


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


#-----------------------------------------------------------------------------
# Saving the Cell and Snapshot Creation
#-----------------------------------------------------------------------------

save_mw_cel -as $ICC_FLOORPLAN_CEL

if {$ICC_REPORTING_EFFORT != "OFF"} {
    create_qor_snapshot -name $ICC_FLOORPLAN_CEL
    redirect -file $REPORT_DIR_INIT_DESIGN/$ICC_FLOORPLAN_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
    }


if {$ICC_REPORTING_EFFORT != "OFF" } {

    # Additional reporting: zero interconnect timing report and design summaries.
    redirect -tee -file $REPORT_DIR_INIT_DESIGN/$ICC_FLOORPLAN_CEL.sum {report_design_physical -all -verbose}

    set_zero_interconnect_delay_mode true
    redirect -tee -file $REPORT_DIR_INIT_DESIGN/$ICC_FLOORPLAN_CEL.zic.qor {report_qor}
    set_zero_interconnect_delay_mode false

    if {$ICC_SANITY_CHECK} {
        check_physical_design -stage pre_place_opt -no_display -output $REPORT_DIR_INIT_DESIGN/check_physical_design.pre_place_opt
        }

    # Library and technology checks.
    set_check_library_options -all
    redirect -file $REPORT_DIR_INIT_DESIGN/check_library.sum {check_library}

    }


close_mw_lib


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

exit

