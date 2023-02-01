
##################################################################
# Created by :	Design Compiler (Topographical)
# Version    :	L-2016.03-SP5 Oct 14, 2016
# Date       :	Wed Dec 21 12:24:52 2022
# Command    :	write_icc2_files -environment_only	\
#		-o ./result/ICC2_files/systolic_array.settings.tcl 
##################################################################

##################################################################
# Set application variables for app 
##################################################################
set_app_var search_path "$search_path . ../milkyway ../src ../syn/result       \
./script ./tech/alib ./tech/icc ./tech/lib ./tech/tluplus                      \
../tech/TSMC180BCDGEN3 . /soft1/synopsys/synthesis/L-2016.03-SP5/libraries/syn \
/soft1/synopsys/synthesis/L-2016.03-SP5/minpower/syn                           \
/soft1/synopsys/synthesis/L-2016.03-SP5/dw/syn_ver                             \
/soft1/synopsys/synthesis/L-2016.03-SP5/dw/sim_ver "

##################################################################
# Set application variables for design 
##################################################################
set_app_options -name design.bus_delimiters -value {[]}

##################################################################
# Set application variables for mv 
##################################################################
set_app_options -name mv.cells.no_main_power_violations -value true 

##################################################################
# Set application variables for plan 
##################################################################
set_app_options -name plan.mtcmos.treat_voltage_area_as_blockage -value false 

##################################################################
# Set application variables for power 
##################################################################
set_app_options -name power.default_static_probability -value 0.5 
set_app_options -name power.default_toggle_rate -value 0.1 
set_app_options -name power.default_toggle_rate_reference_clock -value fastest

##################################################################
# Set application variables for time 
##################################################################
set_app_options -name time.enable_clock_to_data_analysis -value false 
set_app_options -name time.high_fanout_net_pin_capacitance -value 1.000000pF
set_app_options -name time.high_fanout_net_threshold -value 1000 
set_app_options -name time.use_special_default_path_groups -value false 
set_app_options -name time.remove_clock_reconvergence_pessimism -value false 
set_app_options -name time.gclock_source_network_num_master_registers -value   \
10000000 
set_app_options -name time.enable_non_sequential_checks -value false 
set_app_options -name time.edge_specific_source_latency -value false 
set_app_options -name time.disable_recovery_removal_checks -value true 
set_app_options -name time.disable_cond_default_arcs -value false 
set_app_options -name time.crpr_remove_clock_to_data_crp -value false 
set_app_options -name time.clock_reconvergence_pessimism -value normal 
set_app_options -name time.clock_gating_propagate_enable -value false 
set_app_options -name time.case_analysis_sequential_propagation -value never 

##################################################################
# Set application variables for place 
##################################################################
set_app_options -name place.coarse.channel_detect_mode -value false
set_app_options -name place.coarse.icg_auto_bound -value true 
set_app_options -name place.coarse.enable_enhanced_soft_blockages -value true 

##################################################################
# Set application variables for opt 
##################################################################
set_app_options -name opt.timing.effort -value low
set_app_options -name opt.port.eliminate_verilog_assign -value true
set_app_options -name place_opt.flow.do_spg -value true 

##################################################################
# Set attributes 
##################################################################

##################################################################
# Commands 
##################################################################

current_design systolic_array

##################################################################
