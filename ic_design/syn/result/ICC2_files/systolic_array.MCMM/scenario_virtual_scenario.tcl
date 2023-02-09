if { [namespace current] != {::63E4726F} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for scenario constraints on Thu Feb  9 \
12:11:27 2023

###################################################################

# Set the current_design #
current_design systolic_array


set_tlu_plus_files -max_tluplus                                                \
/bks2/PB20000328/ic_design/syn/tech/tluplus/t018lo_1p5m_typical.tluplus        \
-min_tluplus                                                                   \
/bks2/PB20000328/ic_design/syn/tech/tluplus/t018lo_1p5m_typical.tluplus        \
-tech2itf_map /bks2/PB20000328/ic_design/syn/tech/tluplus/star.map_5M 
set_operating_conditions -max WCCOM -max_library tcb018gbwp7twc_ccs\
                         -min BCCOM -min_library tcb018gbwp7tbc_ccs
set_max_fanout 32 [current_design]
set_max_transition 0.5 [current_design]
set_critical_range 0.1 [current_design]
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
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_8/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_7/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_6/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_5/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_4/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_3/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_2/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_1/C]
set_switching_activity -period 1 -toggle_rate 0 -static_probability 0          \
[get_pins u_pad_data_out_0/C]
create_clock [get_ports clk_p]  -period 40  -waveform {0 20}
set_clock_uncertainty -setup 0.5  [get_clocks clk_p]
group_path -name FEEDTHROUGH  -from [list [get_ports rstn_p] [get_ports en_p]  \
[get_ports {p_shift_in[7]}] [get_ports {p_shift_in[6]}] [get_ports             \
{p_shift_in[5]}] [get_ports {p_shift_in[4]}] [get_ports {p_shift_in[3]}]       \
[get_ports {p_shift_in[2]}] [get_ports {p_shift_in[1]}] [get_ports             \
{p_shift_in[0]}]]  -to [list [get_ports {p_shift_out[7]}] [get_ports           \
{p_shift_out[6]}] [get_ports {p_shift_out[5]}] [get_ports {p_shift_out[4]}]    \
[get_ports {p_shift_out[3]}] [get_ports {p_shift_out[2]}] [get_ports           \
{p_shift_out[1]}] [get_ports {p_shift_out[0]}] [get_ports ack_p]]
group_path -name REGIN  -from [list [get_ports rstn_p] [get_ports en_p]        \
[get_ports {p_shift_in[7]}] [get_ports {p_shift_in[6]}] [get_ports             \
{p_shift_in[5]}] [get_ports {p_shift_in[4]}] [get_ports {p_shift_in[3]}]       \
[get_ports {p_shift_in[2]}] [get_ports {p_shift_in[1]}] [get_ports             \
{p_shift_in[0]}]]
group_path -name REGOUT  -to [list [get_ports {p_shift_out[7]}] [get_ports     \
{p_shift_out[6]}] [get_ports {p_shift_out[5]}] [get_ports {p_shift_out[4]}]    \
[get_ports {p_shift_out[3]}] [get_ports {p_shift_out[2]}] [get_ports           \
{p_shift_out[1]}] [get_ports {p_shift_out[0]}] [get_ports ack_p]]
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
