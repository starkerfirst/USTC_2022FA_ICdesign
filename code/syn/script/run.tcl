#prepare
source script/dc_setup.tcl
analyze -format verilog $RTL_SOURCE_FILES
elaborate systolic_array_wrapper
link

#optimize and report
create_clock -period 10 [get_ports clk]
compile_ultra
