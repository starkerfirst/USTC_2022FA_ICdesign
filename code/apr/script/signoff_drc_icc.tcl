#-----------------------------------------------------------------------------
# signoff_drc_icc.tcl:
#     Signoff DRC.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl 

open_mw_cel $ICC_METAL_FILL_CEL -lib $MW_DESIGN_LIBRARY

# Signoff DRC.
if {[file exists [which $SIGNOFF_DRC_RUNSET]] } {

    set_physical_signoff_options -exec_cmd icv -drc_runset [which $SIGNOFF_DRC_RUNSET]

    if {$SIGNOFF_MAPFILE != ""} {
        set_physical_signoff_options -mapfile [which $SIGNOFF_MAPFILE]
        }
  
    report_physical_signoff_options
    signoff_drc -run_dir $REPORT_DIR/signoff_drc_run

    }


# Auto DRC Repair (ADR).
# When routing DRC is within a reasonable range, you can perform ADR to
# resolve remaining DRC. Please refer to SolvNet #031882 for more information
# and how to generate config file for signoff_autofix_drc command.
# signoff_drc -run_dir {./signoff_drc_run} -ignore_child_cell_errors -read_cel_view 
# signoff_autofix_drc -incremental_level high -config_file $config_file -init_drc_error_db signoff_drc_run 
# save_mw_cel 
# signoff_drc -run_dir {./signoff_drc_run_after} -ignore_child_cell_errors -read_cel_view


close_mw_lib


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"


exit

