puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the common variables.
source -echo ./script/common_setup.tcl 


#-----------------------------------------------------------------------------
# Flow Variables
#-----------------------------------------------------------------------------

# VERILOG | DDC | MW
# Type of starting point.
# VERILOG - specify a valid $ICC_IN_VERILOG_NETLIST_FILE
# DDC     - specify a valid $ICC_IN_DDC_FILE 
# MW      - specify a valid $ICC_INPUT_CEL
set ICC_INIT_DESIGN_INPUT           "DDC"

# TRUE | FALSE
# TRUE - Enable power optimization (-power option) for the core commands such
#        as place_opt, clock_opt, route_opt, and focal_opt.
#        If $ICC_CUSTOM_MULTI_VTH_CONSTRAINT_SCRIPT below is also specified, 
#        leakage power optimization is focused on lvt cell reduction;
#        otherwise focused on leakage power reduction.
set POWER_OPTIMIZATION              FALSE

# TRUE | FALSE
# TRUE - Enable low power placement for place_opt.
#        Require $POWER_OPTIMIZATION to be TRUE to be effective.
set ICC_PLACE_LOW_POWER_PLACEMENT   FALSE

# Script for customized set_multi_vth_constraints constraints.
# Effective only when $POWER_OPTIMIZATION is set to TRUE.
# Specify to make leakage power optimization focused on LVT cell reduction.
# Refer to rm_icc_scripts/multi_vth_constraint.example as an example.
set ICC_CUSTOM_MULTI_VTH_CONSTRAINT_SCRIPT  ""

# TRUE | FALSE
# TRUE - Enable scan reordering flow and add -optimize_dft option to place_opt
#        and clock_opt commands. Require a valid $ICC_IN_SCAN_DEF_FILE.
set DFT                             FALSE

# TRUE | FALSE
# TRUE - TIE-CELLS will be used during optimizations instead of TIE-nets.
set ICC_TIE_CELL_FLOW               FALSE

# TRUE | FALSE
# TRUE - Enable redundant via insertion.
#        More options are in "Routing and Chipfinishing Variables" section.
set ICC_DBL_VIA                     TRUE

# TRUE | FALSE
# TRUE - Enable antenna fixing.
#        More options are in "Routing and Chipfinishing Variables" section.
set ICC_FIX_ANTENNA                 TRUE

# TRUE | FALSE
# TRUE - Enable standard cells filler insertion.
#        More options are in "Routing and Chipfinishing Variables" section.
set ADD_FILLER_CELL                 TRUE

# TRUE | FALSE
# TRUE - Create block abstraction and FRAM view (at block level).
set ICC_CREATE_MODEL                FALSE

# TRUE | FALSE
# TRUE - Enable detail route wire spreading.
set ICC_REDUCE_CRITICAL_AREA        TRUE

# NONE | ICC | ICV
# NONE - Real metal fill.
# ICC  - Use insert_metal_filler for technology nodes 65nm and above.
# ICV  - Use signoff_metal_fill for technology nodes 45nm and below.
set ADD_METAL_FILL                  "NONE"

# OFF | LOW | MED
# OFF - No reporting is done.
# LOW - report_qor/report_constraints/report_power are skipped, additionally,
#       report_timing is skipped in clock_opt_cts.
set ICC_REPORTING_EFFORT            "MED"

# TRUE | FALSE
# TRUE - Perform check_physical_design.
set ICC_SANITY_CHECK                TRUE

# TRUE | FALSE
# TRUE - Perform checkpoint strategy for optimization commands.
#        Ensure there is enough disk space before enabling this feature.
#        Refer to the set_checkpoint_strategy man page for details.
set ICC_ENABLE_CHECKPOINT           FALSE

# TRUE | FALSE
# TRUE - Enable the postroute design closure flow after initial routing.
#        This will run two additional route_opt -incremental commands in
#        route_opt_icc.tcl.
set IMPROVED_DESIGN_CLOSURE_FLOW    FALSE


#-----------------------------------------------------------------------------
# General Variables
#-----------------------------------------------------------------------------

# Directory definitions.
set REPORT_DIR                      "report"
set RESULT_DIR                      "result"
set SOURCE_DIR                      $RESULT_DIR


# Starting CEL for flow with a Milkyway CEL input, which can be the final CEL
# from Design Compiler Topographical.
set ICC_INPUT_CEL                   "${DESIGN_NAME}_DCT"


# List of metals in the design to be used for partial/complete pnet options.
set PNET_METAL_LIST                 "METAL3 METAL4"
set PNET_METAL_LIST_COMPLETE        "METAL3 METAL4"

# Script with library modifications for dont_use.
# Default to $LIBRARY_DONT_USE_FILE in common_setup.tcl.
set ICC_IN_DONT_USE_FILE            "$LIBRARY_DONT_USE_FILE"

# Prefer cells for fixing hold violations.
# Syntax : library/cell_name
# Example: slow/DLY1X1 slow/DLY1X4
set ICC_FIX_HOLD_PREFER_CELLS       ""

# max_area value used during area optimization.
set ICC_MAX_AREA                    ""

# FALSE | TRUE
# FALSE - Create a Milkyway design library with the default layer mode that
#         supports user defined and routing layers on layers 1-187 in the
#         technology file.
# TRUE  - Create a library in the extended layer mode that supports from
#         layers 1-4000 in the technology file. 
set MW_EXTENDED_LAYER_MODE          FALSE

# Area critical range used during area optimization in
# place_opt, post-CTS optimization, and route_opt, respectively.
set AREA_CRITICAL_RANGE_PRE_CTS     ""
set AREA_CRITICAL_RANGE_POST_CTS    ""
set AREA_CRITICAL_RANGE_POST_RT     ""

# Power critical range used during area optimization in
# place_opt, post-CTS optimization, and route_opt, respectively.
set POWER_CRITICAL_RANGE_PRE_CTS    ""
set POWER_CRITICAL_RANGE_POST_CTS   ""
set POWER_CRITICAL_RANGE_POST_RT    ""

# Number of CPUs for distributed processing.
# Specify a number greater than 1 to enable it for classic router based
# route_opt and insert_redundant_via commands.
set ICC_NUM_CPUS                    1

# Number of cores on the local host for multicore support.
# Specify a number greater than 1 to enable it for the core commands.
set ICC_NUM_CORES                   1

# low | medium | high
# Effort level for place_opt command.
set PLACE_OPT_EFFORT                "medium"

# TRUE | FALSE
# TRUE - Enable timing, power and area tradeoff optimization for place_opt command.
#        It works for medium or high effort place_opt with -power option.
set PLACE_OPT_TRADEOFF_TIMING_FOR_POWER_AREA    FALSE

