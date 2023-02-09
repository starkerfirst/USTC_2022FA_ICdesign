###################################################################

# Created by write_sdc on Thu Feb  9 15:06:44 2023

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max WCCOM -max_library tcb018gbwp7twc_ccs\
                         -min BCCOM -min_library tcb018gbwp7tbc_ccs
set_max_transition 0.5 [current_design]
set_max_fanout 32 [current_design]
set_max_area 0
set_load -pin_load 0.103347 [get_ports {p_shift_out[7]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[6]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[5]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[4]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[3]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[2]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[1]}]
set_load -pin_load 0.103347 [get_ports {p_shift_out[0]}]
set_load -pin_load 0.103347 [get_ports ack_p]
set_max_transition 0.5 [get_ports clk_p]
set_propagated_clock [get_ports clk_p]
create_clock [get_ports clk_p]  -period 40  -waveform {0 20}
set_clock_uncertainty -setup 0.5  [get_clocks clk_p]
group_path -name FEEDTHROUGH  -from [list [get_ports rstn_p] [get_ports en_p] [get_ports {p_shift_in[7]}]   \
[get_ports {p_shift_in[6]}] [get_ports {p_shift_in[5]}] [get_ports             \
{p_shift_in[4]}] [get_ports {p_shift_in[3]}] [get_ports {p_shift_in[2]}]       \
[get_ports {p_shift_in[1]}] [get_ports {p_shift_in[0]}]]  -to [list [get_ports {p_shift_out[7]}] [get_ports {p_shift_out[6]}]           \
[get_ports {p_shift_out[5]}] [get_ports {p_shift_out[4]}] [get_ports           \
{p_shift_out[3]}] [get_ports {p_shift_out[2]}] [get_ports {p_shift_out[1]}]    \
[get_ports {p_shift_out[0]}] [get_ports ack_p]]
group_path -name REGIN  -from [list [get_ports rstn_p] [get_ports en_p] [get_ports {p_shift_in[7]}]   \
[get_ports {p_shift_in[6]}] [get_ports {p_shift_in[5]}] [get_ports             \
{p_shift_in[4]}] [get_ports {p_shift_in[3]}] [get_ports {p_shift_in[2]}]       \
[get_ports {p_shift_in[1]}] [get_ports {p_shift_in[0]}]]
group_path -name REGOUT  -to [list [get_ports {p_shift_out[7]}] [get_ports {p_shift_out[6]}]           \
[get_ports {p_shift_out[5]}] [get_ports {p_shift_out[4]}] [get_ports           \
{p_shift_out[3]}] [get_ports {p_shift_out[2]}] [get_ports {p_shift_out[1]}]    \
[get_ports {p_shift_out[0]}] [get_ports ack_p]]
set_input_delay -clock clk_p  12  [get_ports rstn_p]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[7]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[6]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[5]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[4]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[3]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[2]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[1]}]
set_output_delay -clock clk_p  12  [get_ports {p_shift_out[0]}]
set_output_delay -clock clk_p  12  [get_ports ack_p]
set_input_transition -max 0.5  [get_ports clk_p]
set_input_transition -min 0.5  [get_ports clk_p]
set_input_transition -max 0.5  [get_ports rstn_p]
set_input_transition -min 0.5  [get_ports rstn_p]
set_input_transition -max 0.5  [get_ports en_p]
set_input_transition -min 0.5  [get_ports en_p]
set_input_transition -max 0.5  [get_ports {p_shift_in[7]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[7]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[6]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[6]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[5]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[5]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[4]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[4]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[3]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[3]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[2]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[2]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[1]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[1]}]
set_input_transition -max 0.5  [get_ports {p_shift_in[0]}]
set_input_transition -min 0.5  [get_ports {p_shift_in[0]}]
set_timing_derate -late -net_delay  1.01 
set_timing_derate -early -net_delay  0.99 
set_timing_derate -late -cell_delay 1.01 
set_timing_derate -early -cell_delay 0.99 
