source -echo -verbose ./script/dc_setup.tcl

puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"

# Design Compiler must be run in topographical mode for SPG flow support.
if {![shell_is_in_topographical_mode]} {
    puts "RM-Error: dc_shell must be run in topographical mode for SPG support."
    exit 1
    }


#-----------------------------------------------------------------------------
# Additional Variables
#-----------------------------------------------------------------------------

# Enable inference of multibit registers from the buses defined in the RTL.
# set_app_var hdlin_infer_multibit default_all

if {$OPTIMIZATION_FLOW == "hplp"} {
    set_app_var hdlin_infer_multibit default_all
    }

# Enable the support of via resistance for RC estimation to improve the timing 
# correlation with IC Compiler.
set_app_var spg_enable_via_resistance_support true

# Enable library dont_use modification before first compile.
if {[file exists [which ${LIBRARY_DONT_USE_PRE_COMPILE_LIST}]]} {
    puts "RM-Info: Sourcing script file [which ${LIBRARY_DONT_USE_PRE_COMPILE_LIST}]\n"
    source -echo -verbose $LIBRARY_DONT_USE_PRE_COMPILE_LIST
    }


#-----------------------------------------------------------------------------
# Setup for Formality Verification
#-----------------------------------------------------------------------------

# Enable single pass flow.
# set_app_var simplified_verification_mode true

# Define the verification setup file for Formality.
set_svf ${RESULT_DIR}/${DCRM_SVF_OUTPUT_FILE}


#-----------------------------------------------------------------------------
# Setup SAIF Name Mapping Database
#-----------------------------------------------------------------------------

# Include an RTL SAIF for better power optimization and analysis.
# saif_map -start


#-----------------------------------------------------------------------------
# Read in the RTL Design
#-----------------------------------------------------------------------------

define_design_lib WORK -path ${WORK_DIR}

# Read the RTL source files.
analyze -format verilog ${RTL_SOURCE_FILES}
elaborate ${DESIGN_NAME}

# OR

# Read an elaborated design from the same release.
# read_ddc ${DCRM_ELABORATED_DESIGN_DDC_OUTPUT_FILE}

write -hierarchy -format ddc -output ${RESULT_DIR}/${DCRM_ELABORATED_DESIGN_DDC_OUTPUT_FILE}


#-----------------------------------------------------------------------------
# Sets the multibit_mode Attribute
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW == "hplp"} {
    # Enable mapping to multibit only if the timing is not degraded.
    set_multibit_options -mode timing_driven
    }


#-----------------------------------------------------------------------------
# Report Pre-Synthesis Congestion Analysis
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW == "hc"} {
    # Analyze the RTL constructs which may lead to congestion.
    analyze_rtl_congestion > ${REPORT_DIR}/${DCRM_ANALYZE_RTL_CONGESTION_REPORT_FILE}
    }


#-----------------------------------------------------------------------------
# Apply Logical Design Constraints
#-----------------------------------------------------------------------------

# Constrain the design by reading an SDC file.
if {[file exists [which ${DCRM_SDC_INPUT_FILE}]]} {
    puts "RM-Info: Reading SDC file [which ${DCRM_SDC_INPUT_FILE}]\n"
    read_sdc ${DCRM_SDC_INPUT_FILE}
    }

# OR

# Constrain the design by source a Tcl file.
if {[file exists [which ${DCRM_CONSTRAINTS_INPUT_FILE}]]} {
    puts "RM-Info: Sourcing script file [which ${DCRM_CONSTRAINTS_INPUT_FILE}]\n"
    source -echo -verbose ${DCRM_CONSTRAINTS_INPUT_FILE}
    }

# Enable analysis and optimization for multiple clocks per register, after
# removing false interactions between mutually exclusive clocks to prevent
# unnecessary analysis that can result in a significant runtime increase with
# this feature enabled.
# set_clock_groups -physically_exclusive | -logically_exclusive | -asynchronous \
#                  -group {CLKA, CLKB} -group {CLKC, CLKD} 
# set_app_var timing_enable_multiple_clocks_per_reg true


