###################################################################

# Created by write_sdc on Tue Dec 20 11:22:58 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_propagated_clock [get_ports clk]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_timing_derate -late -net_delay  1.01 
set_timing_derate -early -net_delay  0.99 
set_timing_derate -late -cell_delay 1.01 
set_timing_derate -early -cell_delay 0.99 
