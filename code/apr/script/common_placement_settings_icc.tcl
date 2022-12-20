#-----------------------------------------------------------------------------
# common_placement_settings_icc.tcl:
#     Placement common session options.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Set min/max routing Layers.
if {$MAX_ROUTING_LAYER != ""} {set_ignored_layers -max_routing_layer $MAX_ROUTING_LAYER}
if {$MIN_ROUTING_LAYER != ""} {set_ignored_layers -min_routing_layer $MIN_ROUTING_LAYER}


# Set pnet options to control cell placement around P/G straps.
if {$PNET_METAL_LIST != "" || $PNET_METAL_LIST_COMPLETE != ""} {
    remove_pnet_options

    if {$PNET_METAL_LIST != "" } {
  	    set_pnet_options -partial $PNET_METAL_LIST -see_object {all_types} 
        }
    if {$PNET_METAL_LIST_COMPLETE != ""} {
  	    set_pnet_options -complete $PNET_METAL_LIST_COMPLETE -see_object {all_types}
        }

    report_pnet_options
    }

 
# It is recommended to use the tool's default setting.
# In case it needs to be changed (e.g. for low utlization designs), use the
# command below:
# set_congestion_options -max_util 0.85

# Use this variable to force placement in place_opt, psynopt & refine_placement
# to leave existing cells on soft blockage. This allows the placer to move
# cells out of soft blockage to maintain density, but does not sweep everything
# out, as is done by default.
# set_app_var placer_enable_enhanced_soft_blockages true

# Uncomment the variable below to control the coarse placement's treatment of
# channel areas.
# The variable is false by default but can also be set to auto or true. 
# When set to auto, ICC will reduce the max cell density only if it detect
# substantial channel area in the design.
# When set to true, ICC will reduce the max cell density in channel areas.
# set_app_var placer_channel_detect_mode auto 

# For 20nm and below, to enable Zroute global router for DPT requirement
# regardless of congestion, please set the following: 
# set_app_var placer_congestion_effort    medium  ;#force Zroute GR for congestion if on 
# set_app_var placer_show_zroutegr_output true    ;#force Zroute GR info to place_opt log

# Accept recovery and removal arcs specified in the technology library.
set_app_var enable_recovery_removal_arcs true

# This variable will add a soft constraint during placement to reduce the pin
# density to below the specified value. Need to determine the appropriate
# value of MAX_PINS_PER_SQUARE_MICRON for the design.
# set_app_var placer_max_pins_per_square_micron $MAX_PINS_PER_SQUARE_MICRON



# End of placement common session options.


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