#-----------------------------------------------------------------------------
# Apply The Operating Conditions
#-----------------------------------------------------------------------------

# Set operating condition on top level
set_operating_conditions -max WCCOM -min BCCOM


#-----------------------------------------------------------------------------
# Create Default Path Groups
#-----------------------------------------------------------------------------

# Separating these paths can help improve optimization.
# Remove these settings if user path groups have already been defined.
set ports_clock_root [filter_collection [get_attribute [get_clocks] sources] object_class==port]
group_path -name REGOUT      -to   [all_outputs] 
group_path -name REGIN       -from [remove_from_collection [all_inputs] ${ports_clock_root}] 
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] ${ports_clock_root}] -to [all_outputs]


#-----------------------------------------------------------------------------
# Clock Gating Setup
#-----------------------------------------------------------------------------

# If the design has instantiated clock gates, identify and report them.
# identify_clock_gating
# report_clock_gating -multi_stage -nosplit > ${REPORT_DIR}/${DCRM_INSTANTIATE_CLOCK_GATES_REPORT}

# Prevent clock-gating from optimizing user instantiated clock-gating cells.
# set_preserve_clock_gate [get_cell <user_clock_gating_cells>]

# Default clock_gating_style suits most designs. Change only if necessary.
# set_clock_gating_style -positive_edge_logic {integrated} \
#                        -negative_edge_logic {integrated} \
#                        -control_point       before ...

# Enable global clock gating to extract enable signals across hierarchies
# which results in fewer redundant clock gates. 
# set compile_clock_gating_through_hierarchy true 

# Specifiy clock latency for clock gating cells optionally for better timing
# optimization of enable logic.
# set_clock_gate_latency -clock <clock_name> -stage <stage_num> \
#         -fanout_latency {fanout_range1 latency_val1 fanout_range2 latency_val2 ...}

# Insert self-gate on clock-gated registers.
# set_self_gating_options -interaction_with_clock_gating insert

# Enable physically aware clock gating in Design Compiler Graphical to improve
# enable timing in high performance designs.
# set_app_var power_cg_physically_aware_cg true


#-----------------------------------------------------------------------------
# Apply Power Optimization Constraints
#-----------------------------------------------------------------------------

# Read a SAIF file for power optimization.
# If a SAIF file is not provided, the default toggle rate of 0.1 will be used
# for propagating switching activity.
# read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance <DESIGN_INSTANCE> -verbose

if {[shell_is_in_topographical_mode]} {
    # Set the threshold voltage groups in the libraries for multi-Vth design.
    # set_attribute <my_hvt_lib> default_threshold_voltage_group HVT -type string
    # set_attribute <my_lvt_lib> default_threshold_voltage_group LVT -type string
    }

if {[shell_is_in_topographical_mode]} {
    # Enable power prediction using clock tree estimation.
    # set_power_prediction true -ct_references <LIB CELL LIST>
    }


#-----------------------------------------------------------------------------
# Apply Physical Design Constraints
#-----------------------------------------------------------------------------

