#-----------------------------------------------------------------------------
# metal_fill_icc.tcl:
#     Metal fill.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl 

open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_METAL_FILL_CEL}"
copy_mw_cel -from $ICC_CHIP_FINISH_CEL -to $ICC_METAL_FILL_CEL
open_mw_cel $ICC_METAL_FILL_CEL

source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl
source -echo common_route_si_settings_zrt_icc.tcl 

if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}


#-----------------------------------------------------------------------------
# Real Metal Fill Extraction
#-----------------------------------------------------------------------------

# Can be set to FLOATING|GROUNDED when required. Default: AUTO.
if {$ADD_METAL_FILL != "NONE"} {
    set_extraction_options -real_metalfill_extraction FLOATING
    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
    }


#-----------------------------------------------------------------------------
# Metal Fill
#-----------------------------------------------------------------------------

# Note :
# Use insert_metal_filler for technology nodes 65nm and above.
# Use signoff_metal_fill for technology nodes 45nm and below.


# For technology nodes 65nm and above.
if {$ADD_METAL_FILL == "ICC"} {
    # Timing driven metal fill.
    if {$ICC_METAL_FILL_TIMING_DRIVEN} {
        set_extraction_options -real_metalfill_extraction NONE
        insert_metal_filler -routing_space $ICC_METAL_FILL_SPACE -timing_driven
        } \
    else {
        insert_metal_filler -routing_space $ICC_METAL_FILL_SPACE
        }

    set_extraction_options -real_metalfill_extraction FLOATING
    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
    }


# For technology nodes 45nm and below.
if {$ADD_METAL_FILL == "ICV" } {
    if {[file exists [which $SIGNOFF_FILL_RUNSET]] } {
        set_physical_signoff_options -exec_cmd icv -fill_runset [which $SIGNOFF_FILL_RUNSET]
        }

    if {$SIGNOFF_MAPFILE != ""} {set_physical_signoff_options -mapfile [which $SIGNOFF_MAPFILE]}

    report_physical_signoff_options

    if { !$SIGNOFF_METAL_FILL_TIMING_DRIVEN } {
        signoff_metal_fill 
        } \
    else {
        set_extraction_options -real_metalfill_extraction FLOATING

        # To help meet the required density in timing driven metal fill you
        # can also apply the following option to signoff_metal_fill:
        # -fix_density_errors true
        # Need to add minimum density rules to the tech file before adding
        # this option. Check with your foundry for the density rules. 
        signoff_metal_fill \
            -timing_preserve_setup_slack_threshold  $TIMING_PRESERVE_SLACK_SETUP \
            -timing_preserve_hold_slack_threshold   $TIMING_PRESERVE_SLACK_HOLD \
            -run_dir                                $REPORT_DIR_METAL_FILL/signoff_fill_run
        }

    set_extraction_options -real_metalfill_extraction FLOATING
    if {[check_error -verbose] != 0} {echo "RM-Error, flagging ..."}
    }


#-----------------------------------------------------------------------------
# Saving the Cell and Snapshot Creation
#-----------------------------------------------------------------------------

save_mw_cel -as $ICC_METAL_FILL_CEL


if {$ICC_REPORTING_EFFORT == "MED"} {
    redirect -tee -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.qor {report_qor}
    redirect -tee -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.qor -append {report_qor -summary}
    redirect      -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.con {report_constraints}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -tee -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.clock_tree {report_clock_tree -nosplit -summary}     ;# global skew report
    redirect      -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.clock_timing {report_clock_timing -nosplit -type skew} ;# local skew report
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.max.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay max} 
    redirect -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.min.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay min} 
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    redirect -tee -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.sum {report_design_physical -all -verbose}
    }

if {$ICC_REPORTING_EFFORT != "OFF"} {
    create_qor_snapshot -clock_tree -name $ICC_METAL_FILL_CEL
    redirect -file $REPORT_DIR_METAL_FILL/$ICC_METAL_FILL_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
    }


close_mw_lib


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

#exit