# low | medium | high
# Effort level for route_opt command.
set ROUTE_OPT_EFFORT                "medium"

# TRUE | FALSE
# TRUE - Enable congestion removal during place_opt command (place_opt_icc step)
#        and clock_opt -only_psyn command (clock_opt_psyn_icc step).
set PLACE_OPT_CONGESTION_DRIVEN     TRUE

# TRUE | FALSE
# Control whether layer optimization is performed during place_opt
# by set_place_opt_strategy -layer_optimization.
set PLACE_OPT_LAYER_OPTIMIZATION    "TRUE"

# MEDIUM | HIGH
# Control the layer optimization effort during place_opt.
set PLACE_OPT_LAYER_OPTIMIZATION_EFFORT "MEDIUM"

# FALSE | TRUE
# Control whether track RC based optimization is performed during place_opt.
# The RC models are generated from the current scenario so set the most
# critical senario as the current scenario before running place_opt.
set PLACE_OPT_CONSIDER_ROUTING      "FALSE"

# NONE | MEDIUM | HIGH
# MEDIUM/HIGH - Improve total power (leakage + dynamic).
# A realistic SAIF will be needed to get accurate power savings.
# For MCMM design an active scenario with dynamic_power, leakage_power,
# and setup enabled is necessary for total power optimization.
# Apply to place_opt -power, psynopt -power, and psynopt -only_power.
set ICC_TOTAL_POWER_STRATEGY_EFFORT NONE

# FALSE | TRUE
# FALSE - Default.
# TRUE  - Enable the high resistance optimization for route_opt and focal_opt.
# This feature may see increased effect on 20nm and below designs. 
set ICC_HIGH_RESISTANCE_OPTIMIZATION    "FALSE"

# MEDIUM | HIGH
# Control the effort of preroute optimization to explore TNS improvements.
# Affect place_opt, clock_opt -only_psyn, psynopt, and preroute_focal_opt.
# MEDIUM - Default.
# HIGH   - Preroute optimzation will spend longer looking for TNS improvements.
set ICC_TNS_EFFORT_PREROUTE         "MEDIUM"

# MEDIUM | HIGH
# Control the effort of postroute optimization to explore TNS improvements.
# MEDIUM - Default.
# HIGH   - Postroute optimzation will spend longer looking for TNS improvements.
# Affect route_opt and focal_opt.
set ICC_TNS_EFFORT_POSTROUTE        "MEDIUM"

# TRUE | FALSE
# TRUE - Perform layer optimization (preroute_focal_opt -layer_optimization) 
#        on existing buffer trees after place_opt command (place_opt_icc step).
set PLACE_OPT_PREROUTE_FOCALOPT_LAYER_OPTIMIZATION      FALSE 

# TRUE | FALSE
# TRUE - Perform layer optimization (preroute_focal_opt -layer_optimization)
#        on existing buffer trees after clock_opt -only_psyn command (clock_opt_psyn_icc step).
set CLOCK_OPT_PSYN_PREROUTE_FOCALOPT_LAYER_OPTIMIZATION FALSE 

# TRUE | FALSE
# TRUE - Perform optimization with automatic routing rules (preroute_focal_opt -auto_routing_rule) 
#        on existing buffer trees after clock_opt -only_psyn command (clock_opt_psyn_icc step)
set CLOCK_OPT_PSYN_PREROUTE_FOCALOPT_AUTO_NDR           FALSE

# TRUE | FALSE
# TRUE - Create a global route congestion map snapshot in PNG format at the end of route_icc step.
set ICC_CREATE_GR_PNG               FALSE

# TRUE | FALSE
# TRUE - write_verilog in outputs_icc.tcl will write out module definitions for soft macros.
set ICC_WRITE_FULL_CHIP_VERILOG     FALSE

# Net and port names for power and ground.
if {![info exists MW_POWER_NET  ]} {set MW_POWER_NET   "VDD"}
if {![info exists MW_POWER_PORT ]} {set MW_POWER_PORT  "VDD"}
if {![info exists MW_GROUND_NET ]} {set MW_GROUND_NET  "VSS"} 
if {![info exists MW_GROUND_PORT]} {set MW_GROUND_PORT "VSS"}


#-----------------------------------------------------------------------------
# Cellname Variables
#-----------------------------------------------------------------------------

set ICC_FLOORPLAN_CEL                       "init_design_icc"
set ICC_PLACE_OPT_CEL                       "place_opt_icc"
set ICC_CLOCK_OPT_CTS_CEL                   "clock_opt_cts_icc"
set ICC_CLOCK_OPT_PSYN_CEL                  "clock_opt_psyn_icc"
set ICC_CLOCK_OPT_ROUTE_CEL                 "clock_opt_route_icc"
set ICC_ROUTE_CEL                           "route_icc"
set ICC_ROUTE_OPT_CEL                       "route_opt_icc"
set ICC_CHIP_FINISH_CEL                     "chip_finish_icc"
set ICC_METAL_FILL_CEL                      "metal_fill_icc"

set ICC_ECO_STARTING_CEL                    $ICC_METAL_FILL_CEL
set ICC_ECO_CEL                             "eco_icc"
set ICC_FOCAL_OPT_STARTING_CEL              $ICC_CHIP_FINISH_CEL
set ICC_FOCAL_OPT_CEL                       "focal_opt_icc"
set ICC_OUTPUTS_CEL                         "outputs_icc"
set ICC_FLOORPLAN_ODL_CEL                   "init_design_odl"
set ICC_DP_CREATE_PLANGROUPS_CEL            "create_plangroups_dp"
set ICC_DP_CREATE_ODL_CEL                   "create_odl_dp"
set ICC_DP_ROUTEABILITY_ON_PLANGROUPS_CEL   "routeability_on_plangroups_dp"
set ICC_DP_PIN_ASSIGNMENT_BUDGETING_CEL     "pin_assignment_budgeting_dp"
set ICC_DP_COMMIT_CEL                       "commit_dp"


#-----------------------------------------------------------------------------
# Customized Constraint Script for Core Commands (Optional)
#-----------------------------------------------------------------------------

