set _DCG_ICC2_DIR_ [file dirname [file normalize [info script]]]



##################################################################
# Read Design
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/systolic_array.v]} {
read_verilog ${_DCG_ICC2_DIR_}/systolic_array.v -top systolic_array
}



##################################################################
# Read settings
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/systolic_array.settings.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/systolic_array.settings.tcl 
}



##################################################################
# Read SDC
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/systolic_array.MCMM/top.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/systolic_array.MCMM/top.tcl 
}



##################################################################
# Read Floorplan
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/systolic_array.floorplan/floorplan.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/systolic_array.floorplan/floorplan.tcl 
}



##################################################################
# Read scan DEF
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/systolic_array.scan.def]} {
read_def ${_DCG_ICC2_DIR_}/systolic_array.scan.def 
}



