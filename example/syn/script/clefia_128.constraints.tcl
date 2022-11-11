
#-----------------------------------------------------------------------------
# Variables
#-----------------------------------------------------------------------------

set TOP_MODULE              clefia_128

set unit                    1

set jitter                  [expr 0.10*$unit]
set skew                    [expr 0.05*$unit]
set trans                   [expr 0.50*$unit]

set input_delay_percent     0.6
set output_delay_percent    0.6
set operating_condition     WCCOM

set DRIVE_CELL              "BUFFD1BWP7T"
set DRIVE_PIN               "Z"
set PIN_LOAD                [expr 32*[load_of tcb018gbwp7twc_ccs/BUFFD1BWP7T/I]]

set PAD_TRANS               0.5
set PAD_LOAD                50

set INPUT_CLK_LIST          [get_ports clk]
set INPUT_RST_LIST          [get_ports reset_n]

set CLK_PERIOD              [expr 40*$unit]


#-----------------------------------------------------------------------------
# Clocks
#-----------------------------------------------------------------------------

# Create clocks.
create_clock [get_ports clk] -name clk -period $CLK_PERIOD -waveform [list 0 [expr ${CLK_PERIOD}*0.5]]

# Create generated clocks.
# create_generated_clock -name genclk -source clk -divide_by 2 [get_pins DFF1/genclk]

# Create clock groups.
# The command below is equivalent to set_false_path between the clocks.
# set_clock_groups -logically_exclusive -group {clk1} -group {clk2} -group {clk3}


#-----------------------------------------------------------------------------
# Common Settings
#-----------------------------------------------------------------------------

set_clock_uncertainty   -setup 0.5 [all_clocks]
set_max_transition      $trans [list $INPUT_CLK_LIST]

set_ideal_network       [list $INPUT_CLK_LIST $INPUT_RST_LIST]

set_driving_cell        -no_design_rule -lib_cell $DRIVE_CELL -pin $DRIVE_PIN [all_inputs]
set_load                $PIN_LOAD [all_outputs]

# For pads only.
# set_input_transition    $PAD_TRANS   [$PAD_INPUT]
# set_load                $PAD_LOAD    [$PAD_OUTPUT]


#-----------------------------------------------------------------------------
# Clock Domain: clk
#-----------------------------------------------------------------------------

set MCLK_INPUT_LIST     [remove_from_collection [all_inputs] [list $INPUT_CLK_LIST]]
set MCLK_OUTPUT_LIST    [all_outputs]

# External delays.
set_input_delay  [expr $input_delay_percent  * $CLK_PERIOD] -clock clk [list $MCLK_INPUT_LIST]
set_output_delay [expr $output_delay_percent * $CLK_PERIOD] -clock clk [list $MCLK_OUTPUT_LIST]

# Specify external delays for some inputs/outputs here.
set_input_delay  [expr $input_delay_percent  * 0.5 * $CLK_PERIOD] -clock clk [list k]
set_output_delay [expr $output_delay_percent * 0.5 * $CLK_PERIOD] -clock clk [list c]

# Timing and constraint exceptions.
# set_false_path
# set_max_delay
# set_min_delay
# set_data_check
# set_multicycle_path
# set_dont_touch


#-----------------------------------------------------------------------------
# Common Settings
#-----------------------------------------------------------------------------

set operating_condition $operating_condition

set_max_area        0
set_max_fanout      32  $TOP_MODULE
set_max_transition  0.5 $TOP_MODULE

set_fix_multiple_port_nets -buffer_constants -all

set verilogout_show_unconnected_pins    true
set compile_allow_dw_hierarchical_pins  true
set verilogout_unconnected_prefix       "SYSNOPSYS_UNCONNECTED"
set register_duplicate                  true

set_critical_range  0.1 $TOP_MODULE
set_fix_hold            [all_clocks]


#-----------------------------------------------------------------------------
# The End
#-----------------------------------------------------------------------------