# Optional Tcl files.
# If specified, they will be sourced in the scripts. Review scripts for exact
# location where they are sourced to avoid overlap with existing constraints.
set CUSTOM_INIT_DESIGN_PRE_SCRIPT           ""
set CUSTOM_PLACE_OPT_PRE_SCRIPT             ""
set CUSTOM_PLACE_OPT_POST_SCRIPT            ""
set CUSTOM_CLOCK_OPT_CTS_PRE_SCRIPT         ""
set CUSTOM_CLOCK_OPT_CTS_POST_SCRIPT        ""
set CUSTOM_CLOCK_OPT_PSYN_PRE_SCRIPT        ""
set CUSTOM_CLOCK_OPT_PSYN_POST_SCRIPT       ""
set CUSTOM_CLOCK_OPT_ROUTE_PRE_SCRIPT       ""
set CUSTOM_CLOCK_OPT_ROUTE_PRE_CTO_SCRIPT   ""
set CUSTOM_CLOCK_OPT_ROUTE_POST_CTO_SCRIPT  ""
set CUSTOM_ROUTE_PRE_SCRIPT                 ""
set CUSTOM_ROUTE_POST_SCRIPT                ""
set CUSTOM_ROUTE_OPT_PRE_SCRIPT             ""
set CUSTOM_ROUTE_OPT_POST_SCRIPT            ""
set CUSTOM_FOCAL_OPT_PRE_SCRIPT             ""
set CUSTOM_FOCAL_OPT_POST_SCRIPT            ""
set CUSTOM_CHIP_FINISH_POST_SCRIPT          ""


#-----------------------------------------------------------------------------
# Floorplan Input Variables                    
#-----------------------------------------------------------------------------

# DEF | FP_FILE | USER_FILE | CREATE | SKIP
# DEF       - Read $ICC_IN_DEF_FILE
# FP_FILE   - Read $ICC_IN_FLOORPLAN_FILE
# USER_FILE - Source $ICC_IN_FLOORPLAN_USER_FILE
# CREATE    - Use create_floorplan command
# SKIP      - Skip floorplanning section
set ICC_FLOORPLAN_INPUT                         "CREATE"

# Complete floorplan file in DEF format.
set ICC_IN_DEF_FILE                             ""

# Complete floorplan file generated by write_floorplan.
set ICC_IN_FLOORPLAN_FILE                       ""

# Complete floorplan file generated by user. This file will simply be sourced.
set ICC_IN_FLOORPLAN_USER_FILE                  ""

# I/O constraint file generated by write_pin_pad_physical_constraints which
# contains pin or pad information, applied prior to create_floorplan command.
set ICC_IN_PIN_PAD_PHYSICAL_CONSTRAINTS_FILE    "pin_pad_physical_constraints.tcl"

# File including physical-only cell creation commands to be sourced.
# e.g. create_cell {vdd1left vdd1right vdd1top vdd1bottom} pvdi
set ICC_IN_PHYSICAL_ONLY_CELLS_CREATION_FILE    "physical_only_cells_creation.tcl"

# File including physical-only cell connection commands to be sourced.
# e.g. derive_pg_connection \
#          -power_net  $MW_POWER_NET \
#          -power_pin  $MW_POWER_PORT \
#          -ground_net $MW_GROUND_NET \
#          -ground_pin $MW_GROUND_PORT \
#          -cells      {vdd1left vdd1right vdd1top vdd1bottom}
set ICC_IN_PHYSICAL_ONLY_CELLS_CONNECTION_FILE  ""

# Script to add incremental floorplan constraints which will be sourced
# after read_def, read_floorplan, or floorplan creation.
set ICC_PHYSICAL_CONSTRAINTS_FILE               "physical_constraints.tcl"

# Script for customized derive_pg_connection commands which replaces the
# default derive_pg_connection commands in the scripts.
set CUSTOM_CONNECT_PG_NETS_SCRIPT               ""

# Space separated list of pad filler cells.
set PAD_FILLER_CELL                             "PFILLER20 \
                                                 PFILLER10 \
                                                 PFILLER5 \
                                                 PFILLER1 \
                                                 PFILLER05 \
                                                 PFILLER0005"


#-----------------------------------------------------------------------------
# Timing Variables
#-----------------------------------------------------------------------------

# TRUE | FALSE
# FALSE - The derating is assumed to be set in the SDC.
set ICC_APPLY_RM_DERATING               TRUE

# Late/early derating factor, used for both data and clock.
set ICC_LATE_DERATING_FACTOR            1.01
set ICC_EARLY_DERATING_FACTOR           0.99

# TRUE | FALSE
# TRUE - User uncertainty will be replaced by $ICC_UNCERTAINTY_PRECTS/POSTCTS.
set ICC_APPLY_RM_UNCERTAINTY_PRECTS     FALSE
set ICC_APPLY_RM_UNCERTAINTY_POSTCTS    FALSE

# Pre-CTS uncertainty file used during place_opt.
set ICC_UNCERTAINTY_PRECTS_FILE         ""

# Post-CTS uncertainty file used during post-CTS optimization and route_opt.
set ICC_UNCERTAINTY_POSTCTS_FILE        ""

# max_transition value set on the design.
set ICC_MAX_TRANSITION                  ""

# critical_range set on the design, default = 50% of each clock period.
set ICC_CRITICAL_RANGE                  ""

# max_fanout value set on the design.
set ICC_MAX_FANOUT                      ""

# HIGH | HYBRID | MEDIUM | LOW
# Postroute delay calculation effort.
# MEDIUM - Default. A combination of Arnoldi and Elmore.
# HIGH   - Full Arnoldi postroute delay calculation. 
# HYBRID - A combination of AWE and Arnoldi for faster runtime with comparable
#          accuracy to full Arnoldi.
# LOW    - AWE only.
set ICC_ARNOLDI_EFFORT                  "MEDIUM"

# HIGH | MEDIUM | LOW | NONE
# By default preroute delay calculation uses Elmore.
# Setting this variable to HIGH, MEDIUM, or LOW will enable AWE for preroute
# delay calculation at different effort levels.
set ICC_PREROUTE_AWE_EFFORT             "NONE"

# File containing advanced on-chip variation (OCV) derate factor tables written
# out by PrimeTime's write_binary_aocvm command.
# If specified, it will be read right before clock_opt -only_psyn command at
# clock_opt_psyn_icc step and AOCV analysis will be enabled.
# In the Concurrent Clock and Data flow it will be read before any clock_opt
# command is called at the clock_opt_ccd step.
set ICC_IN_AOCV_TABLE_FILE_MAX          ""
set ICC_IN_AOCV_TABLE_FILE_MIN          ""
set ICC_IN_AOCV_TABLE_FILE              $ICC_IN_AOCV_TABLE_FILE_MAX


#-----------------------------------------------------------------------------
# Clock Tree Synthesis (CTS) Variables
#-----------------------------------------------------------------------------

# Clock nondefault routing rule name defined, e.g., in common_cts_settings_icc.tcl.
# It will be associated with set_clock_tree_options -routing_rule. 
# If $ICC_CTS_RULE_NAME is set to iccrm_clock_double_spacing, double spacings
# will be applied to all layers.
set ICC_CTS_RULE_NAME                   "iccrm_clock_double_spacing"

