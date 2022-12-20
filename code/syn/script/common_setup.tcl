puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


#-----------------------------------------------------------------------------
# Common Variables
#-----------------------------------------------------------------------------

# Top-level design name
set DESIGN_NAME                 "systolic_array_wrapper"

# Path prefix for library/design data
set DESIGN_REF_DATA_PATH        ""


#-----------------------------------------------------------------------------
# Hierarchical Flow Design Variables
#-----------------------------------------------------------------------------

# Hierarchical block design names
set HIERARCHICAL_DESIGNS        ""

# Hierarchical block cell instance names
set HIERARCHICAL_CELLS          ""


#-----------------------------------------------------------------------------
# Library Setup Variables
#-----------------------------------------------------------------------------

# Additional search path
set ADDITIONAL_SEARCH_PATH      "../milkyway ../src ../syn/result ./script [glob ./tech/*]"

# Target technology logical libraries
set TARGET_LIBRARY_FILES        "tcb018gbwp7twc_ccs.db"

# Extra link logical libraries
set ADDITIONAL_LINK_LIB_FILES   ""

# List of max min library pairs
set MIN_LIBRARY_FILES           "tcb018gbwp7twc_ccs.db tcb018gbwp7tbc_ccs.db"


# Milkyway reference libraries and ICC ILMs
set MW_REFERENCE_LIB_DIRS       "tcb018gbwp7t"

# Reference control file to define Milkyway reference libraries
set MW_REFERENCE_CONTROL_FILE   ""

# Milkyway technology file
set MW_TECH_FILE                "./tech/icc/tsmc018_5lm.tf"

# TLU+ files
set TLUPLUS_MAP_FILE            "star.map_5M"
set TLUPLUS_MAX_FILE            "t018lo_1p5m_typical.tluplus"
set TLUPLUS_MIN_FILE            "t018lo_1p5m_typical.tluplus"

# Routing layers
set MIN_ROUTING_LAYER           "METAL1"
set MAX_ROUTING_LAYER           "METAL4"

# Tcl file with library modifications for dont_use
set LIBRARY_DONT_USE_FILE                   ""
set LIBRARY_DONT_USE_PRE_COMPILE_LIST       ""
set LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST  ""


#-----------------------------------------------------------------------------
# Multivoltage Common Variables
#-----------------------------------------------------------------------------

# Power domain 1: name, coordinates, and power net
set PD1                          ""
set VA1_COORDINATES              {}
set MW_POWER_NET1                "VDD1"

# Power domain 2: name, coordinates, and power net
set PD2                          ""
set VA2_COORDINATES              {}
set MW_POWER_NET2                "VDD2"

# Power domain 3: name, coordinates, and power net
set PD3                          ""
set VA3_COORDINATES              {}
set MW_POWER_NET3                "VDD3"

# Power domain 4: name, coordinates, and power net
set PD4                          ""
set VA4_COORDINATES              {}
set MW_POWER_NET4                "VDD4"


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