if {[shell_is_in_topographical_mode]} {

    # Optional: Floorplan information can be read in here if available.
    # This is highly recommended for irregular floorplans.
    #
    # Floorplan constraints can be provided from one of the following sources:
    # * extract_physical_constraints with a DEF file
    # * read_floorplan with a floorplan file (written by write_floorplan)
    # * User generated Tcl physical constraints

    # Specify ignored layers for routing to improve correlation.
    # Use the same ignored layers that will be used during place and route.
    if {${MIN_ROUTING_LAYER} != ""} {
        set_ignored_layers -min_routing_layer ${MIN_ROUTING_LAYER}
        }
    if { ${MAX_ROUTING_LAYER} != ""} {
        set_ignored_layers -max_routing_layer ${MAX_ROUTING_LAYER}
        }

    report_ignored_layers

    # If the macro names change after mapping and writing out the design due
    # to ungrouping or Verilog change_names renaming, it may be necessary to
    # translate the names to correspond to the cell names before compile.

    # During DEF constraint extraction, extract_physical_constraints command
    # automatically matches DEF names back to precompile names in memory using
    # standard matching rules. read_floorplan command will also automatically
    # perform this name matching.

    # Modify set_query_rules if other characters are used for hierarchy
    # separators or bus names. 
    # set_query_rules -hierarchical_separators {/ _ .} \
    #                 -bus_name_notations {[] __ ()}   \
    #                 -class {cell pin port net}       \
    #                 -wildcard                        \
    #                 -regsub_cumulative               \
    #                 -show

    # For DEF file input

    # The DEF file for Design Compiler Topographical can be written from ICC
    # using the following recommended options:
    # icc_shell> write_def -version 5.7 -rows_tracks_gcells -fixed -pins -blockages -specialnets \
    #                      -vias -regions_groups -verbose -output ${DCRM_DCT_DEF_INPUT_FILE}

    if {[file exists [which ${DCRM_DCT_DEF_INPUT_FILE}]]} {

        puts "RM-Info: Reading in DEF file [which ${DCRM_DCT_DEF_INPUT_FILE}]\n"
        extract_physical_constraints ${DCRM_DCT_DEF_INPUT_FILE}
        if {$OPTIMIZATION_FLOW == "hplp"} {
            # Include the physical only cells as a part of the floorplan in
            # Design Compiler to improve correlation.
            extract_physical_constraints -allow_physical_cells ${DCRM_DCT_DEF_INPUT_FILE}  
            }
        }
 
    # OR

    # For floorplan file input

    # The floorplan file for Design Compiler Topographical can be written from
    # ICC using the following recommended options:
    # icc_shell> write_floorplan -placement {io terminal hard_macro soft_macro} -create_terminal \
    #                            -row -create_bound -preroute -track ${DCRM_DCT_FLOORPLAN_INPUT_FILE}

    # Read the secondary floorplan file, previously written by write_floorplan
    # in Design Compiler, to restore physical-only objects back to the design,
    # before reading the main floorplan file.
    if {[file exists [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects]]} {
        puts "RM-Info: Reading in secondary floorplan file [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects]\n"
        read_floorplan ${DCRM_DCT_FLOORPLAN_INPUT_FILE}.objects
        }

    # Read the main floorplan file.
    if {[file exists [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}]]} {
        puts "RM-Info: Reading in floorplan file [which ${DCRM_DCT_FLOORPLAN_INPUT_FILE}]\n"
        read_floorplan ${DCRM_DCT_FLOORPLAN_INPUT_FILE}
        }

    # OR

    # For Tcl file input

    # For Tcl constraints, the name matching feature must be explicitly enabled
    # and will also use the set_query_rules settings. This should be turned off
    # after the constraint read in order to minimize runtime.
    if {[file exists [which ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}]]} {
        set_app_var enable_rule_based_query true
        puts "RM-Info: Sourcing script file [which ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}]\n"
        source -echo -verbose ${DCRM_DCT_PHYSICAL_CONSTRAINTS_INPUT_FILE}
        set_app_var enable_rule_based_query false 
        }

    # Save the applied floorplan.
    write_floorplan -all ${RESULT_DIR}/${DCRM_DCT_FLOORPLAN_OUTPUT_FILE}

    # Verify that all the desired physical constraints have been applied.
    report_physical_constraints > ${REPORT_DIR}/${DCRM_DCT_PHYSICAL_CONSTRAINTS_REPORT}
    }


#-----------------------------------------------------------------------------
# Apply Additional Optimization Constraints
#-----------------------------------------------------------------------------

# Prevent assignment statements in the Verilog netlist.
set_fix_multiple_port_nets -all -buffer_constants


#-----------------------------------------------------------------------------
# Snapshot the Environment
#-----------------------------------------------------------------------------

# Save the compile environment snapshot for the Consistency Checker utility.
# This utility checks for inconsistent settings between Design Compiler and
# IC Compiler which can contribute to correlation mismatches.
# See the following SolvNet article for complete details:
# https://solvnet.synopsys.com/retrieve/026366.html
# write_environment -consistency -output ${REPORT_DIR}/${DCRM_CONSISTENCY_CHECK_ENV_FILE}


