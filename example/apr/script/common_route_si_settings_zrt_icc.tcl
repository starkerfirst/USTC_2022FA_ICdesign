#-----------------------------------------------------------------------------
# common_route_si_settings_zrt_icc.tcl:
#     Routing and SI common session options.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


#-----------------------------------------------------------------------------
# Timing Analysis Options
#-----------------------------------------------------------------------------

# By default, Xtalk Delta Delay is enabled for all flows.
set_si_options \
    -delta_delay                        true \
    -route_xtalk_prevention             true \
    -route_xtalk_prevention_threshold   0.25 \
    -analysis_effort                    medium

# By default, "-route_xtalk_prevention true" enables xtalk prevention for
# global route and track assignment, to disable xtalk prevention for global
# route, uncomment the following command:
# set_route_zrt_global_options -crosstalk_driven false

# Enable min_delta_delay for the QoR flow.
set_si_options -min_delta_delay true 


#-----------------------------------------------------------------------------
# Fix max_tran
#-----------------------------------------------------------------------------

# Note that route_opt will NOT fix nor report Delta Max Tran violations. Hence
# all max_tran violations exclude the portion that is introduced by Xtalk.
# To change this behavior, and fix max_transition violations including these
# caused by Xtalk, use the switch -max_transition_mode in set_si_options. Keep
# in mind that you can expect a runtime hit of up to 2x in DRC fixing during
# route_opt.
# set_si_options
#     -delta_delay                        true \
#     -route_xtalk_prevention             true \
#     -route_xtalk_prevention_threshold   0.25 \
#  	  -analysis_effort                    medium \
#     -max_transition_mode                total_slew


#-----------------------------------------------------------------------------
# Advanced Timing Features
#-----------------------------------------------------------------------------

# If using CCS noise model, uncomment the following:
set_app_var rc_noise_model_mode advanced

# If static noise (aka glitches) needs to be reduced, please use the following
# with additional options:
# set_si_options \
#     -delta_delay                        true \
#     -route_xtalk_prevention             true \
#     -route_xtalk_prevention_threshold   0.25 \
#  	  -analysis_effort                    medium \
#     -static_noise                       true \
#     -static_noise_threshold_above_low   0.35 \
#     -static_noise_threshold_below_high  0.35

# Enable timing windows during XDD calculation, please use:
# set_si_options -timing_window true


#-----------------------------------------------------------------------------
# Zroute Options
#-----------------------------------------------------------------------------

# Default search and repair loop setting for route_opt -initial_route is 10. 
# Use 40 to improve DRC convergence for aggressive range rules which are more
# prevalent at newer technology nodes such as 28nm and below.
# set_route_opt_strategy -search_repair_loop 40 

# For designs with process nodes 40nm and above, it is recommended to uncomment
# the line below to disable the check min area and length for cell pins feature
# (default is true):
# set_route_zrt_detail_options -check_pin_min_area_min_length false

# Zroute global route specific options can be set by the following command:
# set_route_zrt_global_options 

# Zroute track assign specific options can be set by the following command:
# set_route_zrt_track_options 

# Zroute detail route specific options can be set by the following command:
# set_route_zrt_detail_options


#-----------------------------------------------------------------------------
# route_opt and focal_opt Options
#-----------------------------------------------------------------------------

# Set area critical range.
# Typical value: 3-4 percent of critical clock period.
if {$AREA_CRITICAL_RANGE_POST_RT != ""} {set_app_var physopt_area_critical_range $AREA_CRITICAL_RANGE_POST_RT}

# Set Power Critical Range
# Typical value: 3-4 percent of critical clock period.
if {$POWER_CRITICAL_RANGE_POST_RT != ""} {set_app_var physopt_power_critical_range $POWER_CRITICAL_RANGE_POST_RT}

# Skip second report_qor in route_opt. Default is false.
set_app_var routeopt_skip_report_qor true

# To enable port punching mode for route_opt and focal_opt to open additional
# bufferable area in a net that is difficult to fix with buffer insertion due
# to a consistency mismatch between the logical and physical hierarchy.
# Currently it works only with multi-threading. 
# if {$ICC_NUM_CORES > 1} {set_route_opt_strategy -enable_port_punching TRUE}

# Enable high resistance optimization during routing and postroute.
set_optimization_strategy -high_resistance $ICC_HIGH_RESISTANCE_OPTIMIZATION


#-----------------------------------------------------------------------------
# route_opt Crosstalk Options
#-----------------------------------------------------------------------------

# Control for xtalk reduction.
# Values shown are just examples and not recommendations.
#
# low|medium|high, default low.
# set_route_opt_zrt_crosstalk_options -effort_level medium
#
# Default: ture.
# set_route_opt_zrt_crosstalk_options -setup true
#
# Default: false.
# set_route_opt_zrt_crosstalk_options -hold true
#
# Default: false.
# Needs: set_si_options -max_transition_mode total_slew
# set_route_opt_zrt_crosstalk_options -transition true
#
# Default: false.
# Needs: set_si_options -static_noise true 
# set_route_opt_zrt_crosstalk_options -static_noise true


#-----------------------------------------------------------------------------
# Redundant Via Insertion
#-----------------------------------------------------------------------------

if {$ICC_DBL_VIA } {
    # Customize the following as needed. If nothing is provided, Zroute will
    # select from those available.
    # define_zrt_redundant_vias \
    #     -from_via         "<from_via_list>" \
    #     -to_via           "<to_via_list>" \
    #     -to_via_x_size    "<list_of_via_x_sizes>" \
    #     -to_via_y_size    "<list_of_via_y_sizes>" \
    #     -to_via_weights   "<list_of_via_weights>"
    # Example:
    # define_zrt_redundant_vias \
    #     -from_via         "VIA45 VIA45 VIA12A" \
    #     -to_via           "VIA45f VIA45 VIA12f" \
    #     -to_via_x_size    "1 1 1" \
    #     -to_via_y_size    "2 2 2" \
    #     -to_via_weights   "10 6 4"

    # Specify a customized file.
    if {[file exists [which $ICC_CUSTOM_DBL_VIA_DEFINE_SCRIPT]]} {
        source -echo $ICC_CUSTOM_DBL_VIA_DEFINE_SCRIPT
        }
 
    if {$ICC_DBL_VIA_FLOW_EFFORT == "HIGH"} {
        # set_route_zrt_common_options -eco_route_concurrent_redundant_via_mode reserve_space
        # set_route_zrt_common_options -eco_route_concurrent_redundant_via_effort_level low
        }
    }


#-----------------------------------------------------------------------------
# Antenna Fixing
#-----------------------------------------------------------------------------

if {$ICC_FIX_ANTENNA } {
  
    if {[file exists [which $ANTENNA_RULES_FILE]]} {
        set_route_zrt_detail_options -antenna true -default_port_external_gate_size 0.0
        source -echo $ANTENNA_RULES_FILE
        } \
    else {
        echo "RM-Info: Antenna rules file does not exist"
        echo "RM-Info: Turning off antenna fixing"
        set_route_zrt_detail_options -antenna false
        }
    } \
else {
    echo "RM-Info: Turning off antenna fixing"
    set_route_zrt_detail_options -antenna false
    }

   
# End of routing and SI common session options.


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

