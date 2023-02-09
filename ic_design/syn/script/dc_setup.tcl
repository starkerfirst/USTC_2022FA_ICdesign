source -echo -verbose ./script/common_setup.tcl
source -echo -verbose ./script/dc_setup_filenames.tcl

puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


#-----------------------------------------------------------------------------
# Setup Variables
#-----------------------------------------------------------------------------

# Removes new variable info messages.
set_app_var sh_new_variable_message     false

if {$synopsys_program_name == "dc_shell"}  {
    # Enable multicore optimization.
    # set_host_options -max_cores 4
    
    # Analyzed libraries location.
    set_app_var alib_library_analysis_path  ./tech/alib

    # Additional Design Compiler variables.
    }

# RTL file list.
set RTL_SOURCE_FILES    "../src/systolic_array/array.v \
                         ../src/systolic_array/controller.v \
                         ../src/systolic_array/pe.v \
                         ../src/systolic_array/shift_buffer.v \
                         ../src/systolic_array/systolic_array_wrapper_withctl.v \
						 ../src/lib.v \
						 ../src/systolic_array.v
						"

# Directories definition.
set REPORT_DIR          "./report"
set RESULT_DIR          "./result"
set MW_LIB_DIR          "../milkyway"
set WORK_DIR            "work"
set LOG_DIR             "./log"

file mkdir ${REPORT_DIR}
file mkdir ${RESULT_DIR}
file mkdir ${MW_LIB_DIR}
file mkdir ${WORK_DIR}
file mkdir ${LOG_DIR}

# Optimization options for following RM+ flows.
# hplp    - High Performance Low Power
# hc      - High Connectivity
# rtm_exp - Runtime Exploration
set OPTIMIZATION_FLOW           ""

# Search path setup.
set_app_var search_path         ". ${ADDITIONAL_SEARCH_PATH} $search_path"


#-----------------------------------------------------------------------------
# Library Setup
#-----------------------------------------------------------------------------

# Milkyway variable settings.
set mw_reference_library        ${MW_REFERENCE_LIB_DIRS}
set mw_design_library           ${MW_LIB_DIR}/${DCRM_MW_LIBRARY_NAME}
set mw_site_name_mapping        {{CORE unit} {Core unit} {core unit}}

if {$synopsys_program_name == "dc_shell"}  {
    # Set logical libraries.
    set_app_var target_library      ${TARGET_LIBRARY_FILES}
    set_app_var synthetic_library   dw_foundation.sldb
    
    if {$OPTIMIZATION_FLOW == "hplp"} {
        # Enable DesignWare minPower Components.
        # set_app_var synthetic_library "dw_minpower.sldb dw_foundation.sldb"
        }
    
    set_app_var link_library        "* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"
    
    # Set min libraries.
    foreach {max_library min_library} $MIN_LIBRARY_FILES {
        set_min_library $max_library -min_version $min_library
        }
    
    if {[shell_is_in_topographical_mode]} {
        # Activate the extended layer mode to support 4095 layers.
        # extend_mw_layers
    
        # Create new Milkyway design library if it doesn't already exist.
        if {![file isdirectory $mw_design_library ]} {
            create_mw_lib \
                $mw_design_library \
                -technology             $MW_TECH_FILE \
                -mw_reference_library   $mw_reference_library
            } \
        else {
        # If Milkyway design library already exists, ensure that it is
        # consistent with specified Milkyway reference libraries.
            set_mw_lib_reference \
                $mw_design_library \
                -mw_reference_library   $mw_reference_library
            }

        # Open Milkyway library.
        open_mw_lib     $mw_design_library
        check_library > ${REPORT_DIR}/${DCRM_CHECK_LIBRARY_REPORT}

        # Set TLU+ extraction files.
        set_tlu_plus_files \
            -max_tluplus    $TLUPLUS_MAX_FILE \
            -min_tluplus    $TLUPLUS_MIN_FILE \
            -tech2itf_map   $TLUPLUS_MAP_FILE

        check_tlu_plus_files
        }
    
    # Library Modifications.
    if {[file exists [which ${LIBRARY_DONT_USE_FILE}]]} {
        puts "RM-Info: Sourcing script file [which ${LIBRARY_DONT_USE_FILE}]\n"
        source -echo -verbose ${LIBRARY_DONT_USE_FILE}
        }
    }


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