# Clock tree layers, usually M3 and above, e.g. "M3 M4 M5".
set ICC_CTS_LAYER_LIST                  "METAL3 METAL4"

# Cells for CTS, a space-deliminated list: cell1 cell2.
set ICC_CTS_REF_LIST                    ""

# Cells for CTS delay insertion, a space-deliminated list: cell1 cell2.
set ICC_CTS_REF_DEL_INS_ONLY            ""

# Cells for CTS sizing only, a space-deliminated list: cell1 cell2.
set ICC_CTS_REF_SIZING_ONLY             ""

# Clock shielding rule name.
# Require $ICC_CTS_SHIELD_SPACINGS, $ICC_CTS_SHIELD_WIDTHS to be also specified.
set ICC_CTS_SHIELD_RULE_NAME            ""

# Clock shielding spacing associated with shielding rule.
# A list of layer name and spacing pairs.
set ICC_CTS_SHIELD_SPACINGS             ""

# Clock shielding width associated with shielding rule.
# A list of layer name and width pairs.
set ICC_CTS_SHIELD_WIDTHS               ""

# A subset of clock names to apply the clock shielding rule: $ICC_CTS_SHIELD_RULE_NAME;
# Optional. If not specified, $ICC_CTS_SHIELD_RULE_NAME will be applied to all clocks.
set ICC_CTS_SHIELD_CLK_NAMES            ""

# TRUE | FALSE
# TRUE - Enable -inter_clock_balance for "clock_opt -only_cts" at clock_opt_cts_icc task.
#        Specify $ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE to set the options.
set ICC_CTS_INTERCLOCK_BALANCING        FALSE

# File containing set_inter_clock_delay_options commands. Optional.
set ICC_CTS_INTERCLOCK_BALANCING_OPTIONS_FILE  ""

# TRUE | FALSE
# TRUE - Perform clock latency update post CTS.
set ICC_CTS_UPDATE_LATENCY              FALSE

# File specifying the latency adjustment options. Optional.
set ICC_CTS_LATENCY_OPTIONS_FILE        ""

# TRUE | FALSE
# TRUE - Enable low power placement for CTS.
#        Require $POWER_OPTIMIZATION to be TRUE to be effective.
set ICC_CTS_LOW_POWER_PLACEMENT         FALSE

# TRUE | FALSE
# TRUE - Enable clock gate merging for CTS for power reduction.
#        Require $POWER_OPTIMIZATION to be TRUE to be effective.
set ICC_CTS_CLOCK_GATE_MERGE            FALSE

# TRUE | FALSE
# TRUE - Enable clock gate splitting for CTS for reducing enable pin violations.
#        Require $POWER_OPTIMIZATION to be TRUE to be effective.
set ICC_CTS_CLOCK_GATE_SPLIT            FALSE

# TRUE | FALSE
# TRUE - Insert XOR self-gating logic during clock tree synthesis before clock
#        tree construction. An optional gate-level SAIF file ($ICC_IN_SAIF_FILE)
#        is recommended in order to provide clock activity information.
set ICC_CTS_SELF_GATING                 FALSE

# Gate-level SAIF file for low power placement ($ICC_CTS_LOW_POWER_PLACEMENT)
# and self-gating ($ICC_CTS_SELF_GATING). Optional.
set ICC_IN_SAIF_FILE                    "$DESIGN_NAME.saif" ;

# Instance name in the SAIF file containing switching activity.
set ICC_SAIF_INSTANCE_NAME              $DESIGN_NAME

# TRUE | FALSE
# TRUE - Perform postroute clock tree optimization after clock routing at
#        clock_opt_route_icc step.
set ICC_POST_CLOCK_ROUTE_CTO            FALSE


#-----------------------------------------------------------------------------
# Routing and Chipfinishing Variables
#-----------------------------------------------------------------------------

# End cap cells.
# Horizontal/vertical CAP CELL library cells for the Well Proximity Effect.
set ICC_H_CAP_CEL                       ""
set ICC_V_CAP_CEL                       ""

# Well tap cell.
set ICC_TAP_CEL                         "TAPCELLBWP7T"


# Redundant via insertion (ICC_DBL_VIA) options.
#
# LOW | MED | HIGH
# MED  - Enable concurrent soft-rule redundant via insertion.
# HIGH - Run another redundant via, timing driven, after chipfinishing.
set ICC_DBL_VIA_FLOW_EFFORT             LOW
#
# Script to define the redundant via definitions.
set ICC_CUSTOM_DBL_VIA_DEFINE_SCRIPT    ""
#
# TRUE | FALSE
# TRUE  - Enable automatic redundant via insertion after detail route change
#         of "route_opt -initial".
# FALSE - Run insert_zrt_redundant_vias after "route_opt -initial".
set ICC_DBL_VIA_DURING_INITIAL_ROUTING  TRUE


# Antenna fixing (ICC_FIX_ANTENNA) options.
#
# Antenna rule file.
set ANTENNA_RULES_FILE                  "antennaRule_018_5lm.tcl"
#
# TRUE | FALSE
# Control variable to allow diodes to be inserted both by the 
# insert_port_protection_diodes command as well as the router.
set ICC_USE_DIODES                      TRUE
#
# Diode name list separated by spaces.
set ICC_ROUTING_DIODES                  "ANTENNABWP7T"
#
# Diode name for insert_port_protection_diodes.
# Format = library_name/diode_name
set ICC_PORT_PROTECTION_DIODE           ""
#
# List of ports to be excluded by insert_port_protection_diodes.
set ICC_PORT_PROTECTION_DIODE_EXCLUDE_PORTS ""


# Filler cell insertion (ADD_FILLER_CELL) options.
#
# Space separated list of filler cells with metals.
set FILLER_CELL_METAL           "DCAP64BWP7T \
                                 DCAP32BWP7T \
                                 DCAP16BWP7T \
                                 DCAP8BWP7T \
                                 DCAP4BWP7T \
                                 DCAPBWP7T"
#
# Space separated list of filler cells without metals.
set FILLER_CELL                 "FILL64BWP7T \
                                 FILL32BWP7T \
                                 FILL16BWP7T \
                                 FILL8BWP7T \
                                 FILL4BWP7T \
                                 FILL2BWP7T \
                                 FILL1BWP7T"