#-----------------------------------------------------------------------------
# Check for Design Problems 
#-----------------------------------------------------------------------------

# Check the current design for consistency.
check_design -summary
check_design > ${REPORT_DIR}/${DCRM_CHECK_DESIGN_REPORT}

# Report datapath extraction analysis.
# analyze_datapath_extraction > ${REPORT_DIR}/${DCRM_ANALYZE_DATAPATH_EXTRACTION_REPORT}


#-----------------------------------------------------------------------------
# Report Multibit Register before Compile
#-----------------------------------------------------------------------------

# Verify that the desired bussed registers are grouped as multibit components.
# redirect ${REPORT_DIR}/${DCRM_MULTIBIT_COMPONENTS_REPORT} {report_multibit -hierarchical }


#-----------------------------------------------------------------------------
# Compile Options
#-----------------------------------------------------------------------------

# Recommended Options:
#     -scan
#     -gate_clock (-self_gating)
#     -retime
#     -spg
#
# Use compile_ultra as the starting point.
#
# Use -scan option with the first compile and any subsequent compiles for
# test-ready compile.
#
# Use -gate_clock to insert clock-gating logic during optimization. This
# is now the recommended methodology for clock gating.
#
# Use -self_gating option in addition to -gate_clock for potentially saving 
# additional dynamic power, in topographical mode only. Registers that are not
# clock gated will be considered for XOR self gating. XOR self gating should
# be performed along with clock gating, using -gate_clock and -self_gating
# options. XOR self gates will be inserted only if there is potential power
# saving without degrading the timing.
# 
# An accurate switching activity annotation either by reading in a SAIF file
# or through set_switching_activity command is recommended. 
# Use "set_self_gating_options" command to specify self-gating options.
#
# Use -retime to enable adaptive retiming optimization for further timing
# benefit.
#
# Use the -spg option to enable Design Compiler Graphical physical guidance
# flow. The physical guidance flow improves QoR, area and timing correlation,
# and congestion. It also improves place_opt runtime in IC Compiler.
#
# In addition to -spg option, the support of via resistance for RC estimation
# can be enabled to improve the timing correlation with IC Compiler by using
# the following setting.
# set_app_var spg_enable_via_resistance_support true
#
# The congestion optimization on parts of the design can be enabled or
# disabled by using the set_congestion_optimization command.
#
# The constant propagation is enabled when boundary optimization is disabled.
# The following command can stop constant propagation.
# set_compile_directives -constant_propagation false <object_list>
#
# Layer optimization is on by default in Design Compiler Graphical, to 
# improve the the accuracy of certain net delay during optimization.
# To disable the the automatic layer optimization you can use the 
# -no_auto_layer_optimization option.


#-----------------------------------------------------------------------------
# RM+ Variable and Command Settings before First Compile
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW == "hplp"} {
    if {[shell_is_in_topographical_mode]} {
        # Run additional optimizations to improve the timing of the design at
        # the cost of additional run time.
        set_app_var compile_timing_high_effort          true

        # Enable a mode of coarse placement in which cells are not distributed
        # evenly across the surface but are allowed to clump together for
        # better QoR.
        set_app_var placer_max_cell_density_threshold   0.75        

        # Enable very high effort optimization to fix total negative slack but
        # may affect run time.
        set_app_var psynopt_tns_high_effort             true

        # Enable the physically aware clock gating.
        set_app_var power_cg_physically_aware_cg        true
        
        # Reduce the total negative slack of the design.
        set_app_var placer_tns_driven                   true

        # Enable low power placement.  
        # Low power placement affects the placement of cells, pulls them
        # closer together, on nets with high switching activity to reduce the
        # overall dynamic power of your design.  
        set_app_var power_low_power_placement           true

        # Enable dynamic-power optimization.
        set_dynamic_optimization                        true
        # In MCMM flow, use the following command.
        # set_scenario_options -dynamic_power true
        
        # Enable register replication across the hierarchy by creating new
        # ports on the instances of the subdesigns if it is necessary to
        # improve the timing of the design.
        set_app_var compile_register_replication_across_hierarchy   true 
        }
    }


