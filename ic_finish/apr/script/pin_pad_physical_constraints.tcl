#-----------------------------------------------------------------------------
# Pad Locations
#-----------------------------------------------------------------------------
# Corners.
set_pad_physical_constraints -pad_name "u_pad_corner_ul"    -side 1
set_pad_physical_constraints -pad_name "u_pad_corner_ur"    -side 2
set_pad_physical_constraints -pad_name "u_pad_corner_lr"    -side 3
set_pad_physical_constraints -pad_name "u_pad_corner_ll"    -side 4
 
# Left side.

set_pad_physical_constraints -pad_name "u_pad_data_out_1"   -side 1 -order 10 -min_left_iospace 5   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_2"   -side 1 -order 9 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_3"   -side 1 -order 8 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_0"       -side 1 -order 7 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_0"       -side 1 -order 6 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_0"       -side 1 -order 5 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_4"   -side 1 -order 4 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_5"   -side 1 -order 3 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_6"   -side 1 -order 2 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_7"   -side 1 -order 1 -min_left_iospace 1   -min_right_iospace 5

# Right side.

set_pad_physical_constraints -pad_name "u_pad_data_in_1"    -side 3 -order  10 -min_left_iospace 5   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_2"    -side 3 -order  9  -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_3"    -side 3 -order  8 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_1"       -side 3 -order  7 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_1"       -side 3 -order  6 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_1"       -side 3 -order  5 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_4"    -side 3 -order  4 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_5"    -side 3 -order  3 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_6"    -side 3 -order  2 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_7"    -side 3 -order  1 -min_left_iospace 1   -min_right_iospace 5

# Bottom side.
set_pad_physical_constraints -pad_name "u_pad_data_in_8"    -side 4 -order  10 -min_left_iospace 11   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_9"    -side 4 -order  9 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_10"    -side 4 -order  8  -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_11"    -side 4 -order  7 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_2"       -side 4 -order   6 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_2"       -side 4 -order   5 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_2"       -side 4 -order   4 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_12"    -side 4 -order  3 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_13"    -side 4 -order  2 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_14"    -side 4 -order  1 -min_left_iospace 1   -min_right_iospace 11


# Top side.
set_pad_physical_constraints -pad_name "u_pad_rst_n"         -side 2 -order 10 -min_left_iospace 11  -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_0"     -side 2 -order  9 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_15"    -side 2 -order  8 -min_left_iospace 1  -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_16"    -side 2 -order 7 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_3"       -side 2 -order 6 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_3"       -side 2 -order 5 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_3"       -side 2 -order 4 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_8"   -side 2 -order 3 -min_left_iospace 1 -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_0"   -side 2 -order 2 -min_left_iospace 1 -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_clk"   		-side 2 -order  1 -min_left_iospace 1   -min_right_iospace 11




