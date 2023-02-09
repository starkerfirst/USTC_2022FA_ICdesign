#SA netlist
vcs -full64 -V  +v2k   -debug  -top systolic_array  -timescale=1ns/1ps  ../../apr/result/systolic_array.output.v    \
      systolic_array_sim_netlist.v 				\		
     /soft2/eda/tech/TSMC180BCDGEN3/library/std/tcb018gbwp7t_290a/verilog/tcb018gbwp7t.v  \
     iotpd018bcdnv5.v 	  | tee sim.log

./simv  | tee sim.rpt