# Signal EM options.
#
# TRUE | FALSE
# TRUE - Enable signal EM fixing. Uncomment the section and follow instruction
#        in chip_finish_icc.tcl.
set ICC_FIX_SIGNAL_EM           FALSE
#
# The TLU+ file with the advanced signal EM constraints in it to be read by
# read_signal_em_constraints. This may be the same as the standard TLU+ files.
set ICC_TLUPLUS_SIGNAL_EM_FILE  ""
#
# The ITF file with the advanced signal EM constraints in it to be read by
# read_signal_em_constraints -itf_em command in chip_finish_icc.tcl.
set ICC_ITF_SIGNAL_EM_FILE      ""

        
#-----------------------------------------------------------------------------
# Emulation TLU+ Files
#-----------------------------------------------------------------------------

# Note: emulated metal fill may not correlate well with real metal fill,
# especially for advanced technology nodes. Use it for reference only.

# Max/min emulation TLU+ files.
set TLUPLUS_MAX_EMULATION_FILE  ""
set TLUPLUS_MIN_EMULATION_FILE  ""


#-----------------------------------------------------------------------------
# check_signoff_correlation Variables
#-----------------------------------------------------------------------------

# PrimeTime bin directory.
set PT_DIR                      ""

# Optional file in case PrimeTime has a different SDC that what is available
# in the IC Compiler database.
set PT_SDC_FILE                 ""

# StarRC bin directory.
set STARRC_DIR                  ""

# Max/min NXTGRD files.
set STARRC_MAX_NXTGRD           ""
set STARRC_MIN_NXTGRD           ""

# NXTGRD mapping file, defaults to TLUPlus mapping file, but could be different.
set STARRC_MAP_FILE             "$TLUPLUS_MAP_FILE"

# File to be sourced to run at check_signoff_correlation end of route_opt_icc step.
# Example: rm_icc_scripts/signoff_opt_check_correlation_postroute_icc.example.tcl
set ICC_SIGNOFF_OPT_CHECK_CORRELATION_POSTROUTE_SCRIPT  ""


#-----------------------------------------------------------------------------
# Metal fill and Signoff DRC Variables
#-----------------------------------------------------------------------------

# For IC Validator metal Fill:
# Ensure environment variable PRIMEYIELD_HOME_DIR is set and that IC Validator
# is included in the same path where the IC Compiler shell is executed from.
#
# For IC Validator DRC:
# Ensure environment variable ICV_HOME_DIR is set and that IC Validator is
# included in the same path where the IC Compiler shell is executed from.

# IC Validator runset for signoff_metal_fill command.
set SIGNOFF_FILL_RUNSET             ""
#
# IC Validator runset for signoff_drc command.
set SIGNOFF_DRC_RUNSET              ""
#
# IC Validator mapping file for signoff_metal_fill and signoff_drc commands.
set SIGNOFF_MAPFILE                 "gdsout.map"
#
# NONE | AUTO_ECO
# Determine whether signoff_drc will run in the Auto ECO flow mode.
set ICC_ECO_SIGNOFF_DRC_MODE        "NONE"


# Options for signoff_metal_fill command using ICV engine in metal_fill_icc.tcl.
#
# TRUE | FALSE
# TRUE - Enable timing driven for IC Validator metal fill.
set SIGNOFF_METAL_FILL_TIMING_DRIVEN    TRUE
#
# Setup slack threshold for timing driven ICV metal fill.
# Also used by wire_spreading/widening in chip_finish_icc.tcl.
# Data type: float, default: 0.1.
set TIMING_PRESERVE_SLACK_SETUP     "0.1"
#
# Hold slack threshold for wire_spreading/widening in chip_finish_icc.tcl.
# Data type: float, default: 0.
set TIMING_PRESERVE_SLACK_HOLD      "0"


# Options for insert_metal_fill command using ICC engine in metal_fill_icc.tcl.
#
# Space amount used during the IC Compiler insert_metal_fill command.
set ICC_METAL_FILL_SPACE            2
#
# Enable timing driven metal fill for the IC Compiler insert_metal_fill command.
set ICC_METAL_FILL_TIMING_DRIVEN    TRUE


#-----------------------------------------------------------------------------
# focal_opt Variables
#-----------------------------------------------------------------------------

# <filename> | all | <blank>
# <filename> - Fix violations from a file.
# all        - Fix all hold/setup/DRC-net/DRC-pin violations.
# <blank>    - Skip.
set ICC_FOCAL_OPT_HOLD_VIOLS        "all"
set ICC_FOCAL_OPT_SETUP_VIOLS       ""
set ICC_FOCAL_OPT_DRC_NET_VIOLS     "all"
set ICC_FOCAL_OPT_DRC_PIN_VIOLS     ""

# <filenam>e | <blank>
# <filenam>e - Fix crosstalk violations from a file.
# <blank>    - Skip.
set ICC_FOCAL_OPT_XTALK_VIOLS       ""


#-----------------------------------------------------------------------------
# ECO Flow Variables
#-----------------------------------------------------------------------------

# NONE | UNCONSTRAINED | FREEZE_SILICON
# UNCONSTRAINED  - No spare cell insertion. Cells can be added (pre tapeout).
# FREEZE_SILICON - Spare cell insertion/freeze silicon ECO.
set ICC_ECO_FLOW                "NONE"

# Tcl script to insert the spare cells, e.g.,
# insert_spare_cells -lib_cell {INV8 DFF1} -cell_name spares -num_instances 300
set ICC_SPARE_CELL_FILE         ""

# Verilog netlist or Tcl file containing ECO changes.
# Specify the file name and type of file using $ICC_ECO_FLOW_TYPE.
set ICC_ECO_FILE                ""

# verilog | pt_drc_setup_fixing_tcl | pt_hold_fixing_tcl | pt_minimum_physical_impact
# Specify type of ECO file for UNCONSTRAINED ICC_ECO_FLOW. Depending on the value
# specified, the commands used to read ECO file and place ECO cells vary.
# verilog                    - A functional ECO file for $ICC_ECO_FILE.
# pt_drc_setup_fixing_tcl    - A change file generated by PT fix_eco_drc or fix_eco_timing -setup commands.
# pt_hold_fixing_tcl         - A change file generated by PT fix_eco_timing -hold command.
# pt_minimum_physical_impact - A change file generated by PT fix_eco_timing or fix_eco_leakage command.
set ICC_ECO_FLOW_TYPE           "verilog"

# early_stage | signoff_stage
# Only ICV is supported.
# early stage   - Use ICV DRC based metal fill trimming (faster).
# signoff_stage - Perform complete ICV metal fill purge, ADR and metal fill insertion.
set ICC_ECO_METAL_FILL_MODE     "early_stage"

# FALSE | TRUE
# Specifies whether the automatic ECO will be used for ECO metal fill operations. 
# Effect both early_stage and signoff_stage of $ICC_ECO_METAL_FILL_MODE.
set ICC_ECO_AUTO_ECO_METAL_FILL "FALSE"