if {$OPTIMIZATION_FLOW == "hc"} {
    if {[shell_is_in_topographical_mode]} {
        # Enable congestion aware global buffering based on Zroute-based
        # estimation on macro intensive designs with narrow channels, reducing
        # congestion along narrow channels across macros.
        # Enabling this feature may have runtime and QOR impact.
        # set_ahfs_options -global_route true

        # Enable Zroute-based congestion-driven placement instead of virtual
        # route based estimation for highly congested designs.
        # Enabling this feature may have runtime impact.
        # set_app_var placer_congestion_effort medium
        # set_app_var placer_enable_enhanced_router true

        # Enable lower congestion for designs that have congestion due to
        # multiplexing logic in the RTL. This variable is supported only in
        # the initial compile step, not supported in incremental compile.
        set_app_var compile_prefer_mux  true
        }
    }


if {$OPTIMIZATION_FLOW == "rtm_exp"} {
    if {[shell_is_in_topographical_mode]} {
        set_host_options -max_cores 8

        # Override runtime-intensive user settings with settings designed to
        # improve runtime. Since the run time intensive optimizations are
        # turned off it might impact QoR. This can be used as an exploration
        # flow when run time is a concern.
        compile_prefer_runtime
        }
    }


if {[shell_is_in_topographical_mode]} {
    # Use the "-check_only" option to verify that the libraries and design
    # are complete and that optimization will not fail in topographical mode.
    # Use the same options as will be used in compile_ultra.
    # compile_ultra -spg -check_only
    }


#-----------------------------------------------------------------------------
# Compile the Design
#-----------------------------------------------------------------------------

compile_ultra -spg


#-----------------------------------------------------------------------------
# Placement Aware Multibit Banking
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW != "rtm_exp"} {
    if {[shell_is_in_topographical_mode]} {
        # Use placement aware multibit banking to group single-bit register
        # cells that are physically near each other into a multibit registers.
        # This has to be done before DFT insertion in Design Compiler.
        # identify_register_banks -output ${RESULT_DIR}/${DCRM_MULTIBIT_CREATE_REGISTER_BANK_FILE}
        # redirect ${REPORT_DIR}/${DCRM_MULTIBIT_CREATE_REGISTER_BANK_REPORT} {source -echo -verbose ${RESULT_DIR}/${DCRM_MULTIBIT_CREATE_REGISTER_BANK_FILE}}
        }
    }


#-----------------------------------------------------------------------------
# RM+ Variable and Command Settings before Incremental Compile
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW == "hplp"} {
    if {[shell_is_in_topographical_mode]} {
        # Use placement aware multibit banking to group single-bit register
        # cells that are physically near each other into a multibit registers.
        identify_register_banks -output ${RESULT_DIR}/${DCRM_MULTIBIT_CREATE_REGISTER_BANK_FILE}
        source -echo -verbose ${RESULT_DIR}/${DCRM_MULTIBIT_CREATE_REGISTER_BANK_FILE}
        }
    }

if {$OPTIMIZATION_FLOW == "hplp"} {
    # Creating path groups to reduce TNS.
    create_auto_path_groups -mode mapped
    }

if {(${OPTIMIZATION_FLOW} == "hc") || (${OPTIMIZATION_FLOW} == "hplp")} {
    if {[shell_is_in_topographical_mode]} {
        # Enable congestion-driven placement in incremental compile to improve
        # congestion while preserving quality of results.
        set_app_var spg_congestion_placement_in_incremental_compile true
        }
    }

if {$OPTIMIZATION_FLOW != "rtm_exp"} {
    # Enable library dont_use modification before incremental compile.
    if {[file exists [which ${LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST}]]} {
        puts "RM-Info: Sourcing script file [which ${LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST}]\n"
        source -echo -verbose $LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST
        }
    }


#-----------------------------------------------------------------------------
# Incremental Compile
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW != "rtm_exp"} {
    # Incremental compile is required if the netlist and/or constraints are
    # changed after first compile, for example, DFT insertion, placement aware
    # multibit banking etc. Incremental compile is also recommended for final
    # QoR signoff as well.
    compile_ultra -incremental -spg
    }

