set _DCG_ICC2_DIR_ [file dirname [file normalize [info script]]]



##################################################################
# Read Design
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/clefia_128.v]} {
read_verilog ${_DCG_ICC2_DIR_}/clefia_128.v -top clefia_128
}



##################################################################
# Read settings
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/clefia_128.settings.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/clefia_128.settings.tcl 
}



##################################################################
# Read SDC
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/clefia_128.MCMM/top.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/clefia_128.MCMM/top.tcl 
}



##################################################################
# Read Floorplan
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/clefia_128.floorplan/floorplan.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/clefia_128.floorplan/floorplan.tcl 
}



##################################################################
# Read scan DEF
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/clefia_128.scan.def]} {
read_def ${_DCG_ICC2_DIR_}/clefia_128.scan.def 
}