#-----------------------------------------------------------------------------
# ICC Design Planning RM Variables (Common Variables with Hierarchical RM)
#-----------------------------------------------------------------------------

# TRUE | FALSE
# TRUE - Generate additional reports before placement.
set ICC_DP_VERBOSE_REPORTING    FALSE
# 
# Threshold to set nets with fanout larger than it as ideal nets.
# Data type: integer.
set ICC_DP_SET_HFNS_AS_IDEAL_THRESHOLD  ""
# 
# TRUE | FALSE
# TRUE - Set mixed clock/signal paths as ideal nets.
set ICC_DP_SET_MIXED_AS_IDEAL   TRUE


# <blank> | skip | <a_list_of_macros>
# <blank>            - Unfix all macros.
# skip               - Skip fix.
# <a_list_of_macros> - Fix specified macros before placement.
set ICC_DP_FIX_MACRO_LIST       ""
#
# Put set_keepout_margin and fp_set_macro_placement_constraint in this file.
set CUSTOM_ICC_DP_PLACE_CONSTRAINT_SCRIPT   ""
# 
# File to perform customized preroute_standard_cell commands.
set CUSTOM_ICC_DP_PREROUTE_STD_CELL_SCRIPT  "custom_icc_dp_preroute_std_cell.tcl"


# PNS and PNA control variables.
#
# File to add PNS constraints which is loaded before running PNS.
set CUSTOM_ICC_DP_PNS_CONSTRAINT_SCRIPT     ""
# 
# Target nets for PNS.
# Syntax: "power_net ground_net" 
set PNS_POWER_NETS                          "${MW_POWER_NET} ${MW_GROUND_NET}"
#
# Unit: mW, default: 1000.
set PNS_POWER_BUDGET                        1000
#
# Unit: V, default: 1.5.
set PNS_VOLTAGE_SUPPLY                      1.8
#
# Specify the metal layer to use as virtual rail.
set PNS_VIRTUAL_RAIL_LAYER                  ""
#
# Output directory for PNS and PNA output files.
set PNS_OUTPUT_DIR                          "./$RESULT_DIR/pna_output"
#
# Set the wire extraction temperature for PNA. Optional.
# Data type: float.
set PNA_EXTRACTION_TEMPERATURE              ""
#
# min | max
# Set the parasitic corner for RC extraction for PNA. Optional.
set PNA_EXTRACTION_CORNER                   ""


#-----------------------------------------------------------------------------
# ICC Hierarchical RM Variables
#-----------------------------------------------------------------------------

# Full module names from which plan groups will be created.
# Format: space deliminated list: "top/A top/B top/C".
# Default to $HIERARCHICAL_CELLS from common_setup.tcl if using DCT.
set ICC_DP_PLAN_GROUPS                      "$HIERARCHICAL_CELLS"

# Floorplan file containing plan group creation and location which should be
# the output of write_floorplan.
set ICC_DP_PLANGROUP_FILE                   ""

# TRUE | FALSE
# TRUE - Allow feedthrough creation during pin assignment.
set ICC_DP_ALLOW_FEEDTHROUGH                FALSE

# Customized PNS/PNA script, replacing PNS/PNA section in scripts.
# For template based PNS, $CUSTOM_ICC_DP_PNS_SCRIPT is required.
set CUSTOM_ICC_DP_PNS_SCRIPT                "custom_icc_dp_pns.tcl"
set CUSTOM_ICC_DP_PNA_SCRIPT                ""


# DFT-aware hierarchical design planning variables.
#
# TRUE | FALSE
# TRUE - Enable DFT-aware hierarchical design planning flow.
#        Require $ICC_IN_FULL_CHIP_SCANDEF_FILE.
set ICC_DP_DFT_FLOW                         FALSE
# 
# Full-chip SCANDEF file for DFT-aware hierarchical design planning flow
# (see $ICC_DP_DFT_FLOW).
# Used only in hierarchical design planning phase; not used or needed for
# block level implementations and top level assembly.
set ICC_IN_FULL_CHIP_SCANDEF_FILE           "$DESIGN_NAME.mapped.expanded.scandef"


# Budgeting SDC output directory.
# Default: "./sdc".
set BUDGETING_SDC_OUTPUT_DIR                "./$RESULT_DIR/sdc"


# ODL flow variables.
# 
# Map file for the blocks and the SDC file for each block.
set ICC_DP_ODL_BLOCK_SDC_MAP_FILE           ""
# 
# lsf | grd | samehost | <list_of_hosts>
# Control the set_host_options value for create_on_demand_netlist.
# lsf/grd         - Need also specify $ICC_DP_ODL_HOST_OPTION_SUBMIT_OPTIONS.
# <list_of_hosts> - Need also specify $ICC_DP_ODL_HOST_OPTION_HOSTS_LIST.
set ICC_DP_ODL_HOST_OPTION                  ""
# 
# Control the value of -submit_option option for set_host_options for
# create_on_demand_netlist command. 
# If $ICC_DP_ODL_HOST_OPTION is set to lsf, then lsf specific submit options
# should be specified, for example, 
# {-q bnormal -R "rusage\[mem=12000\]\cputype==emt64 cpuspeed==EMT3000 qsc==e"}
set ICC_DP_ODL_HOST_OPTION_SUBMIT_OPTIONS   {}
# 
# List of hosts on which to perform create_on_demand_netlist.
set ICC_DP_ODL_HOST_OPTION_HOSTS_LIST       ""


