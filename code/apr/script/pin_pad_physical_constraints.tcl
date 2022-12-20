

#-----------------------------------------------------------------------------
# Pad Locations
#-----------------------------------------------------------------------------

# Corners.
set_pad_physical_constraints -pad_name "u_pad_corner_ul"    -side 1
set_pad_physical_constraints -pad_name "u_pad_corner_ur"    -side 2
set_pad_physical_constraints -pad_name "u_pad_corner_lr"    -side 3
set_pad_physical_constraints -pad_name "u_pad_corner_ll"    -side 4

# Left side.
set_pad_physical_constraints -pad_name "u_pad_data_out_6"   -side 1 -order 18 -min_left_iospace 1.5 -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_7"   -side 1 -order 17 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_0"       -side 1 -order 16 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_0"       -side 1 -order 15 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_0"       -side 1 -order 14 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_8"   -side 1 -order 13 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_9"   -side 1 -order 12 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_10"  -side 1 -order 11 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_11"  -side 1 -order 10 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_12"  -side 1 -order  9 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_13"  -side 1 -order  8 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_14"  -side 1 -order  7 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_15"  -side 1 -order  6 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_1"       -side 1 -order  5 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_1"       -side 1 -order  4 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_1"       -side 1 -order  3 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_16"  -side 1 -order  2 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_out_17"  -side 1 -order  1 -min_left_iospace 1   -min_right_iospace 1.5

# Right side.
set_pad_physical_constraints -pad_name "u_pad_addr_4"       -side 3 -order  1 -min_left_iospace 1   -min_right_iospace 1.5
set_pad_physical_constraints -pad_name "u_pad_addr_5"       -side 3 -order  2 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_addr_6"       -side 3 -order  3 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_addr_7"       -side 3 -order  4 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_6"       -side 3 -order  5 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_6"       -side 3 -order  6 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_6"       -side 3 -order  7 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_0"    -side 3 -order  8 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_1"    -side 3 -order  9 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_2"    -side 3 -order 10 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_3"    -side 3 -order 11 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_4"    -side 3 -order 12 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_5"    -side 3 -order 13 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_6"    -side 3 -order 14 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_data_in_7"    -side 3 -order 15 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd1_7"       -side 3 -order 16 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vss3_7"       -side 3 -order 17 -min_left_iospace 1   -min_right_iospace 1
set_pad_physical_constraints -pad_name "u_pad_vdd2_7"       -side 3 -order 18 -min_left_iospace 1.5 -min_right_iospace 1

# Bottom side.
set_pad_physical_constraints -pad_name "u_pad_data_out_18"  -side 4 -order  1 -min_left_iospace 4   -min_right_iospace 29
set_pad_physical_constraints -pad_name "u_pad_data_out_19"  -side 4 -order  2 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_20"  -side 4 -order  3 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_21"  -side 4 -order  4 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_22"  -side 4 -order  5 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_23"  -side 4 -order  6 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_2"       -side 4 -order  7 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_2"       -side 4 -order  8 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_2"       -side 4 -order  9 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_24"  -side 4 -order 10 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_25"  -side 4 -order 11 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_26"  -side 4 -order 12 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_27"  -side 4 -order 13 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_28"  -side 4 -order 14 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_29"  -side 4 -order 15 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_30"  -side 4 -order 16 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_31"  -side 4 -order 17 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_3"       -side 4 -order 18 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_3"       -side 4 -order 19 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_3"       -side 4 -order 20 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_sclk"         -side 4 -order 21 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_reset_n"      -side 4 -order 22 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_csb"          -side 4 -order 23 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_sio1"         -side 4 -order 24 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_sio2"         -side 4 -order 25 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_4"       -side 4 -order 26 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_4"       -side 4 -order 27 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_4"       -side 4 -order 28 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_debug_en"     -side 4 -order 29 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_wr"           -side 4 -order 30 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_rst_n"        -side 4 -order 31 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_clk"          -side 4 -order 32 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_5"       -side 4 -order 33 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_5"       -side 4 -order 34 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_5"       -side 4 -order 35 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_addr_0"       -side 4 -order 36 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_addr_1"       -side 4 -order 37 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_addr_2"       -side 4 -order 38 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_addr_3"       -side 4 -order 39 -min_left_iospace 29  -min_right_iospace 4

# Top side.
set_pad_physical_constraints -pad_name "u_pad_data_in_8"    -side 2 -order 39 -min_left_iospace 29  -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_9"    -side 2 -order 38 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_10"   -side 2 -order 37 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_11"   -side 2 -order 36 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_12"   -side 2 -order 35 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_13"   -side 2 -order 34 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_14"   -side 2 -order 33 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_15"   -side 2 -order 32 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_8"       -side 2 -order 31 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_8"       -side 2 -order 30 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_8"       -side 2 -order 29 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_16"   -side 2 -order 28 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_17"   -side 2 -order 27 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_18"   -side 2 -order 26 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_19"   -side 2 -order 25 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_20"   -side 2 -order 24 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_21"   -side 2 -order 23 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_22"   -side 2 -order 22 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_23"   -side 2 -order 21 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_9"       -side 2 -order 20 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_9"       -side 2 -order 19 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_9"       -side 2 -order 18 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_24"   -side 2 -order 17 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_25"   -side 2 -order 16 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_26"   -side 2 -order 15 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_27"   -side 2 -order 14 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_28"   -side 2 -order 13 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_29"   -side 2 -order 12 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_30"   -side 2 -order 11 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_in_31"   -side 2 -order 10 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd1_10"      -side 2 -order  9 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vss3_10"      -side 2 -order  8 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_vdd2_10"      -side 2 -order  7 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_0"   -side 2 -order  6 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_1"   -side 2 -order  5 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_2"   -side 2 -order  4 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_3"   -side 2 -order  3 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_4"   -side 2 -order  2 -min_left_iospace 4   -min_right_iospace 4
set_pad_physical_constraints -pad_name "u_pad_data_out_5"   -side 2 -order  1 -min_left_iospace 4   -min_right_iospace 29
