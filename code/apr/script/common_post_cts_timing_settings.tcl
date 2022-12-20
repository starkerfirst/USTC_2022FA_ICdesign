#-----------------------------------------------------------------------------
# common_post_cts_timing_settings.tcl:
#     Post-CTS timing common session options.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Enable CRPR - CRPR is usually used with timing derate (bc_wc) and with OCV.
set_app_var timing_remove_clock_reconvergence_pessimism true 

# Case analysis is not propagated across the sequential cells.
# set_app_var case_analysis_sequential_propagation never

if {[file exists [which $ICC_IN_AOCV_TABLE_FILE]]} {
    # Allow the library cell derate settings to be saved with the design.
    set_app_var timing_save_library_derate true
    }

# Set area critical range.
# Typical value: 5 percent of critical clock period.
if {$AREA_CRITICAL_RANGE_POST_CTS != ""} {set_app_var physopt_area_critical_range $AREA_CRITICAL_RANGE_POST_CTS}

# Set power critical range.
# Typical value: 5 percent of critical clock period.
if {$POWER_CRITICAL_RANGE_POST_CTS != ""} {set_app_var physopt_power_critical_range $POWER_CRITICAL_RANGE_POST_CTS}

# Hold fixing cells.
if {$ICC_FIX_HOLD_PREFER_CELLS != ""} {
    remove_attribute [get_lib_cells $ICC_FIX_HOLD_PREFER_CELLS] dont_touch
    set_prefer -min [get_lib_cells $ICC_FIX_HOLD_PREFER_CELLS]
    set_fix_hold_options -preferred_buffer
    report_fix_hold_options
    # Optionally add -effort high to reduce hold buffer count and improve min
    # delay fixing QoR.
    }


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