# TIO and block abstraction variables.
#
# List of all the block abstractions used in the design.
# If left empty, the list will be auto set to include all soft macros in the
# design if following HRM step-by-step.
set ICC_BLOCK_ABSTRACTIONS_LIST             ""
# 
# List of names of block abstractions that are to be optimized by transparent
# interface optimization (TIO) at route_opt_icc.
# Can be changed to a subset of block abstractions before route_opt_icc starts.
set ICC_TIO_BLOCK_LIST                      $ICC_BLOCK_ABSTRACTIONS_LIST
# 
# TRUE | FALSE
# TRUE - TIO optimize interface logic.
set ICC_TIO_OPTIMIZE_BLOCK_INTERFACE        TRUE 
# 
# TRUE | FALSE
# TRUE - TIO optimize inside MIM blocks, only when opening MIM blocks for TIO.
set ICC_TIO_OPTIMIZE_MIM_BLOCK_INTERFACE    FALSE
# 
# TRUE | FALSE
# TRUE - TIO optimize shared logic.
#        Require $ICC_TIO_OPTIMIZE_BLOCK_INTERFACE to be also enabled.
set ICC_TIO_OPTIMIZE_SHARED_LOGIC           FALSE
# 
# Script for block abstraction setup, useful for variable settings during block update.
# To be used during set_top_implementation_options -block_update_setup_script 
# $ICC_TIO_BLOCK_UPDATE_SETUP_SCRIPT. The file name should not include relative paths.
set ICC_TIO_BLOCK_UPDATE_SETUP_SCRIPT       ""   
#
# lsf | grd | samehost | <list_of_hosts>
# Controls the set_host_options value for TIO.
# lsf/grd         - Need also specify $ICC_TIO_HOST_OPTION_SUBMIT_OPTIONS.
# <list_of_hosts> - Need also specify $ICC_TIO_HOST_OPTION_HOSTS_LIST.
# Note: If $ICC_TIO_OPTIMIZE_BLOCK_INTERFACE is set to TRUE and
#       $ICC_TIO_BLOCK_LIST is not empty, which are both default for HRM,
#       you should also specify a valid value for $ICC_TIO_HOST_OPTION.
set ICC_TIO_HOST_OPTION                     ""
# 
# Control the value of -submit_option option for set_host_options for TIO.
# If $ICC_TIO_HOST_OPTION is set to lsf, then lsf specific submit options
# should be specified and vice versa, for example, 
# {-q bnormal -R "rusage\[mem=12000\]\cputype==emt64 cpuspeed==EMT3000 qsc==e"}
set ICC_TIO_HOST_OPTION_SUBMIT_OPTIONS      {}
# 
# List of hosts on which to perform automatic block update during TIO.
set ICC_TIO_HOST_OPTION_HOSTS_LIST          ""
# 
# TRUE | FALSE
# TRUE - Write out an ECO file to TIO_eco_changes directory for TIO.
set ICC_TIO_WRITE_ECO_FILE                  FALSE


# default | block | top
# block/top - Disable tasks such as Milkyway design library creation, importing
#             of black boxes, scenario creation, voltage area creation, and power
#             switch creation, etc in init_design_icc.tcl which should have been
#             completed during design planning phase and should be skipped during
#             block and top level implementation phases.
# top       - Enable TIO at route_opt_icc task.
# If following ICC HRM step-by-step, do not change this. It will be automatically
# set to block or top for block or top level designs, respectively.
set ICC_IMPLEMENTATION_PHASE                default
  
# List containing paths to all block libraries, which will be added as reference
# libraries of the top level library.
# If following ICC HRM step-by-step, need not change this. It will be automatically
# set to include all block libraries in the design for top level implementation.
set MW_SOFT_MACRO_LIBS                      ""


#-----------------------------------------------------------------------------
# ICC Design Planning RM (Flat) Variables
#-----------------------------------------------------------------------------

# Explore mode: flow control variables.
#
# TRUE | FALSE
# Turn on exploration mode.
set ICC_DP_EXPLORE_MODE                 FALSE
#
# default | placement_only | no_pns_pna | no_ipo
# default        - place -> PNS/PNA -> in-place optimization -> final groute,
#                  snapshot, QoR, timing, and outputs.
# placement_only - Skip PNS/PNA and in-place optimization from default.
# no_pns_pna     - Skip PNA/PNS from default.
# no_ipo         - Skip in-place optimization from default.
set ICC_DP_EXPLORE_STYLE                default
#
# TRUE | FALSE
# TRUE - Save three additional CEL after placement, in-place optimization,
#        and PNS in explore mode (more disk space).
set ICC_DP_EXPLORE_SAVE_CEL_EACH_STEP   FALSE
#
# TRUE | FALSE
# TRUE - Generate QoR snapshot and timing report after each step (longer run time).
set ICC_DP_EXPLORE_REPORTING_EACH_STEP  FALSE
# 
# TRUE | FALSE
# TRUE - Use global route.
set ICC_DP_EXPLORE_USE_GLOBAL_ROUTE     FALSE
# 
# TRUE | FALSE
# TRUE - Save two additional CEL after global route:
#        one after placement and one at the end.
set ICC_DP_EXPLORE_SAVE_CEL_AFTER_GROUTE    TRUE
# 
# Script to be loaded to create customized PG straps after placement in
# explore mode. Valid only if ICC_DP_EXPLORE_STYLE is placement_only or
# no_pns_pna.
set ICC_DP_EXPLORE_CUSTOM_PG_SCRIPT     ""


# Explore mode: additional PNS control variables.
#
# Unit: mV. Tool default is 10% of $PNS_POWER_BUDGET.
set PNS_TARGET_VOLTAGE_DROP             250
#
# TRUE | FALSE
# Specify if the design is block or top level.
# It turns on correspondant options in PNS and PNA.
set PNS_BLOCK_MODE                      TRUE  
#
# Specify cell masters for power pads, e.g. "pv0i.FRAM pv0a.FRAM".
# Only for top level design with power pads.
set PNS_PAD_MASTERS                     ""
#
# Specify the file with a list of power pad instances.
# Only for top level design with power pads.
set PNS_PAD_INSTANCE_FILE               ""
#
# Specify the file with a list of power pad masters.
# Only for top level design with power pads.
set PNS_PAD_MASTER_FILE                 ""
#
# Provide only one of the above three PNS_PAD_* variables.


#-----------------------------------------------------------------------------
# No Need to Change the Following if DCRM Is Used prior to ICC RM
#-----------------------------------------------------------------------------

# File name definitions.
set ICC_IN_VERILOG_NETLIST_FILE "$DESIGN_NAME.mapped.v"
set ICC_IN_SDC_FILE             "$DESIGN_NAME.mapped.sdc"
set ICC_IN_DDC_FILE             "$DESIGN_NAME.mapped.ddc"
set ICC_IN_UPF_FILE             "$DESIGN_NAME.mapped.upf"
set ICC_IN_SCAN_DEF_FILE        "$DESIGN_NAME.mapped.scandef"
set MW_DESIGN_LIBRARY           "../milkyway/${DESIGN_NAME}_APR"

# Milkyway design library if you want reference methodology to copy it as
# $MW_DESIGN_LIBRARY. Only apply if $ICC_INIT_DESIGN_INPUT is set to "MW".
set COPY_FROM_MW_DESIGN_LIBRARY "${DESIGN_NAME}_LIB"