if {$OPTIMIZATION_FLOW == "hplp" } {
    # Remove the path groups generated by create_path_groups command. 
    # This does not remove user created path groups
    remove_auto_path_groups
    }

if {$OPTIMIZATION_FLOW != "rtm_exp"} {
    # High-effort area optimization to improve area of gate-level netlists
    # without degrading timing or leakage. 
    optimize_netlist -area
    }


#-----------------------------------------------------------------------------
# Write Out Final Design
#-----------------------------------------------------------------------------

#     .ddc: Recommended binary format for subsequent Design Compiler sessions
# Milkyway: Recommended binary format for IC Compiler
#       .v: Verilog netlist for ASCII flow (Formality, PrimeTime, VCS)
#    .spef: Topographical mode parasitics for PrimeTime
#     .sdf: SDF backannotated topographical mode timing for PrimeTime
#     .sdc: SDC constraints for ASCII flow

change_names -rules verilog -hierarchy

# Write out design.
write_icc2_files          -force -output ${RESULT_DIR}/${DCRM_FINAL_DESIGN_ICC2}
write -format verilog -hierarchy -output ${RESULT_DIR}/${DCRM_FINAL_VERILOG_OUTPUT_FILE}
write -format ddc     -hierarchy -output ${RESULT_DIR}/${DCRM_FINAL_DDC_OUTPUT_FILE}

# Write and close SVF file and make it available for immediate use.
set_svf -off

# Write out design data.
if {[shell_is_in_topographical_mode]} {
    # Write a Tcl script that contains detailed floorplanning information. A
    # secondary floorplan file might also be written to capture physical-only
    # objects in the design.
    write_floorplan -all ${RESULT_DIR}/${DCRM_DCT_FINAL_FLOORPLAN_OUTPUT_FILE}

    # Create the standard cell physical guidance to support SPG ASCII hand-off
    # to IC Compiler.
    if {[info exists DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE]} {
        write_def -components -output ${RESULT_DIR}/${DCRM_DCT_SPG_PLACEMENT_OUTPUT_FILE}
        }

    # Write parasitics data from DC Topographical placement for STA. 
    write_parasitics -output ${RESULT_DIR}/${DCRM_DCT_FINAL_SPEF_OUTPUT_FILE}

    # Write SDF backannotation data from DC Topographical placement for STA.
    write_sdf ${RESULT_DIR}/${DCRM_DCT_FINAL_SDF_OUTPUT_FILE}

    # Do not write out net RC info into SDC.
    set_app_var write_sdc_output_lumped_net_capacitance false
    set_app_var write_sdc_output_net_resistance         false
    }

# Write SDC file.
write_sdc -nosplit ${RESULT_DIR}/${DCRM_FINAL_SDC_OUTPUT_FILE}

# If SAIF is used, write out SAIF name mapping file for PrimeTime-PX.
# saif_map -type ptpx -write_map ${RESULT_DIR}/${DESIGN_NAME}.mapped.SAIF.namemap


#-----------------------------------------------------------------------------
# Generate Final Reports
#-----------------------------------------------------------------------------

if {$OPTIMIZATION_FLOW == "rtm_exp"} {
    set_host_options -max_cores 8
    update_timing

    parallel_execute [list \
        "report_qor > ${REPORT_DIR}/${DCRM_FINAL_QOR_REPORT}" \
        "report_timing -transition_time -nets -attributes -nosplit > ${REPORT_DIR}/${DCRM_FINAL_TIMING_REPORT}" \
        "report_area -nosplit > ${REPORT_DIR}/${DCRM_FINAL_AREA_REPORT}" \
        "report_clock_gating -nosplit > ${REPORT_DIR}/${DCRM_FINAL_CLOCK_GATING_REPORT}" \
        ]
    } \