# Directory definitions.
set REPORT_DIR_INIT_DESIGN                      $REPORT_DIR
set REPORT_DIR_PLACE_OPT                        $REPORT_DIR
set REPORT_DIR_CLOCK_OPT_CTS                    $REPORT_DIR
set REPORT_DIR_CLOCK_OPT_PSYN                   $REPORT_DIR
set REPORT_DIR_CLOCK_OPT_ROUTE                  $REPORT_DIR
set REPORT_DIR_ROUTE                            $REPORT_DIR
set REPORT_DIR_ROUTE_OPT                        $REPORT_DIR
set REPORT_DIR_CHIP_FINISH                      $REPORT_DIR
set REPORT_DIR_ECO                              $REPORT_DIR
set REPORT_DIR_FOCAL_OPT                        $REPORT_DIR
set REPORT_DIR_SIGNOFF_OPT                      $REPORT_DIR
set REPORT_DIR_METAL_FILL                       $REPORT_DIR
set REPORT_DIR_DP                               $REPORT_DIR
set REPORT_DIR_DP_CREATE_PLANGROUPS             $REPORT_DIR
set REPORT_DIR_DP_ROUTEABILITY_ON_PLANGROUPS    $REPORT_DIR
set REPORT_DIR_DP_PIN_ASSIGNMENT_BUDGETING      $REPORT_DIR
set REPORT_DIR_DP_COMMIT                        $REPORT_DIR
set REPORT_DIR_DP_PREPARE_BLOCK                 $REPORT_DIR
set REPORT_DIR_FORMALITY                        $REPORT_DIR

if {![file exists $REPORT_DIR_INIT_DESIGN                  ]} {file mkdir $REPORT_DIR_INIT_DESIGN                  }
if {![file exists $REPORT_DIR_PLACE_OPT                    ]} {file mkdir $REPORT_DIR_PLACE_OPT                    }
if {![file exists $REPORT_DIR_CLOCK_OPT_CTS                ]} {file mkdir $REPORT_DIR_CLOCK_OPT_CTS                }
if {![file exists $REPORT_DIR_CLOCK_OPT_PSYN               ]} {file mkdir $REPORT_DIR_CLOCK_OPT_PSYN               }
if {![file exists $REPORT_DIR_CLOCK_OPT_ROUTE              ]} {file mkdir $REPORT_DIR_CLOCK_OPT_ROUTE              }
if {![file exists $REPORT_DIR_ROUTE                        ]} {file mkdir $REPORT_DIR_ROUTE                        }
if {![file exists $REPORT_DIR_ROUTE_OPT                    ]} {file mkdir $REPORT_DIR_ROUTE_OPT                    }
if {![file exists $REPORT_DIR_CHIP_FINISH                  ]} {file mkdir $REPORT_DIR_CHIP_FINISH                  }
if {![file exists $REPORT_DIR_ECO                          ]} {file mkdir $REPORT_DIR_ECO                          }
if {![file exists $REPORT_DIR_FOCAL_OPT                    ]} {file mkdir $REPORT_DIR_FOCAL_OPT                    }
if {![file exists $REPORT_DIR_SIGNOFF_OPT                  ]} {file mkdir $REPORT_DIR_SIGNOFF_OPT                  }
if {![file exists $REPORT_DIR_METAL_FILL                   ]} {file mkdir $REPORT_DIR_METAL_FILL                   }
if {![file exists $REPORT_DIR_DP                           ]} {file mkdir $REPORT_DIR_DP                           }
if {![file exists $REPORT_DIR_DP_CREATE_PLANGROUPS         ]} {file mkdir $REPORT_DIR_DP_CREATE_PLANGROUPS         }
if {![file exists $REPORT_DIR_DP_ROUTEABILITY_ON_PLANGROUPS]} {file mkdir $REPORT_DIR_DP_ROUTEABILITY_ON_PLANGROUPS}
if {![file exists $REPORT_DIR_DP_PIN_ASSIGNMENT_BUDGETING  ]} {file mkdir $REPORT_DIR_DP_PIN_ASSIGNMENT_BUDGETING  }
if {![file exists $REPORT_DIR_DP_COMMIT                    ]} {file mkdir $REPORT_DIR_DP_COMMIT                    }
if {![file exists $REPORT_DIR_DP_PREPARE_BLOCK             ]} {file mkdir $REPORT_DIR_DP_PREPARE_BLOCK             }
if {![file exists $REPORT_DIR_FORMALITY                    ]} {file mkdir $REPORT_DIR_FORMALITY                    }


# Logical libraries.
set_app_var search_path  ". ./script ./$RESULT_DIR ../syn/result $ADDITIONAL_SEARCH_PATH $search_path"

if {$synopsys_program_name != "mvrc" || $synopsys_program_name != "vsi" || $synopsys_program_name != "vcst"} {
    set_app_var target_library  "$TARGET_LIBRARY_FILES"
    set_app_var link_library    "* $TARGET_LIBRARY_FILES $ADDITIONAL_LINK_LIB_FILES"
    } \
else {
    set_app_var link_library    "$TARGET_LIBRARY_FILES $ADDITIONAL_LINK_LIB_FILES"
    }

if {![file exists $RESULT_DIR]} {file mkdir $RESULT_DIR}
if {![file exists $REPORT_DIR]} {file mkdir $REPORT_DIR}

if {$synopsys_program_name == "icc_shell"} {
    # Min/Max library relationships.
    # For "set_operating_conditions -analysis_type on_chip_variation", it is not
    # recommended if only -max is specified. Only use it if both -max and -min of
    # set_operating_conditions are specified and point to two different libraries
    # and are characterized to model OCV effects of the same corner.
    if {$MIN_LIBRARY_FILES != "" } {
        foreach {max_library min_library} $MIN_LIBRARY_FILES {
            set_min_library $max_library -min_version $min_library
            }
        }

    # Reference libraries.
    if { ![file exists [which $MW_REFERENCE_CONTROL_FILE]]} {
        if {[file exists $MW_DESIGN_LIBRARY/lib]} {
            set_mw_lib_reference $MW_DESIGN_LIBRARY \
                -mw_reference_library "$MW_REFERENCE_LIB_DIRS $MW_SOFT_MACRO_LIBS"
            }
        }

    ## Some power domains are not used, e.g. PD4.
    if {![info exists PD4]} {set PD4 ""}

    # Avoid too many messages.
    set_message_info -id PSYN-040 -limit 10     ;# Dont_touch for fixed cells.
    set_message_info -id PSYN-087 -limit 10     ;# Port inherits its location from pad pin.
    set_message_info -id LINT-8   -limit 10     ;# Input port is unloaded.

    set_app_var check_error_list "$check_error_list LINK-5 PSYN-375"
    }

if {$synopsys_program_name == "fm_shell"} {
    set_app_var sh_new_variable_message false
    } 


# TRUE | FALSE
# TRUE - Enable any derates specified on library cells with the set_timing_derate
#        command or AOCV data to be saved to the Milkyway database.
# set_app_var timing_save_library_derate true


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"