else {
    report_qor > ${REPORT_DIR}/${DCRM_FINAL_QOR_REPORT}
    report_timing -transition_time -nets -attributes -nosplit > ${REPORT_DIR}/${DCRM_FINAL_TIMING_REPORT}

    if {[shell_is_in_topographical_mode]} {
        report_area -physical -nosplit > ${REPORT_DIR}/${DCRM_FINAL_AREA_REPORT}
        } \
    else {
        report_area -nosplit > ${REPORT_DIR}/${DCRM_FINAL_AREA_REPORT}
        }

    report_area      -designware > ${REPORT_DIR}/${DCRM_FINAL_DESIGNWARE_AREA_REPORT}
    report_resources -hierarchy  > ${REPORT_DIR}/${DCRM_FINAL_RESOURCES_REPORT}
    # report_clock_gating -nosplit > ${REPORT_DIR}/${DCRM_FINAL_CLOCK_GATING_REPORT}
    }

# Create a QoR snapshot of timing, physical, constraints, clock, power data,
# and routing on active scenarios and stores it in the location specified by
# the icc_snapshot_storage_location variable. 
if {[shell_is_in_topographical_mode]} {
    set icc_snapshot_storage_location ${REPORT_DIR}/${DCRM_DCT_FINAL_QOR_SNAPSHOT_FOLDER}
    create_qor_snapshot -name ${DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT} > ${REPORT_DIR}/${DCRM_DCT_FINAL_QOR_SNAPSHOT_REPORT}
    }

# Report all the multibit registers and the banking ratio in the design.
# redirect ${REPORT_DIR}/${DCRM_MULTIBIT_BANKING_REPORT} {report_multibit_banking -nosplit }

# Use SAIF file for power analysis.
# read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance < DESIGN_INSTANCE > -verbose

report_power -nosplit > ${REPORT_DIR}/${DCRM_FINAL_POWER_REPORT}
# report_clock_gating -nosplit > ${REPORT_DIR}/${DCRM_FINAL_CLOCK_GATING_REPORT}

# Report the XOR self gating information if the -self_gating is included in
# the compile_ultra command.
# report_self_gating  -nosplit > ${REPORT_DIR}/${DCRM_FINAL_SELF_GATING_REPORT}

# Report the number, area, and  percentage of cells for each threshold voltage
# group in the design.
# report_threshold_voltage_group -nosplit > ${REPORT_DIR}/${DCRM_THRESHOLD_VOLTAGE_GROUP_REPORT}

if {[shell_is_in_topographical_mode]} {
    # Use Zroute for estimating and reporting routing related congestion which
    # improves the congestion correlation with IC Compiler. DC Topographical
    # supports create_route_guide command to be consistent with IC Compiler
    # after topographical mode synthesis.
    report_congestion > ${REPORT_DIR}/${DCRM_DCT_FINAL_CONGESTION_REPORT}

    # Generate and write out a congestion map from batch mode. This requires
    # a GUI session to be temporarily opened and closed.
    if {[info exists env(DISPLAY)]} {
        gui_start

        # Create a layout window.
        set MyLayout [gui_create_window -type LayoutWindow]

        # Build congestion map in case report_congestion was not previously run.
        report_congestion -build_map

        # Display congestion map in layout window.
        gui_show_map -map "Global Route Congestion" -show true

        # Zoom full to display complete floorplan.
        gui_zoom -window [gui_get_current_window -view] -full

        # Save the congestion map only without the legends.
        gui_write_window_image -format png -file ${REPORT_DIR}/${DCRM_DCT_FINAL_CONGESTION_MAP_OUTPUT_FILE}

        # Save the entire congestion map layout window with the legends.
        gui_write_window_image -window ${MyLayout} -format png -file ${REPORT_DIR}/${DCRM_DCT_FINAL_CONGESTION_MAP_WINDOW_OUTPUT_FILE}

        gui_stop
        } \
    else {
        puts "Information: The DISPLAY environment variable is not set. Congestion map generation has been skipped."
        }
    }


#-----------------------------------------------------------------------------
# Write out Milkyway Design for Top-Down Flow
#-----------------------------------------------------------------------------

if {[shell_is_in_topographical_mode]} {
    write_milkyway -overwrite -output ${DCRM_FINAL_MW_CEL_NAME}
    }


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

#exit
