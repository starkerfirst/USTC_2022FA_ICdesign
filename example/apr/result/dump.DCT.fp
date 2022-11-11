###################################################################

# Created by write_floorplan on Sun Jan  2 03:34:26 2022

###################################################################
undo_config -disable

remove_die_area 

create_die_area  \
	-poly {	{0.000 0.000} {495.280 0.000} {495.280 494.720} {0.000 494.720} {0.000 0.000}} 
set oldSnapState [set_object_snap_type -enabled false]

#********************
#    Terminals     
# obj#: 388 
# objects are in clockwise ordering 
#********************

remove_terminal *

create_terminal \
	-name {clk} \
	-port {clk} \
	-layer METAL2 \
	-bbox {{3.340 494.440} {3.620 494.720}}

set obj [get_terminal {"clk"}]
set_attribute -quiet $obj layer  METAL2
set_attribute -quiet $obj owner_port  {clk}
set_attribute -quiet $obj bbox {{3.340 494.440} {3.620 494.720}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Up
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {reset_n} \
	-port {reset_n} \
	-layer METAL2 \
	-bbox {{491.660 494.440} {491.940 494.720}}

set obj [get_terminal {"reset_n"}]
set_attribute -quiet $obj layer  METAL2
set_attribute -quiet $obj owner_port  {reset_n}
set_attribute -quiet $obj bbox {{491.660 494.440} {491.940 494.720}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Up
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[0]} \
	-port {c[0]} \
	-layer METAL3 \
	-bbox {{495.000 3.340} {495.280 3.620}}

set obj [get_terminal {"c[0]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[0]}
set_attribute -quiet $obj bbox {{495.000 3.340} {495.280 3.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[1]} \
	-port {c[1]} \
	-layer METAL3 \
	-bbox {{495.000 4.460} {495.280 4.740}}

set obj [get_terminal {"c[1]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[1]}
set_attribute -quiet $obj bbox {{495.000 4.460} {495.280 4.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[2]} \
	-port {c[2]} \
	-layer METAL3 \
	-bbox {{495.000 6.140} {495.280 6.420}}

set obj [get_terminal {"c[2]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[2]}
set_attribute -quiet $obj bbox {{495.000 6.140} {495.280 6.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[3]} \
	-port {c[3]} \
	-layer METAL3 \
	-bbox {{495.000 7.260} {495.280 7.540}}

set obj [get_terminal {"c[3]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[3]}
set_attribute -quiet $obj bbox {{495.000 7.260} {495.280 7.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[4]} \
	-port {c[4]} \
	-layer METAL3 \
	-bbox {{495.000 8.380} {495.280 8.660}}

set obj [get_terminal {"c[4]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[4]}
set_attribute -quiet $obj bbox {{495.000 8.380} {495.280 8.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[5]} \
	-port {c[5]} \
	-layer METAL3 \
	-bbox {{495.000 9.500} {495.280 9.780}}

set obj [get_terminal {"c[5]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[5]}
set_attribute -quiet $obj bbox {{495.000 9.500} {495.280 9.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[6]} \
	-port {c[6]} \
	-layer METAL3 \
	-bbox {{495.000 11.180} {495.280 11.460}}

set obj [get_terminal {"c[6]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[6]}
set_attribute -quiet $obj bbox {{495.000 11.180} {495.280 11.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[7]} \
	-port {c[7]} \
	-layer METAL3 \
	-bbox {{495.000 12.300} {495.280 12.580}}

set obj [get_terminal {"c[7]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[7]}
set_attribute -quiet $obj bbox {{495.000 12.300} {495.280 12.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[8]} \
	-port {c[8]} \
	-layer METAL3 \
	-bbox {{495.000 13.420} {495.280 13.700}}

set obj [get_terminal {"c[8]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[8]}
set_attribute -quiet $obj bbox {{495.000 13.420} {495.280 13.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[9]} \
	-port {c[9]} \
	-layer METAL3 \
	-bbox {{495.000 14.540} {495.280 14.820}}

set obj [get_terminal {"c[9]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[9]}
set_attribute -quiet $obj bbox {{495.000 14.540} {495.280 14.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[10]} \
	-port {c[10]} \
	-layer METAL3 \
	-bbox {{495.000 16.220} {495.280 16.500}}

set obj [get_terminal {"c[10]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[10]}
set_attribute -quiet $obj bbox {{495.000 16.220} {495.280 16.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[11]} \
	-port {c[11]} \
	-layer METAL3 \
	-bbox {{495.000 17.340} {495.280 17.620}}

set obj [get_terminal {"c[11]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[11]}
set_attribute -quiet $obj bbox {{495.000 17.340} {495.280 17.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[12]} \
	-port {c[12]} \
	-layer METAL3 \
	-bbox {{495.000 18.460} {495.280 18.740}}

set obj [get_terminal {"c[12]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[12]}
set_attribute -quiet $obj bbox {{495.000 18.460} {495.280 18.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[13]} \
	-port {c[13]} \
	-layer METAL3 \
	-bbox {{495.000 19.580} {495.280 19.860}}

set obj [get_terminal {"c[13]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[13]}
set_attribute -quiet $obj bbox {{495.000 19.580} {495.280 19.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[14]} \
	-port {c[14]} \
	-layer METAL3 \
	-bbox {{495.000 21.260} {495.280 21.540}}

set obj [get_terminal {"c[14]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[14]}
set_attribute -quiet $obj bbox {{495.000 21.260} {495.280 21.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[15]} \
	-port {c[15]} \
	-layer METAL3 \
	-bbox {{495.000 22.380} {495.280 22.660}}

set obj [get_terminal {"c[15]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[15]}
set_attribute -quiet $obj bbox {{495.000 22.380} {495.280 22.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[16]} \
	-port {c[16]} \
	-layer METAL3 \
	-bbox {{495.000 23.500} {495.280 23.780}}

set obj [get_terminal {"c[16]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[16]}
set_attribute -quiet $obj bbox {{495.000 23.500} {495.280 23.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[17]} \
	-port {c[17]} \
	-layer METAL3 \
	-bbox {{495.000 24.620} {495.280 24.900}}

set obj [get_terminal {"c[17]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[17]}
set_attribute -quiet $obj bbox {{495.000 24.620} {495.280 24.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[18]} \
	-port {c[18]} \
	-layer METAL3 \
	-bbox {{495.000 26.300} {495.280 26.580}}

set obj [get_terminal {"c[18]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[18]}
set_attribute -quiet $obj bbox {{495.000 26.300} {495.280 26.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[19]} \
	-port {c[19]} \
	-layer METAL3 \
	-bbox {{495.000 27.420} {495.280 27.700}}

set obj [get_terminal {"c[19]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[19]}
set_attribute -quiet $obj bbox {{495.000 27.420} {495.280 27.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[20]} \
	-port {c[20]} \
	-layer METAL3 \
	-bbox {{495.000 28.540} {495.280 28.820}}

set obj [get_terminal {"c[20]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[20]}
set_attribute -quiet $obj bbox {{495.000 28.540} {495.280 28.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[21]} \
	-port {c[21]} \
	-layer METAL3 \
	-bbox {{495.000 29.660} {495.280 29.940}}

set obj [get_terminal {"c[21]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[21]}
set_attribute -quiet $obj bbox {{495.000 29.660} {495.280 29.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[22]} \
	-port {c[22]} \
	-layer METAL3 \
	-bbox {{495.000 31.340} {495.280 31.620}}

set obj [get_terminal {"c[22]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[22]}
set_attribute -quiet $obj bbox {{495.000 31.340} {495.280 31.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[23]} \
	-port {c[23]} \
	-layer METAL3 \
	-bbox {{495.000 32.460} {495.280 32.740}}

set obj [get_terminal {"c[23]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[23]}
set_attribute -quiet $obj bbox {{495.000 32.460} {495.280 32.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[24]} \
	-port {c[24]} \
	-layer METAL3 \
	-bbox {{495.000 33.580} {495.280 33.860}}

set obj [get_terminal {"c[24]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[24]}
set_attribute -quiet $obj bbox {{495.000 33.580} {495.280 33.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[25]} \
	-port {c[25]} \
	-layer METAL3 \
	-bbox {{495.000 35.260} {495.280 35.540}}

set obj [get_terminal {"c[25]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[25]}
set_attribute -quiet $obj bbox {{495.000 35.260} {495.280 35.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[26]} \
	-port {c[26]} \
	-layer METAL3 \
	-bbox {{495.000 36.380} {495.280 36.660}}

set obj [get_terminal {"c[26]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[26]}
set_attribute -quiet $obj bbox {{495.000 36.380} {495.280 36.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[27]} \
	-port {c[27]} \
	-layer METAL3 \
	-bbox {{495.000 37.500} {495.280 37.780}}

set obj [get_terminal {"c[27]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[27]}
set_attribute -quiet $obj bbox {{495.000 37.500} {495.280 37.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[28]} \
	-port {c[28]} \
	-layer METAL3 \
	-bbox {{495.000 38.620} {495.280 38.900}}

set obj [get_terminal {"c[28]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[28]}
set_attribute -quiet $obj bbox {{495.000 38.620} {495.280 38.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[29]} \
	-port {c[29]} \
	-layer METAL3 \
	-bbox {{495.000 40.300} {495.280 40.580}}

set obj [get_terminal {"c[29]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[29]}
set_attribute -quiet $obj bbox {{495.000 40.300} {495.280 40.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[30]} \
	-port {c[30]} \
	-layer METAL3 \
	-bbox {{495.000 41.420} {495.280 41.700}}

set obj [get_terminal {"c[30]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[30]}
set_attribute -quiet $obj bbox {{495.000 41.420} {495.280 41.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[31]} \
	-port {c[31]} \
	-layer METAL3 \
	-bbox {{495.000 42.540} {495.280 42.820}}

set obj [get_terminal {"c[31]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[31]}
set_attribute -quiet $obj bbox {{495.000 42.540} {495.280 42.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[32]} \
	-port {c[32]} \
	-layer METAL3 \
	-bbox {{495.000 43.660} {495.280 43.940}}

set obj [get_terminal {"c[32]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[32]}
set_attribute -quiet $obj bbox {{495.000 43.660} {495.280 43.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[33]} \
	-port {c[33]} \
	-layer METAL3 \
	-bbox {{495.000 45.340} {495.280 45.620}}

set obj [get_terminal {"c[33]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[33]}
set_attribute -quiet $obj bbox {{495.000 45.340} {495.280 45.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[34]} \
	-port {c[34]} \
	-layer METAL3 \
	-bbox {{495.000 46.460} {495.280 46.740}}

set obj [get_terminal {"c[34]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[34]}
set_attribute -quiet $obj bbox {{495.000 46.460} {495.280 46.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[35]} \
	-port {c[35]} \
	-layer METAL3 \
	-bbox {{495.000 47.580} {495.280 47.860}}

set obj [get_terminal {"c[35]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[35]}
set_attribute -quiet $obj bbox {{495.000 47.580} {495.280 47.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[36]} \
	-port {c[36]} \
	-layer METAL3 \
	-bbox {{495.000 48.700} {495.280 48.980}}

set obj [get_terminal {"c[36]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[36]}
set_attribute -quiet $obj bbox {{495.000 48.700} {495.280 48.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[37]} \
	-port {c[37]} \
	-layer METAL3 \
	-bbox {{495.000 50.380} {495.280 50.660}}

set obj [get_terminal {"c[37]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[37]}
set_attribute -quiet $obj bbox {{495.000 50.380} {495.280 50.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[38]} \
	-port {c[38]} \
	-layer METAL3 \
	-bbox {{495.000 51.500} {495.280 51.780}}

set obj [get_terminal {"c[38]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[38]}
set_attribute -quiet $obj bbox {{495.000 51.500} {495.280 51.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[39]} \
	-port {c[39]} \
	-layer METAL3 \
	-bbox {{495.000 52.620} {495.280 52.900}}

set obj [get_terminal {"c[39]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[39]}
set_attribute -quiet $obj bbox {{495.000 52.620} {495.280 52.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[40]} \
	-port {c[40]} \
	-layer METAL3 \
	-bbox {{495.000 53.740} {495.280 54.020}}

set obj [get_terminal {"c[40]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[40]}
set_attribute -quiet $obj bbox {{495.000 53.740} {495.280 54.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[41]} \
	-port {c[41]} \
	-layer METAL3 \
	-bbox {{495.000 55.420} {495.280 55.700}}

set obj [get_terminal {"c[41]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[41]}
set_attribute -quiet $obj bbox {{495.000 55.420} {495.280 55.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[42]} \
	-port {c[42]} \
	-layer METAL3 \
	-bbox {{495.000 56.540} {495.280 56.820}}

set obj [get_terminal {"c[42]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[42]}
set_attribute -quiet $obj bbox {{495.000 56.540} {495.280 56.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[43]} \
	-port {c[43]} \
	-layer METAL3 \
	-bbox {{495.000 57.660} {495.280 57.940}}

set obj [get_terminal {"c[43]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[43]}
set_attribute -quiet $obj bbox {{495.000 57.660} {495.280 57.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[44]} \
	-port {c[44]} \
	-layer METAL3 \
	-bbox {{495.000 58.780} {495.280 59.060}}

set obj [get_terminal {"c[44]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[44]}
set_attribute -quiet $obj bbox {{495.000 58.780} {495.280 59.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[45]} \
	-port {c[45]} \
	-layer METAL3 \
	-bbox {{495.000 60.460} {495.280 60.740}}

set obj [get_terminal {"c[45]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[45]}
set_attribute -quiet $obj bbox {{495.000 60.460} {495.280 60.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[46]} \
	-port {c[46]} \
	-layer METAL3 \
	-bbox {{495.000 61.580} {495.280 61.860}}

set obj [get_terminal {"c[46]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[46]}
set_attribute -quiet $obj bbox {{495.000 61.580} {495.280 61.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[47]} \
	-port {c[47]} \
	-layer METAL3 \
	-bbox {{495.000 62.700} {495.280 62.980}}

set obj [get_terminal {"c[47]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[47]}
set_attribute -quiet $obj bbox {{495.000 62.700} {495.280 62.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[48]} \
	-port {c[48]} \
	-layer METAL3 \
	-bbox {{495.000 64.380} {495.280 64.660}}

set obj [get_terminal {"c[48]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[48]}
set_attribute -quiet $obj bbox {{495.000 64.380} {495.280 64.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[49]} \
	-port {c[49]} \
	-layer METAL3 \
	-bbox {{495.000 65.500} {495.280 65.780}}

set obj [get_terminal {"c[49]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[49]}
set_attribute -quiet $obj bbox {{495.000 65.500} {495.280 65.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[50]} \
	-port {c[50]} \
	-layer METAL3 \
	-bbox {{495.000 66.620} {495.280 66.900}}

set obj [get_terminal {"c[50]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[50]}
set_attribute -quiet $obj bbox {{495.000 66.620} {495.280 66.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[51]} \
	-port {c[51]} \
	-layer METAL3 \
	-bbox {{495.000 67.740} {495.280 68.020}}

set obj [get_terminal {"c[51]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[51]}
set_attribute -quiet $obj bbox {{495.000 67.740} {495.280 68.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[52]} \
	-port {c[52]} \
	-layer METAL3 \
	-bbox {{495.000 69.420} {495.280 69.700}}

set obj [get_terminal {"c[52]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[52]}
set_attribute -quiet $obj bbox {{495.000 69.420} {495.280 69.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[53]} \
	-port {c[53]} \
	-layer METAL3 \
	-bbox {{495.000 70.540} {495.280 70.820}}

set obj [get_terminal {"c[53]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[53]}
set_attribute -quiet $obj bbox {{495.000 70.540} {495.280 70.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[54]} \
	-port {c[54]} \
	-layer METAL3 \
	-bbox {{495.000 71.660} {495.280 71.940}}

set obj [get_terminal {"c[54]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[54]}
set_attribute -quiet $obj bbox {{495.000 71.660} {495.280 71.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[55]} \
	-port {c[55]} \
	-layer METAL3 \
	-bbox {{495.000 72.780} {495.280 73.060}}

set obj [get_terminal {"c[55]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[55]}
set_attribute -quiet $obj bbox {{495.000 72.780} {495.280 73.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[56]} \
	-port {c[56]} \
	-layer METAL3 \
	-bbox {{495.000 74.460} {495.280 74.740}}

set obj [get_terminal {"c[56]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[56]}
set_attribute -quiet $obj bbox {{495.000 74.460} {495.280 74.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[57]} \
	-port {c[57]} \
	-layer METAL3 \
	-bbox {{495.000 75.580} {495.280 75.860}}

set obj [get_terminal {"c[57]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[57]}
set_attribute -quiet $obj bbox {{495.000 75.580} {495.280 75.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[58]} \
	-port {c[58]} \
	-layer METAL3 \
	-bbox {{495.000 76.700} {495.280 76.980}}

set obj [get_terminal {"c[58]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[58]}
set_attribute -quiet $obj bbox {{495.000 76.700} {495.280 76.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[59]} \
	-port {c[59]} \
	-layer METAL3 \
	-bbox {{495.000 77.820} {495.280 78.100}}

set obj [get_terminal {"c[59]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[59]}
set_attribute -quiet $obj bbox {{495.000 77.820} {495.280 78.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[60]} \
	-port {c[60]} \
	-layer METAL3 \
	-bbox {{495.000 79.500} {495.280 79.780}}

set obj [get_terminal {"c[60]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[60]}
set_attribute -quiet $obj bbox {{495.000 79.500} {495.280 79.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[61]} \
	-port {c[61]} \
	-layer METAL3 \
	-bbox {{495.000 80.620} {495.280 80.900}}

set obj [get_terminal {"c[61]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[61]}
set_attribute -quiet $obj bbox {{495.000 80.620} {495.280 80.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[62]} \
	-port {c[62]} \
	-layer METAL3 \
	-bbox {{495.000 81.740} {495.280 82.020}}

set obj [get_terminal {"c[62]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[62]}
set_attribute -quiet $obj bbox {{495.000 81.740} {495.280 82.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[63]} \
	-port {c[63]} \
	-layer METAL3 \
	-bbox {{495.000 82.860} {495.280 83.140}}

set obj [get_terminal {"c[63]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[63]}
set_attribute -quiet $obj bbox {{495.000 82.860} {495.280 83.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[64]} \
	-port {c[64]} \
	-layer METAL3 \
	-bbox {{495.000 84.540} {495.280 84.820}}

set obj [get_terminal {"c[64]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[64]}
set_attribute -quiet $obj bbox {{495.000 84.540} {495.280 84.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[65]} \
	-port {c[65]} \
	-layer METAL3 \
	-bbox {{495.000 85.660} {495.280 85.940}}

set obj [get_terminal {"c[65]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[65]}
set_attribute -quiet $obj bbox {{495.000 85.660} {495.280 85.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[66]} \
	-port {c[66]} \
	-layer METAL3 \
	-bbox {{495.000 86.780} {495.280 87.060}}

set obj [get_terminal {"c[66]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[66]}
set_attribute -quiet $obj bbox {{495.000 86.780} {495.280 87.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[67]} \
	-port {c[67]} \
	-layer METAL3 \
	-bbox {{495.000 87.900} {495.280 88.180}}

set obj [get_terminal {"c[67]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[67]}
set_attribute -quiet $obj bbox {{495.000 87.900} {495.280 88.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[68]} \
	-port {c[68]} \
	-layer METAL3 \
	-bbox {{495.000 89.580} {495.280 89.860}}

set obj [get_terminal {"c[68]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[68]}
set_attribute -quiet $obj bbox {{495.000 89.580} {495.280 89.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[69]} \
	-port {c[69]} \
	-layer METAL3 \
	-bbox {{495.000 90.700} {495.280 90.980}}

set obj [get_terminal {"c[69]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[69]}
set_attribute -quiet $obj bbox {{495.000 90.700} {495.280 90.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[70]} \
	-port {c[70]} \
	-layer METAL3 \
	-bbox {{495.000 91.820} {495.280 92.100}}

set obj [get_terminal {"c[70]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[70]}
set_attribute -quiet $obj bbox {{495.000 91.820} {495.280 92.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[71]} \
	-port {c[71]} \
	-layer METAL3 \
	-bbox {{495.000 93.500} {495.280 93.780}}

set obj [get_terminal {"c[71]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[71]}
set_attribute -quiet $obj bbox {{495.000 93.500} {495.280 93.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[72]} \
	-port {c[72]} \
	-layer METAL3 \
	-bbox {{495.000 94.620} {495.280 94.900}}

set obj [get_terminal {"c[72]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[72]}
set_attribute -quiet $obj bbox {{495.000 94.620} {495.280 94.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[73]} \
	-port {c[73]} \
	-layer METAL3 \
	-bbox {{495.000 95.740} {495.280 96.020}}

set obj [get_terminal {"c[73]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[73]}
set_attribute -quiet $obj bbox {{495.000 95.740} {495.280 96.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[74]} \
	-port {c[74]} \
	-layer METAL3 \
	-bbox {{495.000 96.860} {495.280 97.140}}

set obj [get_terminal {"c[74]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[74]}
set_attribute -quiet $obj bbox {{495.000 96.860} {495.280 97.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[75]} \
	-port {c[75]} \
	-layer METAL3 \
	-bbox {{495.000 98.540} {495.280 98.820}}

set obj [get_terminal {"c[75]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[75]}
set_attribute -quiet $obj bbox {{495.000 98.540} {495.280 98.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[76]} \
	-port {c[76]} \
	-layer METAL3 \
	-bbox {{495.000 99.660} {495.280 99.940}}

set obj [get_terminal {"c[76]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[76]}
set_attribute -quiet $obj bbox {{495.000 99.660} {495.280 99.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[77]} \
	-port {c[77]} \
	-layer METAL3 \
	-bbox {{495.000 100.780} {495.280 101.060}}

set obj [get_terminal {"c[77]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[77]}
set_attribute -quiet $obj bbox {{495.000 100.780} {495.280 101.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[78]} \
	-port {c[78]} \
	-layer METAL3 \
	-bbox {{495.000 101.900} {495.280 102.180}}

set obj [get_terminal {"c[78]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[78]}
set_attribute -quiet $obj bbox {{495.000 101.900} {495.280 102.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[79]} \
	-port {c[79]} \
	-layer METAL3 \
	-bbox {{495.000 103.580} {495.280 103.860}}

set obj [get_terminal {"c[79]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[79]}
set_attribute -quiet $obj bbox {{495.000 103.580} {495.280 103.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[80]} \
	-port {c[80]} \
	-layer METAL3 \
	-bbox {{495.000 104.700} {495.280 104.980}}

set obj [get_terminal {"c[80]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[80]}
set_attribute -quiet $obj bbox {{495.000 104.700} {495.280 104.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[81]} \
	-port {c[81]} \
	-layer METAL3 \
	-bbox {{495.000 105.820} {495.280 106.100}}

set obj [get_terminal {"c[81]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[81]}
set_attribute -quiet $obj bbox {{495.000 105.820} {495.280 106.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[82]} \
	-port {c[82]} \
	-layer METAL3 \
	-bbox {{495.000 106.940} {495.280 107.220}}

set obj [get_terminal {"c[82]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[82]}
set_attribute -quiet $obj bbox {{495.000 106.940} {495.280 107.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[83]} \
	-port {c[83]} \
	-layer METAL3 \
	-bbox {{495.000 108.620} {495.280 108.900}}

set obj [get_terminal {"c[83]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[83]}
set_attribute -quiet $obj bbox {{495.000 108.620} {495.280 108.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[84]} \
	-port {c[84]} \
	-layer METAL3 \
	-bbox {{495.000 109.740} {495.280 110.020}}

set obj [get_terminal {"c[84]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[84]}
set_attribute -quiet $obj bbox {{495.000 109.740} {495.280 110.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[85]} \
	-port {c[85]} \
	-layer METAL3 \
	-bbox {{495.000 110.860} {495.280 111.140}}

set obj [get_terminal {"c[85]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[85]}
set_attribute -quiet $obj bbox {{495.000 110.860} {495.280 111.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[86]} \
	-port {c[86]} \
	-layer METAL3 \
	-bbox {{495.000 111.980} {495.280 112.260}}

set obj [get_terminal {"c[86]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[86]}
set_attribute -quiet $obj bbox {{495.000 111.980} {495.280 112.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[87]} \
	-port {c[87]} \
	-layer METAL3 \
	-bbox {{495.000 113.660} {495.280 113.940}}

set obj [get_terminal {"c[87]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[87]}
set_attribute -quiet $obj bbox {{495.000 113.660} {495.280 113.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[88]} \
	-port {c[88]} \
	-layer METAL3 \
	-bbox {{495.000 114.780} {495.280 115.060}}

set obj [get_terminal {"c[88]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[88]}
set_attribute -quiet $obj bbox {{495.000 114.780} {495.280 115.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[89]} \
	-port {c[89]} \
	-layer METAL3 \
	-bbox {{495.000 115.900} {495.280 116.180}}

set obj [get_terminal {"c[89]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[89]}
set_attribute -quiet $obj bbox {{495.000 115.900} {495.280 116.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[90]} \
	-port {c[90]} \
	-layer METAL3 \
	-bbox {{495.000 117.020} {495.280 117.300}}

set obj [get_terminal {"c[90]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[90]}
set_attribute -quiet $obj bbox {{495.000 117.020} {495.280 117.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[91]} \
	-port {c[91]} \
	-layer METAL3 \
	-bbox {{495.000 118.700} {495.280 118.980}}

set obj [get_terminal {"c[91]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[91]}
set_attribute -quiet $obj bbox {{495.000 118.700} {495.280 118.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[92]} \
	-port {c[92]} \
	-layer METAL3 \
	-bbox {{495.000 119.820} {495.280 120.100}}

set obj [get_terminal {"c[92]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[92]}
set_attribute -quiet $obj bbox {{495.000 119.820} {495.280 120.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[93]} \
	-port {c[93]} \
	-layer METAL3 \
	-bbox {{495.000 120.940} {495.280 121.220}}

set obj [get_terminal {"c[93]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[93]}
set_attribute -quiet $obj bbox {{495.000 120.940} {495.280 121.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[94]} \
	-port {c[94]} \
	-layer METAL3 \
	-bbox {{495.000 122.620} {495.280 122.900}}

set obj [get_terminal {"c[94]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[94]}
set_attribute -quiet $obj bbox {{495.000 122.620} {495.280 122.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[95]} \
	-port {c[95]} \
	-layer METAL3 \
	-bbox {{495.000 123.740} {495.280 124.020}}

set obj [get_terminal {"c[95]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[95]}
set_attribute -quiet $obj bbox {{495.000 123.740} {495.280 124.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[96]} \
	-port {c[96]} \
	-layer METAL3 \
	-bbox {{495.000 124.860} {495.280 125.140}}

set obj [get_terminal {"c[96]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[96]}
set_attribute -quiet $obj bbox {{495.000 124.860} {495.280 125.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[97]} \
	-port {c[97]} \
	-layer METAL3 \
	-bbox {{495.000 125.980} {495.280 126.260}}

set obj [get_terminal {"c[97]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[97]}
set_attribute -quiet $obj bbox {{495.000 125.980} {495.280 126.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[98]} \
	-port {c[98]} \
	-layer METAL3 \
	-bbox {{495.000 127.660} {495.280 127.940}}

set obj [get_terminal {"c[98]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[98]}
set_attribute -quiet $obj bbox {{495.000 127.660} {495.280 127.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[99]} \
	-port {c[99]} \
	-layer METAL3 \
	-bbox {{495.000 128.780} {495.280 129.060}}

set obj [get_terminal {"c[99]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[99]}
set_attribute -quiet $obj bbox {{495.000 128.780} {495.280 129.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[100]} \
	-port {c[100]} \
	-layer METAL3 \
	-bbox {{495.000 129.900} {495.280 130.180}}

set obj [get_terminal {"c[100]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[100]}
set_attribute -quiet $obj bbox {{495.000 129.900} {495.280 130.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[101]} \
	-port {c[101]} \
	-layer METAL3 \
	-bbox {{495.000 131.020} {495.280 131.300}}

set obj [get_terminal {"c[101]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[101]}
set_attribute -quiet $obj bbox {{495.000 131.020} {495.280 131.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[102]} \
	-port {c[102]} \
	-layer METAL3 \
	-bbox {{495.000 132.700} {495.280 132.980}}

set obj [get_terminal {"c[102]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[102]}
set_attribute -quiet $obj bbox {{495.000 132.700} {495.280 132.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[103]} \
	-port {c[103]} \
	-layer METAL3 \
	-bbox {{495.000 133.820} {495.280 134.100}}

set obj [get_terminal {"c[103]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[103]}
set_attribute -quiet $obj bbox {{495.000 133.820} {495.280 134.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[104]} \
	-port {c[104]} \
	-layer METAL3 \
	-bbox {{495.000 134.940} {495.280 135.220}}

set obj [get_terminal {"c[104]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[104]}
set_attribute -quiet $obj bbox {{495.000 134.940} {495.280 135.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[105]} \
	-port {c[105]} \
	-layer METAL3 \
	-bbox {{495.000 136.060} {495.280 136.340}}

set obj [get_terminal {"c[105]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[105]}
set_attribute -quiet $obj bbox {{495.000 136.060} {495.280 136.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[106]} \
	-port {c[106]} \
	-layer METAL3 \
	-bbox {{495.000 137.740} {495.280 138.020}}

set obj [get_terminal {"c[106]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[106]}
set_attribute -quiet $obj bbox {{495.000 137.740} {495.280 138.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[107]} \
	-port {c[107]} \
	-layer METAL3 \
	-bbox {{495.000 138.860} {495.280 139.140}}

set obj [get_terminal {"c[107]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[107]}
set_attribute -quiet $obj bbox {{495.000 138.860} {495.280 139.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[108]} \
	-port {c[108]} \
	-layer METAL3 \
	-bbox {{495.000 139.980} {495.280 140.260}}

set obj [get_terminal {"c[108]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[108]}
set_attribute -quiet $obj bbox {{495.000 139.980} {495.280 140.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[109]} \
	-port {c[109]} \
	-layer METAL3 \
	-bbox {{495.000 141.100} {495.280 141.380}}

set obj [get_terminal {"c[109]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[109]}
set_attribute -quiet $obj bbox {{495.000 141.100} {495.280 141.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[110]} \
	-port {c[110]} \
	-layer METAL3 \
	-bbox {{495.000 142.780} {495.280 143.060}}

set obj [get_terminal {"c[110]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[110]}
set_attribute -quiet $obj bbox {{495.000 142.780} {495.280 143.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[111]} \
	-port {c[111]} \
	-layer METAL3 \
	-bbox {{495.000 143.900} {495.280 144.180}}

set obj [get_terminal {"c[111]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[111]}
set_attribute -quiet $obj bbox {{495.000 143.900} {495.280 144.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[112]} \
	-port {c[112]} \
	-layer METAL3 \
	-bbox {{495.000 145.020} {495.280 145.300}}

set obj [get_terminal {"c[112]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[112]}
set_attribute -quiet $obj bbox {{495.000 145.020} {495.280 145.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[113]} \
	-port {c[113]} \
	-layer METAL3 \
	-bbox {{495.000 146.140} {495.280 146.420}}

set obj [get_terminal {"c[113]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[113]}
set_attribute -quiet $obj bbox {{495.000 146.140} {495.280 146.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[114]} \
	-port {c[114]} \
	-layer METAL3 \
	-bbox {{495.000 147.820} {495.280 148.100}}

set obj [get_terminal {"c[114]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[114]}
set_attribute -quiet $obj bbox {{495.000 147.820} {495.280 148.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[115]} \
	-port {c[115]} \
	-layer METAL3 \
	-bbox {{495.000 148.940} {495.280 149.220}}

set obj [get_terminal {"c[115]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[115]}
set_attribute -quiet $obj bbox {{495.000 148.940} {495.280 149.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[116]} \
	-port {c[116]} \
	-layer METAL3 \
	-bbox {{495.000 150.060} {495.280 150.340}}

set obj [get_terminal {"c[116]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[116]}
set_attribute -quiet $obj bbox {{495.000 150.060} {495.280 150.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[117]} \
	-port {c[117]} \
	-layer METAL3 \
	-bbox {{495.000 151.740} {495.280 152.020}}

set obj [get_terminal {"c[117]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[117]}
set_attribute -quiet $obj bbox {{495.000 151.740} {495.280 152.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[118]} \
	-port {c[118]} \
	-layer METAL3 \
	-bbox {{495.000 152.860} {495.280 153.140}}

set obj [get_terminal {"c[118]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[118]}
set_attribute -quiet $obj bbox {{495.000 152.860} {495.280 153.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[119]} \
	-port {c[119]} \
	-layer METAL3 \
	-bbox {{495.000 153.980} {495.280 154.260}}

set obj [get_terminal {"c[119]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[119]}
set_attribute -quiet $obj bbox {{495.000 153.980} {495.280 154.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[120]} \
	-port {c[120]} \
	-layer METAL3 \
	-bbox {{495.000 155.100} {495.280 155.380}}

set obj [get_terminal {"c[120]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[120]}
set_attribute -quiet $obj bbox {{495.000 155.100} {495.280 155.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[121]} \
	-port {c[121]} \
	-layer METAL3 \
	-bbox {{495.000 156.780} {495.280 157.060}}

set obj [get_terminal {"c[121]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[121]}
set_attribute -quiet $obj bbox {{495.000 156.780} {495.280 157.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[122]} \
	-port {c[122]} \
	-layer METAL3 \
	-bbox {{495.000 157.900} {495.280 158.180}}

set obj [get_terminal {"c[122]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[122]}
set_attribute -quiet $obj bbox {{495.000 157.900} {495.280 158.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[123]} \
	-port {c[123]} \
	-layer METAL3 \
	-bbox {{495.000 159.020} {495.280 159.300}}

set obj [get_terminal {"c[123]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[123]}
set_attribute -quiet $obj bbox {{495.000 159.020} {495.280 159.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[124]} \
	-port {c[124]} \
	-layer METAL3 \
	-bbox {{495.000 160.140} {495.280 160.420}}

set obj [get_terminal {"c[124]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[124]}
set_attribute -quiet $obj bbox {{495.000 160.140} {495.280 160.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[125]} \
	-port {c[125]} \
	-layer METAL3 \
	-bbox {{495.000 161.820} {495.280 162.100}}

set obj [get_terminal {"c[125]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[125]}
set_attribute -quiet $obj bbox {{495.000 161.820} {495.280 162.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[126]} \
	-port {c[126]} \
	-layer METAL3 \
	-bbox {{495.000 162.940} {495.280 163.220}}

set obj [get_terminal {"c[126]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[126]}
set_attribute -quiet $obj bbox {{495.000 162.940} {495.280 163.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {c[127]} \
	-port {c[127]} \
	-layer METAL3 \
	-bbox {{495.000 164.060} {495.280 164.340}}

set obj [get_terminal {"c[127]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {c[127]}
set_attribute -quiet $obj bbox {{495.000 164.060} {495.280 164.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[0]} \
	-port {k[0]} \
	-layer METAL3 \
	-bbox {{495.000 165.180} {495.280 165.460}}

set obj [get_terminal {"k[0]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[0]}
set_attribute -quiet $obj bbox {{495.000 165.180} {495.280 165.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[1]} \
	-port {k[1]} \
	-layer METAL3 \
	-bbox {{495.000 166.860} {495.280 167.140}}

set obj [get_terminal {"k[1]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[1]}
set_attribute -quiet $obj bbox {{495.000 166.860} {495.280 167.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[2]} \
	-port {k[2]} \
	-layer METAL3 \
	-bbox {{495.000 167.980} {495.280 168.260}}

set obj [get_terminal {"k[2]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[2]}
set_attribute -quiet $obj bbox {{495.000 167.980} {495.280 168.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[3]} \
	-port {k[3]} \
	-layer METAL3 \
	-bbox {{495.000 169.100} {495.280 169.380}}

set obj [get_terminal {"k[3]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[3]}
set_attribute -quiet $obj bbox {{495.000 169.100} {495.280 169.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[4]} \
	-port {k[4]} \
	-layer METAL3 \
	-bbox {{495.000 170.220} {495.280 170.500}}

set obj [get_terminal {"k[4]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[4]}
set_attribute -quiet $obj bbox {{495.000 170.220} {495.280 170.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[5]} \
	-port {k[5]} \
	-layer METAL3 \
	-bbox {{495.000 171.900} {495.280 172.180}}

set obj [get_terminal {"k[5]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[5]}
set_attribute -quiet $obj bbox {{495.000 171.900} {495.280 172.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[6]} \
	-port {k[6]} \
	-layer METAL3 \
	-bbox {{495.000 173.020} {495.280 173.300}}

set obj [get_terminal {"k[6]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[6]}
set_attribute -quiet $obj bbox {{495.000 173.020} {495.280 173.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[7]} \
	-port {k[7]} \
	-layer METAL3 \
	-bbox {{495.000 174.140} {495.280 174.420}}

set obj [get_terminal {"k[7]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[7]}
set_attribute -quiet $obj bbox {{495.000 174.140} {495.280 174.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[8]} \
	-port {k[8]} \
	-layer METAL3 \
	-bbox {{495.000 175.260} {495.280 175.540}}

set obj [get_terminal {"k[8]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[8]}
set_attribute -quiet $obj bbox {{495.000 175.260} {495.280 175.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[9]} \
	-port {k[9]} \
	-layer METAL3 \
	-bbox {{495.000 176.940} {495.280 177.220}}

set obj [get_terminal {"k[9]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[9]}
set_attribute -quiet $obj bbox {{495.000 176.940} {495.280 177.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[10]} \
	-port {k[10]} \
	-layer METAL3 \
	-bbox {{495.000 178.060} {495.280 178.340}}

set obj [get_terminal {"k[10]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[10]}
set_attribute -quiet $obj bbox {{495.000 178.060} {495.280 178.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[11]} \
	-port {k[11]} \
	-layer METAL3 \
	-bbox {{495.000 179.180} {495.280 179.460}}

set obj [get_terminal {"k[11]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[11]}
set_attribute -quiet $obj bbox {{495.000 179.180} {495.280 179.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[12]} \
	-port {k[12]} \
	-layer METAL3 \
	-bbox {{495.000 180.300} {495.280 180.580}}

set obj [get_terminal {"k[12]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[12]}
set_attribute -quiet $obj bbox {{495.000 180.300} {495.280 180.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[13]} \
	-port {k[13]} \
	-layer METAL3 \
	-bbox {{495.000 181.980} {495.280 182.260}}

set obj [get_terminal {"k[13]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[13]}
set_attribute -quiet $obj bbox {{495.000 181.980} {495.280 182.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[14]} \
	-port {k[14]} \
	-layer METAL3 \
	-bbox {{495.000 183.100} {495.280 183.380}}

set obj [get_terminal {"k[14]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[14]}
set_attribute -quiet $obj bbox {{495.000 183.100} {495.280 183.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[15]} \
	-port {k[15]} \
	-layer METAL3 \
	-bbox {{495.000 184.220} {495.280 184.500}}

set obj [get_terminal {"k[15]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[15]}
set_attribute -quiet $obj bbox {{495.000 184.220} {495.280 184.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[16]} \
	-port {k[16]} \
	-layer METAL3 \
	-bbox {{495.000 185.900} {495.280 186.180}}

set obj [get_terminal {"k[16]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[16]}
set_attribute -quiet $obj bbox {{495.000 185.900} {495.280 186.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[17]} \
	-port {k[17]} \
	-layer METAL3 \
	-bbox {{495.000 187.020} {495.280 187.300}}

set obj [get_terminal {"k[17]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[17]}
set_attribute -quiet $obj bbox {{495.000 187.020} {495.280 187.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[18]} \
	-port {k[18]} \
	-layer METAL3 \
	-bbox {{495.000 188.140} {495.280 188.420}}

set obj [get_terminal {"k[18]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[18]}
set_attribute -quiet $obj bbox {{495.000 188.140} {495.280 188.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[19]} \
	-port {k[19]} \
	-layer METAL3 \
	-bbox {{495.000 189.260} {495.280 189.540}}

set obj [get_terminal {"k[19]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[19]}
set_attribute -quiet $obj bbox {{495.000 189.260} {495.280 189.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[20]} \
	-port {k[20]} \
	-layer METAL3 \
	-bbox {{495.000 190.940} {495.280 191.220}}

set obj [get_terminal {"k[20]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[20]}
set_attribute -quiet $obj bbox {{495.000 190.940} {495.280 191.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[21]} \
	-port {k[21]} \
	-layer METAL3 \
	-bbox {{495.000 192.060} {495.280 192.340}}

set obj [get_terminal {"k[21]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[21]}
set_attribute -quiet $obj bbox {{495.000 192.060} {495.280 192.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[22]} \
	-port {k[22]} \
	-layer METAL3 \
	-bbox {{495.000 193.180} {495.280 193.460}}

set obj [get_terminal {"k[22]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[22]}
set_attribute -quiet $obj bbox {{495.000 193.180} {495.280 193.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[23]} \
	-port {k[23]} \
	-layer METAL3 \
	-bbox {{495.000 194.300} {495.280 194.580}}

set obj [get_terminal {"k[23]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[23]}
set_attribute -quiet $obj bbox {{495.000 194.300} {495.280 194.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[24]} \
	-port {k[24]} \
	-layer METAL3 \
	-bbox {{495.000 195.980} {495.280 196.260}}

set obj [get_terminal {"k[24]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[24]}
set_attribute -quiet $obj bbox {{495.000 195.980} {495.280 196.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[25]} \
	-port {k[25]} \
	-layer METAL3 \
	-bbox {{495.000 197.100} {495.280 197.380}}

set obj [get_terminal {"k[25]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[25]}
set_attribute -quiet $obj bbox {{495.000 197.100} {495.280 197.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[26]} \
	-port {k[26]} \
	-layer METAL3 \
	-bbox {{495.000 198.220} {495.280 198.500}}

set obj [get_terminal {"k[26]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[26]}
set_attribute -quiet $obj bbox {{495.000 198.220} {495.280 198.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[27]} \
	-port {k[27]} \
	-layer METAL3 \
	-bbox {{495.000 199.340} {495.280 199.620}}

set obj [get_terminal {"k[27]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[27]}
set_attribute -quiet $obj bbox {{495.000 199.340} {495.280 199.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[28]} \
	-port {k[28]} \
	-layer METAL3 \
	-bbox {{495.000 201.020} {495.280 201.300}}

set obj [get_terminal {"k[28]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[28]}
set_attribute -quiet $obj bbox {{495.000 201.020} {495.280 201.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[29]} \
	-port {k[29]} \
	-layer METAL3 \
	-bbox {{495.000 202.140} {495.280 202.420}}

set obj [get_terminal {"k[29]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[29]}
set_attribute -quiet $obj bbox {{495.000 202.140} {495.280 202.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[30]} \
	-port {k[30]} \
	-layer METAL3 \
	-bbox {{495.000 203.260} {495.280 203.540}}

set obj [get_terminal {"k[30]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[30]}
set_attribute -quiet $obj bbox {{495.000 203.260} {495.280 203.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[31]} \
	-port {k[31]} \
	-layer METAL3 \
	-bbox {{495.000 204.380} {495.280 204.660}}

set obj [get_terminal {"k[31]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[31]}
set_attribute -quiet $obj bbox {{495.000 204.380} {495.280 204.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[32]} \
	-port {k[32]} \
	-layer METAL3 \
	-bbox {{495.000 206.060} {495.280 206.340}}

set obj [get_terminal {"k[32]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[32]}
set_attribute -quiet $obj bbox {{495.000 206.060} {495.280 206.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[33]} \
	-port {k[33]} \
	-layer METAL3 \
	-bbox {{495.000 207.180} {495.280 207.460}}

set obj [get_terminal {"k[33]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[33]}
set_attribute -quiet $obj bbox {{495.000 207.180} {495.280 207.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[34]} \
	-port {k[34]} \
	-layer METAL3 \
	-bbox {{495.000 208.300} {495.280 208.580}}

set obj [get_terminal {"k[34]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[34]}
set_attribute -quiet $obj bbox {{495.000 208.300} {495.280 208.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[35]} \
	-port {k[35]} \
	-layer METAL3 \
	-bbox {{495.000 209.420} {495.280 209.700}}

set obj [get_terminal {"k[35]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[35]}
set_attribute -quiet $obj bbox {{495.000 209.420} {495.280 209.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[36]} \
	-port {k[36]} \
	-layer METAL3 \
	-bbox {{495.000 211.100} {495.280 211.380}}

set obj [get_terminal {"k[36]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[36]}
set_attribute -quiet $obj bbox {{495.000 211.100} {495.280 211.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[37]} \
	-port {k[37]} \
	-layer METAL3 \
	-bbox {{495.000 212.220} {495.280 212.500}}

set obj [get_terminal {"k[37]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[37]}
set_attribute -quiet $obj bbox {{495.000 212.220} {495.280 212.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[38]} \
	-port {k[38]} \
	-layer METAL3 \
	-bbox {{495.000 213.340} {495.280 213.620}}

set obj [get_terminal {"k[38]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[38]}
set_attribute -quiet $obj bbox {{495.000 213.340} {495.280 213.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[39]} \
	-port {k[39]} \
	-layer METAL3 \
	-bbox {{495.000 215.020} {495.280 215.300}}

set obj [get_terminal {"k[39]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[39]}
set_attribute -quiet $obj bbox {{495.000 215.020} {495.280 215.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[40]} \
	-port {k[40]} \
	-layer METAL3 \
	-bbox {{495.000 216.140} {495.280 216.420}}

set obj [get_terminal {"k[40]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[40]}
set_attribute -quiet $obj bbox {{495.000 216.140} {495.280 216.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[41]} \
	-port {k[41]} \
	-layer METAL3 \
	-bbox {{495.000 217.260} {495.280 217.540}}

set obj [get_terminal {"k[41]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[41]}
set_attribute -quiet $obj bbox {{495.000 217.260} {495.280 217.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[42]} \
	-port {k[42]} \
	-layer METAL3 \
	-bbox {{495.000 218.380} {495.280 218.660}}

set obj [get_terminal {"k[42]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[42]}
set_attribute -quiet $obj bbox {{495.000 218.380} {495.280 218.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[43]} \
	-port {k[43]} \
	-layer METAL3 \
	-bbox {{495.000 220.060} {495.280 220.340}}

set obj [get_terminal {"k[43]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[43]}
set_attribute -quiet $obj bbox {{495.000 220.060} {495.280 220.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[44]} \
	-port {k[44]} \
	-layer METAL3 \
	-bbox {{495.000 221.180} {495.280 221.460}}

set obj [get_terminal {"k[44]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[44]}
set_attribute -quiet $obj bbox {{495.000 221.180} {495.280 221.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[45]} \
	-port {k[45]} \
	-layer METAL3 \
	-bbox {{495.000 222.300} {495.280 222.580}}

set obj [get_terminal {"k[45]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[45]}
set_attribute -quiet $obj bbox {{495.000 222.300} {495.280 222.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[46]} \
	-port {k[46]} \
	-layer METAL3 \
	-bbox {{495.000 223.420} {495.280 223.700}}

set obj [get_terminal {"k[46]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[46]}
set_attribute -quiet $obj bbox {{495.000 223.420} {495.280 223.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[47]} \
	-port {k[47]} \
	-layer METAL3 \
	-bbox {{495.000 225.100} {495.280 225.380}}

set obj [get_terminal {"k[47]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[47]}
set_attribute -quiet $obj bbox {{495.000 225.100} {495.280 225.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[48]} \
	-port {k[48]} \
	-layer METAL3 \
	-bbox {{495.000 226.220} {495.280 226.500}}

set obj [get_terminal {"k[48]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[48]}
set_attribute -quiet $obj bbox {{495.000 226.220} {495.280 226.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[49]} \
	-port {k[49]} \
	-layer METAL3 \
	-bbox {{495.000 227.340} {495.280 227.620}}

set obj [get_terminal {"k[49]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[49]}
set_attribute -quiet $obj bbox {{495.000 227.340} {495.280 227.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[50]} \
	-port {k[50]} \
	-layer METAL3 \
	-bbox {{495.000 228.460} {495.280 228.740}}

set obj [get_terminal {"k[50]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[50]}
set_attribute -quiet $obj bbox {{495.000 228.460} {495.280 228.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[51]} \
	-port {k[51]} \
	-layer METAL3 \
	-bbox {{495.000 230.140} {495.280 230.420}}

set obj [get_terminal {"k[51]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[51]}
set_attribute -quiet $obj bbox {{495.000 230.140} {495.280 230.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[52]} \
	-port {k[52]} \
	-layer METAL3 \
	-bbox {{495.000 231.260} {495.280 231.540}}

set obj [get_terminal {"k[52]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[52]}
set_attribute -quiet $obj bbox {{495.000 231.260} {495.280 231.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[53]} \
	-port {k[53]} \
	-layer METAL3 \
	-bbox {{495.000 232.380} {495.280 232.660}}

set obj [get_terminal {"k[53]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[53]}
set_attribute -quiet $obj bbox {{495.000 232.380} {495.280 232.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[54]} \
	-port {k[54]} \
	-layer METAL3 \
	-bbox {{495.000 233.500} {495.280 233.780}}

set obj [get_terminal {"k[54]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[54]}
set_attribute -quiet $obj bbox {{495.000 233.500} {495.280 233.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[55]} \
	-port {k[55]} \
	-layer METAL3 \
	-bbox {{495.000 235.180} {495.280 235.460}}

set obj [get_terminal {"k[55]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[55]}
set_attribute -quiet $obj bbox {{495.000 235.180} {495.280 235.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[56]} \
	-port {k[56]} \
	-layer METAL3 \
	-bbox {{495.000 236.300} {495.280 236.580}}

set obj [get_terminal {"k[56]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[56]}
set_attribute -quiet $obj bbox {{495.000 236.300} {495.280 236.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[57]} \
	-port {k[57]} \
	-layer METAL3 \
	-bbox {{495.000 237.420} {495.280 237.700}}

set obj [get_terminal {"k[57]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[57]}
set_attribute -quiet $obj bbox {{495.000 237.420} {495.280 237.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[58]} \
	-port {k[58]} \
	-layer METAL3 \
	-bbox {{495.000 238.540} {495.280 238.820}}

set obj [get_terminal {"k[58]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[58]}
set_attribute -quiet $obj bbox {{495.000 238.540} {495.280 238.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[59]} \
	-port {k[59]} \
	-layer METAL3 \
	-bbox {{495.000 240.220} {495.280 240.500}}

set obj [get_terminal {"k[59]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[59]}
set_attribute -quiet $obj bbox {{495.000 240.220} {495.280 240.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[60]} \
	-port {k[60]} \
	-layer METAL3 \
	-bbox {{495.000 241.340} {495.280 241.620}}

set obj [get_terminal {"k[60]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[60]}
set_attribute -quiet $obj bbox {{495.000 241.340} {495.280 241.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[61]} \
	-port {k[61]} \
	-layer METAL3 \
	-bbox {{495.000 242.460} {495.280 242.740}}

set obj [get_terminal {"k[61]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[61]}
set_attribute -quiet $obj bbox {{495.000 242.460} {495.280 242.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[62]} \
	-port {k[62]} \
	-layer METAL3 \
	-bbox {{495.000 244.140} {495.280 244.420}}

set obj [get_terminal {"k[62]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[62]}
set_attribute -quiet $obj bbox {{495.000 244.140} {495.280 244.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[63]} \
	-port {k[63]} \
	-layer METAL3 \
	-bbox {{495.000 245.260} {495.280 245.540}}

set obj [get_terminal {"k[63]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[63]}
set_attribute -quiet $obj bbox {{495.000 245.260} {495.280 245.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[64]} \
	-port {k[64]} \
	-layer METAL3 \
	-bbox {{495.000 246.380} {495.280 246.660}}

set obj [get_terminal {"k[64]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[64]}
set_attribute -quiet $obj bbox {{495.000 246.380} {495.280 246.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[65]} \
	-port {k[65]} \
	-layer METAL3 \
	-bbox {{495.000 247.500} {495.280 247.780}}

set obj [get_terminal {"k[65]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[65]}
set_attribute -quiet $obj bbox {{495.000 247.500} {495.280 247.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[66]} \
	-port {k[66]} \
	-layer METAL3 \
	-bbox {{495.000 249.180} {495.280 249.460}}

set obj [get_terminal {"k[66]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[66]}
set_attribute -quiet $obj bbox {{495.000 249.180} {495.280 249.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[67]} \
	-port {k[67]} \
	-layer METAL3 \
	-bbox {{495.000 250.300} {495.280 250.580}}

set obj [get_terminal {"k[67]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[67]}
set_attribute -quiet $obj bbox {{495.000 250.300} {495.280 250.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[68]} \
	-port {k[68]} \
	-layer METAL3 \
	-bbox {{495.000 251.420} {495.280 251.700}}

set obj [get_terminal {"k[68]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[68]}
set_attribute -quiet $obj bbox {{495.000 251.420} {495.280 251.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[69]} \
	-port {k[69]} \
	-layer METAL3 \
	-bbox {{495.000 252.540} {495.280 252.820}}

set obj [get_terminal {"k[69]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[69]}
set_attribute -quiet $obj bbox {{495.000 252.540} {495.280 252.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[70]} \
	-port {k[70]} \
	-layer METAL3 \
	-bbox {{495.000 254.220} {495.280 254.500}}

set obj [get_terminal {"k[70]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[70]}
set_attribute -quiet $obj bbox {{495.000 254.220} {495.280 254.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[71]} \
	-port {k[71]} \
	-layer METAL3 \
	-bbox {{495.000 255.340} {495.280 255.620}}

set obj [get_terminal {"k[71]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[71]}
set_attribute -quiet $obj bbox {{495.000 255.340} {495.280 255.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[72]} \
	-port {k[72]} \
	-layer METAL3 \
	-bbox {{495.000 256.460} {495.280 256.740}}

set obj [get_terminal {"k[72]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[72]}
set_attribute -quiet $obj bbox {{495.000 256.460} {495.280 256.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[73]} \
	-port {k[73]} \
	-layer METAL3 \
	-bbox {{495.000 257.580} {495.280 257.860}}

set obj [get_terminal {"k[73]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[73]}
set_attribute -quiet $obj bbox {{495.000 257.580} {495.280 257.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[74]} \
	-port {k[74]} \
	-layer METAL3 \
	-bbox {{495.000 259.260} {495.280 259.540}}

set obj [get_terminal {"k[74]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[74]}
set_attribute -quiet $obj bbox {{495.000 259.260} {495.280 259.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[75]} \
	-port {k[75]} \
	-layer METAL3 \
	-bbox {{495.000 260.380} {495.280 260.660}}

set obj [get_terminal {"k[75]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[75]}
set_attribute -quiet $obj bbox {{495.000 260.380} {495.280 260.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[76]} \
	-port {k[76]} \
	-layer METAL3 \
	-bbox {{495.000 261.500} {495.280 261.780}}

set obj [get_terminal {"k[76]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[76]}
set_attribute -quiet $obj bbox {{495.000 261.500} {495.280 261.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[77]} \
	-port {k[77]} \
	-layer METAL3 \
	-bbox {{495.000 262.620} {495.280 262.900}}

set obj [get_terminal {"k[77]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[77]}
set_attribute -quiet $obj bbox {{495.000 262.620} {495.280 262.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[78]} \
	-port {k[78]} \
	-layer METAL3 \
	-bbox {{495.000 264.300} {495.280 264.580}}

set obj [get_terminal {"k[78]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[78]}
set_attribute -quiet $obj bbox {{495.000 264.300} {495.280 264.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[79]} \
	-port {k[79]} \
	-layer METAL3 \
	-bbox {{495.000 265.420} {495.280 265.700}}

set obj [get_terminal {"k[79]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[79]}
set_attribute -quiet $obj bbox {{495.000 265.420} {495.280 265.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[80]} \
	-port {k[80]} \
	-layer METAL3 \
	-bbox {{495.000 266.540} {495.280 266.820}}

set obj [get_terminal {"k[80]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[80]}
set_attribute -quiet $obj bbox {{495.000 266.540} {495.280 266.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[81]} \
	-port {k[81]} \
	-layer METAL3 \
	-bbox {{495.000 267.660} {495.280 267.940}}

set obj [get_terminal {"k[81]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[81]}
set_attribute -quiet $obj bbox {{495.000 267.660} {495.280 267.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[82]} \
	-port {k[82]} \
	-layer METAL3 \
	-bbox {{495.000 269.340} {495.280 269.620}}

set obj [get_terminal {"k[82]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[82]}
set_attribute -quiet $obj bbox {{495.000 269.340} {495.280 269.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[83]} \
	-port {k[83]} \
	-layer METAL3 \
	-bbox {{495.000 270.460} {495.280 270.740}}

set obj [get_terminal {"k[83]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[83]}
set_attribute -quiet $obj bbox {{495.000 270.460} {495.280 270.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[84]} \
	-port {k[84]} \
	-layer METAL3 \
	-bbox {{495.000 271.580} {495.280 271.860}}

set obj [get_terminal {"k[84]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[84]}
set_attribute -quiet $obj bbox {{495.000 271.580} {495.280 271.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[85]} \
	-port {k[85]} \
	-layer METAL3 \
	-bbox {{495.000 273.260} {495.280 273.540}}

set obj [get_terminal {"k[85]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[85]}
set_attribute -quiet $obj bbox {{495.000 273.260} {495.280 273.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[86]} \
	-port {k[86]} \
	-layer METAL3 \
	-bbox {{495.000 274.380} {495.280 274.660}}

set obj [get_terminal {"k[86]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[86]}
set_attribute -quiet $obj bbox {{495.000 274.380} {495.280 274.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[87]} \
	-port {k[87]} \
	-layer METAL3 \
	-bbox {{495.000 275.500} {495.280 275.780}}

set obj [get_terminal {"k[87]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[87]}
set_attribute -quiet $obj bbox {{495.000 275.500} {495.280 275.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[88]} \
	-port {k[88]} \
	-layer METAL3 \
	-bbox {{495.000 276.620} {495.280 276.900}}

set obj [get_terminal {"k[88]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[88]}
set_attribute -quiet $obj bbox {{495.000 276.620} {495.280 276.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[89]} \
	-port {k[89]} \
	-layer METAL3 \
	-bbox {{495.000 278.300} {495.280 278.580}}

set obj [get_terminal {"k[89]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[89]}
set_attribute -quiet $obj bbox {{495.000 278.300} {495.280 278.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[90]} \
	-port {k[90]} \
	-layer METAL3 \
	-bbox {{495.000 279.420} {495.280 279.700}}

set obj [get_terminal {"k[90]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[90]}
set_attribute -quiet $obj bbox {{495.000 279.420} {495.280 279.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[91]} \
	-port {k[91]} \
	-layer METAL3 \
	-bbox {{495.000 280.540} {495.280 280.820}}

set obj [get_terminal {"k[91]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[91]}
set_attribute -quiet $obj bbox {{495.000 280.540} {495.280 280.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[92]} \
	-port {k[92]} \
	-layer METAL3 \
	-bbox {{495.000 281.660} {495.280 281.940}}

set obj [get_terminal {"k[92]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[92]}
set_attribute -quiet $obj bbox {{495.000 281.660} {495.280 281.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[93]} \
	-port {k[93]} \
	-layer METAL3 \
	-bbox {{495.000 283.340} {495.280 283.620}}

set obj [get_terminal {"k[93]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[93]}
set_attribute -quiet $obj bbox {{495.000 283.340} {495.280 283.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[94]} \
	-port {k[94]} \
	-layer METAL3 \
	-bbox {{495.000 284.460} {495.280 284.740}}

set obj [get_terminal {"k[94]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[94]}
set_attribute -quiet $obj bbox {{495.000 284.460} {495.280 284.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[95]} \
	-port {k[95]} \
	-layer METAL3 \
	-bbox {{495.000 285.580} {495.280 285.860}}

set obj [get_terminal {"k[95]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[95]}
set_attribute -quiet $obj bbox {{495.000 285.580} {495.280 285.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[96]} \
	-port {k[96]} \
	-layer METAL3 \
	-bbox {{495.000 286.700} {495.280 286.980}}

set obj [get_terminal {"k[96]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[96]}
set_attribute -quiet $obj bbox {{495.000 286.700} {495.280 286.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[97]} \
	-port {k[97]} \
	-layer METAL3 \
	-bbox {{495.000 288.380} {495.280 288.660}}

set obj [get_terminal {"k[97]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[97]}
set_attribute -quiet $obj bbox {{495.000 288.380} {495.280 288.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[98]} \
	-port {k[98]} \
	-layer METAL3 \
	-bbox {{495.000 289.500} {495.280 289.780}}

set obj [get_terminal {"k[98]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[98]}
set_attribute -quiet $obj bbox {{495.000 289.500} {495.280 289.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[99]} \
	-port {k[99]} \
	-layer METAL3 \
	-bbox {{495.000 290.620} {495.280 290.900}}

set obj [get_terminal {"k[99]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[99]}
set_attribute -quiet $obj bbox {{495.000 290.620} {495.280 290.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[100]} \
	-port {k[100]} \
	-layer METAL3 \
	-bbox {{495.000 291.740} {495.280 292.020}}

set obj [get_terminal {"k[100]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[100]}
set_attribute -quiet $obj bbox {{495.000 291.740} {495.280 292.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[101]} \
	-port {k[101]} \
	-layer METAL3 \
	-bbox {{495.000 293.420} {495.280 293.700}}

set obj [get_terminal {"k[101]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[101]}
set_attribute -quiet $obj bbox {{495.000 293.420} {495.280 293.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[102]} \
	-port {k[102]} \
	-layer METAL3 \
	-bbox {{495.000 294.540} {495.280 294.820}}

set obj [get_terminal {"k[102]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[102]}
set_attribute -quiet $obj bbox {{495.000 294.540} {495.280 294.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[103]} \
	-port {k[103]} \
	-layer METAL3 \
	-bbox {{495.000 295.660} {495.280 295.940}}

set obj [get_terminal {"k[103]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[103]}
set_attribute -quiet $obj bbox {{495.000 295.660} {495.280 295.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[104]} \
	-port {k[104]} \
	-layer METAL3 \
	-bbox {{495.000 296.780} {495.280 297.060}}

set obj [get_terminal {"k[104]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[104]}
set_attribute -quiet $obj bbox {{495.000 296.780} {495.280 297.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[105]} \
	-port {k[105]} \
	-layer METAL3 \
	-bbox {{495.000 298.460} {495.280 298.740}}

set obj [get_terminal {"k[105]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[105]}
set_attribute -quiet $obj bbox {{495.000 298.460} {495.280 298.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[106]} \
	-port {k[106]} \
	-layer METAL3 \
	-bbox {{495.000 299.580} {495.280 299.860}}

set obj [get_terminal {"k[106]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[106]}
set_attribute -quiet $obj bbox {{495.000 299.580} {495.280 299.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[107]} \
	-port {k[107]} \
	-layer METAL3 \
	-bbox {{495.000 300.700} {495.280 300.980}}

set obj [get_terminal {"k[107]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[107]}
set_attribute -quiet $obj bbox {{495.000 300.700} {495.280 300.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[108]} \
	-port {k[108]} \
	-layer METAL3 \
	-bbox {{495.000 302.380} {495.280 302.660}}

set obj [get_terminal {"k[108]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[108]}
set_attribute -quiet $obj bbox {{495.000 302.380} {495.280 302.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[109]} \
	-port {k[109]} \
	-layer METAL3 \
	-bbox {{495.000 303.500} {495.280 303.780}}

set obj [get_terminal {"k[109]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[109]}
set_attribute -quiet $obj bbox {{495.000 303.500} {495.280 303.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[110]} \
	-port {k[110]} \
	-layer METAL3 \
	-bbox {{495.000 304.620} {495.280 304.900}}

set obj [get_terminal {"k[110]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[110]}
set_attribute -quiet $obj bbox {{495.000 304.620} {495.280 304.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[111]} \
	-port {k[111]} \
	-layer METAL3 \
	-bbox {{495.000 305.740} {495.280 306.020}}

set obj [get_terminal {"k[111]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[111]}
set_attribute -quiet $obj bbox {{495.000 305.740} {495.280 306.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[112]} \
	-port {k[112]} \
	-layer METAL3 \
	-bbox {{495.000 307.420} {495.280 307.700}}

set obj [get_terminal {"k[112]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[112]}
set_attribute -quiet $obj bbox {{495.000 307.420} {495.280 307.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[113]} \
	-port {k[113]} \
	-layer METAL3 \
	-bbox {{495.000 308.540} {495.280 308.820}}

set obj [get_terminal {"k[113]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[113]}
set_attribute -quiet $obj bbox {{495.000 308.540} {495.280 308.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[114]} \
	-port {k[114]} \
	-layer METAL3 \
	-bbox {{495.000 309.660} {495.280 309.940}}

set obj [get_terminal {"k[114]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[114]}
set_attribute -quiet $obj bbox {{495.000 309.660} {495.280 309.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[115]} \
	-port {k[115]} \
	-layer METAL3 \
	-bbox {{495.000 310.780} {495.280 311.060}}

set obj [get_terminal {"k[115]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[115]}
set_attribute -quiet $obj bbox {{495.000 310.780} {495.280 311.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[116]} \
	-port {k[116]} \
	-layer METAL3 \
	-bbox {{495.000 312.460} {495.280 312.740}}

set obj [get_terminal {"k[116]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[116]}
set_attribute -quiet $obj bbox {{495.000 312.460} {495.280 312.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[117]} \
	-port {k[117]} \
	-layer METAL3 \
	-bbox {{495.000 313.580} {495.280 313.860}}

set obj [get_terminal {"k[117]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[117]}
set_attribute -quiet $obj bbox {{495.000 313.580} {495.280 313.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[118]} \
	-port {k[118]} \
	-layer METAL3 \
	-bbox {{495.000 314.700} {495.280 314.980}}

set obj [get_terminal {"k[118]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[118]}
set_attribute -quiet $obj bbox {{495.000 314.700} {495.280 314.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[119]} \
	-port {k[119]} \
	-layer METAL3 \
	-bbox {{495.000 315.820} {495.280 316.100}}

set obj [get_terminal {"k[119]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[119]}
set_attribute -quiet $obj bbox {{495.000 315.820} {495.280 316.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[120]} \
	-port {k[120]} \
	-layer METAL3 \
	-bbox {{495.000 317.500} {495.280 317.780}}

set obj [get_terminal {"k[120]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[120]}
set_attribute -quiet $obj bbox {{495.000 317.500} {495.280 317.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[121]} \
	-port {k[121]} \
	-layer METAL3 \
	-bbox {{495.000 318.620} {495.280 318.900}}

set obj [get_terminal {"k[121]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[121]}
set_attribute -quiet $obj bbox {{495.000 318.620} {495.280 318.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[122]} \
	-port {k[122]} \
	-layer METAL3 \
	-bbox {{495.000 319.740} {495.280 320.020}}

set obj [get_terminal {"k[122]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[122]}
set_attribute -quiet $obj bbox {{495.000 319.740} {495.280 320.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[123]} \
	-port {k[123]} \
	-layer METAL3 \
	-bbox {{495.000 320.860} {495.280 321.140}}

set obj [get_terminal {"k[123]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[123]}
set_attribute -quiet $obj bbox {{495.000 320.860} {495.280 321.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[124]} \
	-port {k[124]} \
	-layer METAL3 \
	-bbox {{495.000 322.540} {495.280 322.820}}

set obj [get_terminal {"k[124]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[124]}
set_attribute -quiet $obj bbox {{495.000 322.540} {495.280 322.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[125]} \
	-port {k[125]} \
	-layer METAL3 \
	-bbox {{495.000 323.660} {495.280 323.940}}

set obj [get_terminal {"k[125]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[125]}
set_attribute -quiet $obj bbox {{495.000 323.660} {495.280 323.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[126]} \
	-port {k[126]} \
	-layer METAL3 \
	-bbox {{495.000 324.780} {495.280 325.060}}

set obj [get_terminal {"k[126]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[126]}
set_attribute -quiet $obj bbox {{495.000 324.780} {495.280 325.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {k[127]} \
	-port {k[127]} \
	-layer METAL3 \
	-bbox {{495.000 325.900} {495.280 326.180}}

set obj [get_terminal {"k[127]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {k[127]}
set_attribute -quiet $obj bbox {{495.000 325.900} {495.280 326.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[0]} \
	-port {p[0]} \
	-layer METAL3 \
	-bbox {{495.000 327.580} {495.280 327.860}}

set obj [get_terminal {"p[0]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[0]}
set_attribute -quiet $obj bbox {{495.000 327.580} {495.280 327.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[1]} \
	-port {p[1]} \
	-layer METAL3 \
	-bbox {{495.000 328.700} {495.280 328.980}}

set obj [get_terminal {"p[1]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[1]}
set_attribute -quiet $obj bbox {{495.000 328.700} {495.280 328.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[2]} \
	-port {p[2]} \
	-layer METAL3 \
	-bbox {{495.000 329.820} {495.280 330.100}}

set obj [get_terminal {"p[2]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[2]}
set_attribute -quiet $obj bbox {{495.000 329.820} {495.280 330.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[3]} \
	-port {p[3]} \
	-layer METAL3 \
	-bbox {{495.000 331.500} {495.280 331.780}}

set obj [get_terminal {"p[3]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[3]}
set_attribute -quiet $obj bbox {{495.000 331.500} {495.280 331.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[4]} \
	-port {p[4]} \
	-layer METAL3 \
	-bbox {{495.000 332.620} {495.280 332.900}}

set obj [get_terminal {"p[4]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[4]}
set_attribute -quiet $obj bbox {{495.000 332.620} {495.280 332.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[5]} \
	-port {p[5]} \
	-layer METAL3 \
	-bbox {{495.000 333.740} {495.280 334.020}}

set obj [get_terminal {"p[5]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[5]}
set_attribute -quiet $obj bbox {{495.000 333.740} {495.280 334.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[6]} \
	-port {p[6]} \
	-layer METAL3 \
	-bbox {{495.000 334.860} {495.280 335.140}}

set obj [get_terminal {"p[6]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[6]}
set_attribute -quiet $obj bbox {{495.000 334.860} {495.280 335.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[7]} \
	-port {p[7]} \
	-layer METAL3 \
	-bbox {{495.000 336.540} {495.280 336.820}}

set obj [get_terminal {"p[7]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[7]}
set_attribute -quiet $obj bbox {{495.000 336.540} {495.280 336.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[8]} \
	-port {p[8]} \
	-layer METAL3 \
	-bbox {{495.000 337.660} {495.280 337.940}}

set obj [get_terminal {"p[8]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[8]}
set_attribute -quiet $obj bbox {{495.000 337.660} {495.280 337.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[9]} \
	-port {p[9]} \
	-layer METAL3 \
	-bbox {{495.000 338.780} {495.280 339.060}}

set obj [get_terminal {"p[9]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[9]}
set_attribute -quiet $obj bbox {{495.000 338.780} {495.280 339.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[10]} \
	-port {p[10]} \
	-layer METAL3 \
	-bbox {{495.000 339.900} {495.280 340.180}}

set obj [get_terminal {"p[10]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[10]}
set_attribute -quiet $obj bbox {{495.000 339.900} {495.280 340.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[11]} \
	-port {p[11]} \
	-layer METAL3 \
	-bbox {{495.000 341.580} {495.280 341.860}}

set obj [get_terminal {"p[11]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[11]}
set_attribute -quiet $obj bbox {{495.000 341.580} {495.280 341.860}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[12]} \
	-port {p[12]} \
	-layer METAL3 \
	-bbox {{495.000 342.700} {495.280 342.980}}

set obj [get_terminal {"p[12]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[12]}
set_attribute -quiet $obj bbox {{495.000 342.700} {495.280 342.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[13]} \
	-port {p[13]} \
	-layer METAL3 \
	-bbox {{495.000 343.820} {495.280 344.100}}

set obj [get_terminal {"p[13]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[13]}
set_attribute -quiet $obj bbox {{495.000 343.820} {495.280 344.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[14]} \
	-port {p[14]} \
	-layer METAL3 \
	-bbox {{495.000 344.940} {495.280 345.220}}

set obj [get_terminal {"p[14]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[14]}
set_attribute -quiet $obj bbox {{495.000 344.940} {495.280 345.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[15]} \
	-port {p[15]} \
	-layer METAL3 \
	-bbox {{495.000 346.620} {495.280 346.900}}

set obj [get_terminal {"p[15]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[15]}
set_attribute -quiet $obj bbox {{495.000 346.620} {495.280 346.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[16]} \
	-port {p[16]} \
	-layer METAL3 \
	-bbox {{495.000 347.740} {495.280 348.020}}

set obj [get_terminal {"p[16]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[16]}
set_attribute -quiet $obj bbox {{495.000 347.740} {495.280 348.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[17]} \
	-port {p[17]} \
	-layer METAL3 \
	-bbox {{495.000 348.860} {495.280 349.140}}

set obj [get_terminal {"p[17]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[17]}
set_attribute -quiet $obj bbox {{495.000 348.860} {495.280 349.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[18]} \
	-port {p[18]} \
	-layer METAL3 \
	-bbox {{495.000 349.980} {495.280 350.260}}

set obj [get_terminal {"p[18]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[18]}
set_attribute -quiet $obj bbox {{495.000 349.980} {495.280 350.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[19]} \
	-port {p[19]} \
	-layer METAL3 \
	-bbox {{495.000 351.660} {495.280 351.940}}

set obj [get_terminal {"p[19]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[19]}
set_attribute -quiet $obj bbox {{495.000 351.660} {495.280 351.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[20]} \
	-port {p[20]} \
	-layer METAL3 \
	-bbox {{495.000 352.780} {495.280 353.060}}

set obj [get_terminal {"p[20]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[20]}
set_attribute -quiet $obj bbox {{495.000 352.780} {495.280 353.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[21]} \
	-port {p[21]} \
	-layer METAL3 \
	-bbox {{495.000 353.900} {495.280 354.180}}

set obj [get_terminal {"p[21]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[21]}
set_attribute -quiet $obj bbox {{495.000 353.900} {495.280 354.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[22]} \
	-port {p[22]} \
	-layer METAL3 \
	-bbox {{495.000 355.020} {495.280 355.300}}

set obj [get_terminal {"p[22]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[22]}
set_attribute -quiet $obj bbox {{495.000 355.020} {495.280 355.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[23]} \
	-port {p[23]} \
	-layer METAL3 \
	-bbox {{495.000 356.700} {495.280 356.980}}

set obj [get_terminal {"p[23]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[23]}
set_attribute -quiet $obj bbox {{495.000 356.700} {495.280 356.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[24]} \
	-port {p[24]} \
	-layer METAL3 \
	-bbox {{495.000 357.820} {495.280 358.100}}

set obj [get_terminal {"p[24]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[24]}
set_attribute -quiet $obj bbox {{495.000 357.820} {495.280 358.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[25]} \
	-port {p[25]} \
	-layer METAL3 \
	-bbox {{495.000 358.940} {495.280 359.220}}

set obj [get_terminal {"p[25]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[25]}
set_attribute -quiet $obj bbox {{495.000 358.940} {495.280 359.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[26]} \
	-port {p[26]} \
	-layer METAL3 \
	-bbox {{495.000 360.620} {495.280 360.900}}

set obj [get_terminal {"p[26]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[26]}
set_attribute -quiet $obj bbox {{495.000 360.620} {495.280 360.900}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[27]} \
	-port {p[27]} \
	-layer METAL3 \
	-bbox {{495.000 361.740} {495.280 362.020}}

set obj [get_terminal {"p[27]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[27]}
set_attribute -quiet $obj bbox {{495.000 361.740} {495.280 362.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[28]} \
	-port {p[28]} \
	-layer METAL3 \
	-bbox {{495.000 362.860} {495.280 363.140}}

set obj [get_terminal {"p[28]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[28]}
set_attribute -quiet $obj bbox {{495.000 362.860} {495.280 363.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[29]} \
	-port {p[29]} \
	-layer METAL3 \
	-bbox {{495.000 363.980} {495.280 364.260}}

set obj [get_terminal {"p[29]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[29]}
set_attribute -quiet $obj bbox {{495.000 363.980} {495.280 364.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[30]} \
	-port {p[30]} \
	-layer METAL3 \
	-bbox {{495.000 365.660} {495.280 365.940}}

set obj [get_terminal {"p[30]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[30]}
set_attribute -quiet $obj bbox {{495.000 365.660} {495.280 365.940}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[31]} \
	-port {p[31]} \
	-layer METAL3 \
	-bbox {{495.000 366.780} {495.280 367.060}}

set obj [get_terminal {"p[31]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[31]}
set_attribute -quiet $obj bbox {{495.000 366.780} {495.280 367.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[32]} \
	-port {p[32]} \
	-layer METAL3 \
	-bbox {{495.000 367.900} {495.280 368.180}}

set obj [get_terminal {"p[32]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[32]}
set_attribute -quiet $obj bbox {{495.000 367.900} {495.280 368.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[33]} \
	-port {p[33]} \
	-layer METAL3 \
	-bbox {{495.000 369.020} {495.280 369.300}}

set obj [get_terminal {"p[33]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[33]}
set_attribute -quiet $obj bbox {{495.000 369.020} {495.280 369.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[34]} \
	-port {p[34]} \
	-layer METAL3 \
	-bbox {{495.000 370.700} {495.280 370.980}}

set obj [get_terminal {"p[34]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[34]}
set_attribute -quiet $obj bbox {{495.000 370.700} {495.280 370.980}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[35]} \
	-port {p[35]} \
	-layer METAL3 \
	-bbox {{495.000 371.820} {495.280 372.100}}

set obj [get_terminal {"p[35]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[35]}
set_attribute -quiet $obj bbox {{495.000 371.820} {495.280 372.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[36]} \
	-port {p[36]} \
	-layer METAL3 \
	-bbox {{495.000 372.940} {495.280 373.220}}

set obj [get_terminal {"p[36]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[36]}
set_attribute -quiet $obj bbox {{495.000 372.940} {495.280 373.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[37]} \
	-port {p[37]} \
	-layer METAL3 \
	-bbox {{495.000 374.060} {495.280 374.340}}

set obj [get_terminal {"p[37]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[37]}
set_attribute -quiet $obj bbox {{495.000 374.060} {495.280 374.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[38]} \
	-port {p[38]} \
	-layer METAL3 \
	-bbox {{495.000 375.740} {495.280 376.020}}

set obj [get_terminal {"p[38]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[38]}
set_attribute -quiet $obj bbox {{495.000 375.740} {495.280 376.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[39]} \
	-port {p[39]} \
	-layer METAL3 \
	-bbox {{495.000 376.860} {495.280 377.140}}

set obj [get_terminal {"p[39]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[39]}
set_attribute -quiet $obj bbox {{495.000 376.860} {495.280 377.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[40]} \
	-port {p[40]} \
	-layer METAL3 \
	-bbox {{495.000 377.980} {495.280 378.260}}

set obj [get_terminal {"p[40]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[40]}
set_attribute -quiet $obj bbox {{495.000 377.980} {495.280 378.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[41]} \
	-port {p[41]} \
	-layer METAL3 \
	-bbox {{495.000 379.100} {495.280 379.380}}

set obj [get_terminal {"p[41]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[41]}
set_attribute -quiet $obj bbox {{495.000 379.100} {495.280 379.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[42]} \
	-port {p[42]} \
	-layer METAL3 \
	-bbox {{495.000 380.780} {495.280 381.060}}

set obj [get_terminal {"p[42]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[42]}
set_attribute -quiet $obj bbox {{495.000 380.780} {495.280 381.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[43]} \
	-port {p[43]} \
	-layer METAL3 \
	-bbox {{495.000 381.900} {495.280 382.180}}

set obj [get_terminal {"p[43]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[43]}
set_attribute -quiet $obj bbox {{495.000 381.900} {495.280 382.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[44]} \
	-port {p[44]} \
	-layer METAL3 \
	-bbox {{495.000 383.020} {495.280 383.300}}

set obj [get_terminal {"p[44]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[44]}
set_attribute -quiet $obj bbox {{495.000 383.020} {495.280 383.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[45]} \
	-port {p[45]} \
	-layer METAL3 \
	-bbox {{495.000 384.140} {495.280 384.420}}

set obj [get_terminal {"p[45]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[45]}
set_attribute -quiet $obj bbox {{495.000 384.140} {495.280 384.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[46]} \
	-port {p[46]} \
	-layer METAL3 \
	-bbox {{495.000 385.820} {495.280 386.100}}

set obj [get_terminal {"p[46]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[46]}
set_attribute -quiet $obj bbox {{495.000 385.820} {495.280 386.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[47]} \
	-port {p[47]} \
	-layer METAL3 \
	-bbox {{495.000 386.940} {495.280 387.220}}

set obj [get_terminal {"p[47]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[47]}
set_attribute -quiet $obj bbox {{495.000 386.940} {495.280 387.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[48]} \
	-port {p[48]} \
	-layer METAL3 \
	-bbox {{495.000 388.060} {495.280 388.340}}

set obj [get_terminal {"p[48]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[48]}
set_attribute -quiet $obj bbox {{495.000 388.060} {495.280 388.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[49]} \
	-port {p[49]} \
	-layer METAL3 \
	-bbox {{495.000 389.740} {495.280 390.020}}

set obj [get_terminal {"p[49]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[49]}
set_attribute -quiet $obj bbox {{495.000 389.740} {495.280 390.020}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[50]} \
	-port {p[50]} \
	-layer METAL3 \
	-bbox {{495.000 390.860} {495.280 391.140}}

set obj [get_terminal {"p[50]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[50]}
set_attribute -quiet $obj bbox {{495.000 390.860} {495.280 391.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[51]} \
	-port {p[51]} \
	-layer METAL3 \
	-bbox {{495.000 391.980} {495.280 392.260}}

set obj [get_terminal {"p[51]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[51]}
set_attribute -quiet $obj bbox {{495.000 391.980} {495.280 392.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[52]} \
	-port {p[52]} \
	-layer METAL3 \
	-bbox {{495.000 393.100} {495.280 393.380}}

set obj [get_terminal {"p[52]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[52]}
set_attribute -quiet $obj bbox {{495.000 393.100} {495.280 393.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[53]} \
	-port {p[53]} \
	-layer METAL3 \
	-bbox {{495.000 394.780} {495.280 395.060}}

set obj [get_terminal {"p[53]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[53]}
set_attribute -quiet $obj bbox {{495.000 394.780} {495.280 395.060}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[54]} \
	-port {p[54]} \
	-layer METAL3 \
	-bbox {{495.000 395.900} {495.280 396.180}}

set obj [get_terminal {"p[54]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[54]}
set_attribute -quiet $obj bbox {{495.000 395.900} {495.280 396.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[55]} \
	-port {p[55]} \
	-layer METAL3 \
	-bbox {{495.000 397.020} {495.280 397.300}}

set obj [get_terminal {"p[55]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[55]}
set_attribute -quiet $obj bbox {{495.000 397.020} {495.280 397.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[56]} \
	-port {p[56]} \
	-layer METAL3 \
	-bbox {{495.000 398.140} {495.280 398.420}}

set obj [get_terminal {"p[56]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[56]}
set_attribute -quiet $obj bbox {{495.000 398.140} {495.280 398.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[57]} \
	-port {p[57]} \
	-layer METAL3 \
	-bbox {{495.000 399.820} {495.280 400.100}}

set obj [get_terminal {"p[57]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[57]}
set_attribute -quiet $obj bbox {{495.000 399.820} {495.280 400.100}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[58]} \
	-port {p[58]} \
	-layer METAL3 \
	-bbox {{495.000 400.940} {495.280 401.220}}

set obj [get_terminal {"p[58]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[58]}
set_attribute -quiet $obj bbox {{495.000 400.940} {495.280 401.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[59]} \
	-port {p[59]} \
	-layer METAL3 \
	-bbox {{495.000 402.060} {495.280 402.340}}

set obj [get_terminal {"p[59]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[59]}
set_attribute -quiet $obj bbox {{495.000 402.060} {495.280 402.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[60]} \
	-port {p[60]} \
	-layer METAL3 \
	-bbox {{495.000 403.180} {495.280 403.460}}

set obj [get_terminal {"p[60]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[60]}
set_attribute -quiet $obj bbox {{495.000 403.180} {495.280 403.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[61]} \
	-port {p[61]} \
	-layer METAL3 \
	-bbox {{495.000 404.860} {495.280 405.140}}

set obj [get_terminal {"p[61]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[61]}
set_attribute -quiet $obj bbox {{495.000 404.860} {495.280 405.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[62]} \
	-port {p[62]} \
	-layer METAL3 \
	-bbox {{495.000 405.980} {495.280 406.260}}

set obj [get_terminal {"p[62]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[62]}
set_attribute -quiet $obj bbox {{495.000 405.980} {495.280 406.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[63]} \
	-port {p[63]} \
	-layer METAL3 \
	-bbox {{495.000 407.100} {495.280 407.380}}

set obj [get_terminal {"p[63]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[63]}
set_attribute -quiet $obj bbox {{495.000 407.100} {495.280 407.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[64]} \
	-port {p[64]} \
	-layer METAL3 \
	-bbox {{495.000 408.220} {495.280 408.500}}

set obj [get_terminal {"p[64]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[64]}
set_attribute -quiet $obj bbox {{495.000 408.220} {495.280 408.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[65]} \
	-port {p[65]} \
	-layer METAL3 \
	-bbox {{495.000 409.900} {495.280 410.180}}

set obj [get_terminal {"p[65]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[65]}
set_attribute -quiet $obj bbox {{495.000 409.900} {495.280 410.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[66]} \
	-port {p[66]} \
	-layer METAL3 \
	-bbox {{495.000 411.020} {495.280 411.300}}

set obj [get_terminal {"p[66]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[66]}
set_attribute -quiet $obj bbox {{495.000 411.020} {495.280 411.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[67]} \
	-port {p[67]} \
	-layer METAL3 \
	-bbox {{495.000 412.140} {495.280 412.420}}

set obj [get_terminal {"p[67]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[67]}
set_attribute -quiet $obj bbox {{495.000 412.140} {495.280 412.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[68]} \
	-port {p[68]} \
	-layer METAL3 \
	-bbox {{495.000 413.260} {495.280 413.540}}

set obj [get_terminal {"p[68]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[68]}
set_attribute -quiet $obj bbox {{495.000 413.260} {495.280 413.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[69]} \
	-port {p[69]} \
	-layer METAL3 \
	-bbox {{495.000 414.940} {495.280 415.220}}

set obj [get_terminal {"p[69]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[69]}
set_attribute -quiet $obj bbox {{495.000 414.940} {495.280 415.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[70]} \
	-port {p[70]} \
	-layer METAL3 \
	-bbox {{495.000 416.060} {495.280 416.340}}

set obj [get_terminal {"p[70]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[70]}
set_attribute -quiet $obj bbox {{495.000 416.060} {495.280 416.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[71]} \
	-port {p[71]} \
	-layer METAL3 \
	-bbox {{495.000 417.180} {495.280 417.460}}

set obj [get_terminal {"p[71]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[71]}
set_attribute -quiet $obj bbox {{495.000 417.180} {495.280 417.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[72]} \
	-port {p[72]} \
	-layer METAL3 \
	-bbox {{495.000 418.860} {495.280 419.140}}

set obj [get_terminal {"p[72]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[72]}
set_attribute -quiet $obj bbox {{495.000 418.860} {495.280 419.140}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[73]} \
	-port {p[73]} \
	-layer METAL3 \
	-bbox {{495.000 419.980} {495.280 420.260}}

set obj [get_terminal {"p[73]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[73]}
set_attribute -quiet $obj bbox {{495.000 419.980} {495.280 420.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[74]} \
	-port {p[74]} \
	-layer METAL3 \
	-bbox {{495.000 421.100} {495.280 421.380}}

set obj [get_terminal {"p[74]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[74]}
set_attribute -quiet $obj bbox {{495.000 421.100} {495.280 421.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[75]} \
	-port {p[75]} \
	-layer METAL3 \
	-bbox {{495.000 422.220} {495.280 422.500}}

set obj [get_terminal {"p[75]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[75]}
set_attribute -quiet $obj bbox {{495.000 422.220} {495.280 422.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[76]} \
	-port {p[76]} \
	-layer METAL3 \
	-bbox {{495.000 423.900} {495.280 424.180}}

set obj [get_terminal {"p[76]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[76]}
set_attribute -quiet $obj bbox {{495.000 423.900} {495.280 424.180}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[77]} \
	-port {p[77]} \
	-layer METAL3 \
	-bbox {{495.000 425.020} {495.280 425.300}}

set obj [get_terminal {"p[77]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[77]}
set_attribute -quiet $obj bbox {{495.000 425.020} {495.280 425.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[78]} \
	-port {p[78]} \
	-layer METAL3 \
	-bbox {{495.000 426.140} {495.280 426.420}}

set obj [get_terminal {"p[78]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[78]}
set_attribute -quiet $obj bbox {{495.000 426.140} {495.280 426.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[79]} \
	-port {p[79]} \
	-layer METAL3 \
	-bbox {{495.000 427.260} {495.280 427.540}}

set obj [get_terminal {"p[79]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[79]}
set_attribute -quiet $obj bbox {{495.000 427.260} {495.280 427.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[80]} \
	-port {p[80]} \
	-layer METAL3 \
	-bbox {{495.000 428.940} {495.280 429.220}}

set obj [get_terminal {"p[80]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[80]}
set_attribute -quiet $obj bbox {{495.000 428.940} {495.280 429.220}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[81]} \
	-port {p[81]} \
	-layer METAL3 \
	-bbox {{495.000 430.060} {495.280 430.340}}

set obj [get_terminal {"p[81]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[81]}
set_attribute -quiet $obj bbox {{495.000 430.060} {495.280 430.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[82]} \
	-port {p[82]} \
	-layer METAL3 \
	-bbox {{495.000 431.180} {495.280 431.460}}

set obj [get_terminal {"p[82]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[82]}
set_attribute -quiet $obj bbox {{495.000 431.180} {495.280 431.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[83]} \
	-port {p[83]} \
	-layer METAL3 \
	-bbox {{495.000 432.300} {495.280 432.580}}

set obj [get_terminal {"p[83]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[83]}
set_attribute -quiet $obj bbox {{495.000 432.300} {495.280 432.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[84]} \
	-port {p[84]} \
	-layer METAL3 \
	-bbox {{495.000 433.980} {495.280 434.260}}

set obj [get_terminal {"p[84]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[84]}
set_attribute -quiet $obj bbox {{495.000 433.980} {495.280 434.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[85]} \
	-port {p[85]} \
	-layer METAL3 \
	-bbox {{495.000 435.100} {495.280 435.380}}

set obj [get_terminal {"p[85]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[85]}
set_attribute -quiet $obj bbox {{495.000 435.100} {495.280 435.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[86]} \
	-port {p[86]} \
	-layer METAL3 \
	-bbox {{495.000 436.220} {495.280 436.500}}

set obj [get_terminal {"p[86]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[86]}
set_attribute -quiet $obj bbox {{495.000 436.220} {495.280 436.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[87]} \
	-port {p[87]} \
	-layer METAL3 \
	-bbox {{495.000 437.340} {495.280 437.620}}

set obj [get_terminal {"p[87]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[87]}
set_attribute -quiet $obj bbox {{495.000 437.340} {495.280 437.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[88]} \
	-port {p[88]} \
	-layer METAL3 \
	-bbox {{495.000 439.020} {495.280 439.300}}

set obj [get_terminal {"p[88]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[88]}
set_attribute -quiet $obj bbox {{495.000 439.020} {495.280 439.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[89]} \
	-port {p[89]} \
	-layer METAL3 \
	-bbox {{495.000 440.140} {495.280 440.420}}

set obj [get_terminal {"p[89]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[89]}
set_attribute -quiet $obj bbox {{495.000 440.140} {495.280 440.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[90]} \
	-port {p[90]} \
	-layer METAL3 \
	-bbox {{495.000 441.260} {495.280 441.540}}

set obj [get_terminal {"p[90]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[90]}
set_attribute -quiet $obj bbox {{495.000 441.260} {495.280 441.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[91]} \
	-port {p[91]} \
	-layer METAL3 \
	-bbox {{495.000 442.380} {495.280 442.660}}

set obj [get_terminal {"p[91]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[91]}
set_attribute -quiet $obj bbox {{495.000 442.380} {495.280 442.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[92]} \
	-port {p[92]} \
	-layer METAL3 \
	-bbox {{495.000 444.060} {495.280 444.340}}

set obj [get_terminal {"p[92]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[92]}
set_attribute -quiet $obj bbox {{495.000 444.060} {495.280 444.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[93]} \
	-port {p[93]} \
	-layer METAL3 \
	-bbox {{495.000 445.180} {495.280 445.460}}

set obj [get_terminal {"p[93]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[93]}
set_attribute -quiet $obj bbox {{495.000 445.180} {495.280 445.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[94]} \
	-port {p[94]} \
	-layer METAL3 \
	-bbox {{495.000 446.300} {495.280 446.580}}

set obj [get_terminal {"p[94]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[94]}
set_attribute -quiet $obj bbox {{495.000 446.300} {495.280 446.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[95]} \
	-port {p[95]} \
	-layer METAL3 \
	-bbox {{495.000 447.980} {495.280 448.260}}

set obj [get_terminal {"p[95]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[95]}
set_attribute -quiet $obj bbox {{495.000 447.980} {495.280 448.260}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[96]} \
	-port {p[96]} \
	-layer METAL3 \
	-bbox {{495.000 449.100} {495.280 449.380}}

set obj [get_terminal {"p[96]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[96]}
set_attribute -quiet $obj bbox {{495.000 449.100} {495.280 449.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[97]} \
	-port {p[97]} \
	-layer METAL3 \
	-bbox {{495.000 450.220} {495.280 450.500}}

set obj [get_terminal {"p[97]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[97]}
set_attribute -quiet $obj bbox {{495.000 450.220} {495.280 450.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[98]} \
	-port {p[98]} \
	-layer METAL3 \
	-bbox {{495.000 451.340} {495.280 451.620}}

set obj [get_terminal {"p[98]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[98]}
set_attribute -quiet $obj bbox {{495.000 451.340} {495.280 451.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[99]} \
	-port {p[99]} \
	-layer METAL3 \
	-bbox {{495.000 453.020} {495.280 453.300}}

set obj [get_terminal {"p[99]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[99]}
set_attribute -quiet $obj bbox {{495.000 453.020} {495.280 453.300}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[100]} \
	-port {p[100]} \
	-layer METAL3 \
	-bbox {{495.000 454.140} {495.280 454.420}}

set obj [get_terminal {"p[100]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[100]}
set_attribute -quiet $obj bbox {{495.000 454.140} {495.280 454.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[101]} \
	-port {p[101]} \
	-layer METAL3 \
	-bbox {{495.000 455.260} {495.280 455.540}}

set obj [get_terminal {"p[101]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[101]}
set_attribute -quiet $obj bbox {{495.000 455.260} {495.280 455.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[102]} \
	-port {p[102]} \
	-layer METAL3 \
	-bbox {{495.000 456.380} {495.280 456.660}}

set obj [get_terminal {"p[102]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[102]}
set_attribute -quiet $obj bbox {{495.000 456.380} {495.280 456.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[103]} \
	-port {p[103]} \
	-layer METAL3 \
	-bbox {{495.000 458.060} {495.280 458.340}}

set obj [get_terminal {"p[103]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[103]}
set_attribute -quiet $obj bbox {{495.000 458.060} {495.280 458.340}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[104]} \
	-port {p[104]} \
	-layer METAL3 \
	-bbox {{495.000 459.180} {495.280 459.460}}

set obj [get_terminal {"p[104]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[104]}
set_attribute -quiet $obj bbox {{495.000 459.180} {495.280 459.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[105]} \
	-port {p[105]} \
	-layer METAL3 \
	-bbox {{495.000 460.300} {495.280 460.580}}

set obj [get_terminal {"p[105]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[105]}
set_attribute -quiet $obj bbox {{495.000 460.300} {495.280 460.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[106]} \
	-port {p[106]} \
	-layer METAL3 \
	-bbox {{495.000 461.420} {495.280 461.700}}

set obj [get_terminal {"p[106]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[106]}
set_attribute -quiet $obj bbox {{495.000 461.420} {495.280 461.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[107]} \
	-port {p[107]} \
	-layer METAL3 \
	-bbox {{495.000 463.100} {495.280 463.380}}

set obj [get_terminal {"p[107]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[107]}
set_attribute -quiet $obj bbox {{495.000 463.100} {495.280 463.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[108]} \
	-port {p[108]} \
	-layer METAL3 \
	-bbox {{495.000 464.220} {495.280 464.500}}

set obj [get_terminal {"p[108]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[108]}
set_attribute -quiet $obj bbox {{495.000 464.220} {495.280 464.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[109]} \
	-port {p[109]} \
	-layer METAL3 \
	-bbox {{495.000 465.340} {495.280 465.620}}

set obj [get_terminal {"p[109]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[109]}
set_attribute -quiet $obj bbox {{495.000 465.340} {495.280 465.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[110]} \
	-port {p[110]} \
	-layer METAL3 \
	-bbox {{495.000 466.460} {495.280 466.740}}

set obj [get_terminal {"p[110]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[110]}
set_attribute -quiet $obj bbox {{495.000 466.460} {495.280 466.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[111]} \
	-port {p[111]} \
	-layer METAL3 \
	-bbox {{495.000 468.140} {495.280 468.420}}

set obj [get_terminal {"p[111]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[111]}
set_attribute -quiet $obj bbox {{495.000 468.140} {495.280 468.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[112]} \
	-port {p[112]} \
	-layer METAL3 \
	-bbox {{495.000 469.260} {495.280 469.540}}

set obj [get_terminal {"p[112]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[112]}
set_attribute -quiet $obj bbox {{495.000 469.260} {495.280 469.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[113]} \
	-port {p[113]} \
	-layer METAL3 \
	-bbox {{495.000 470.380} {495.280 470.660}}

set obj [get_terminal {"p[113]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[113]}
set_attribute -quiet $obj bbox {{495.000 470.380} {495.280 470.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[114]} \
	-port {p[114]} \
	-layer METAL3 \
	-bbox {{495.000 471.500} {495.280 471.780}}

set obj [get_terminal {"p[114]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[114]}
set_attribute -quiet $obj bbox {{495.000 471.500} {495.280 471.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[115]} \
	-port {p[115]} \
	-layer METAL3 \
	-bbox {{495.000 473.180} {495.280 473.460}}

set obj [get_terminal {"p[115]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[115]}
set_attribute -quiet $obj bbox {{495.000 473.180} {495.280 473.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[116]} \
	-port {p[116]} \
	-layer METAL3 \
	-bbox {{495.000 474.300} {495.280 474.580}}

set obj [get_terminal {"p[116]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[116]}
set_attribute -quiet $obj bbox {{495.000 474.300} {495.280 474.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[117]} \
	-port {p[117]} \
	-layer METAL3 \
	-bbox {{495.000 475.420} {495.280 475.700}}

set obj [get_terminal {"p[117]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[117]}
set_attribute -quiet $obj bbox {{495.000 475.420} {495.280 475.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[118]} \
	-port {p[118]} \
	-layer METAL3 \
	-bbox {{495.000 477.100} {495.280 477.380}}

set obj [get_terminal {"p[118]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[118]}
set_attribute -quiet $obj bbox {{495.000 477.100} {495.280 477.380}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[119]} \
	-port {p[119]} \
	-layer METAL3 \
	-bbox {{495.000 478.220} {495.280 478.500}}

set obj [get_terminal {"p[119]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[119]}
set_attribute -quiet $obj bbox {{495.000 478.220} {495.280 478.500}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[120]} \
	-port {p[120]} \
	-layer METAL3 \
	-bbox {{495.000 479.340} {495.280 479.620}}

set obj [get_terminal {"p[120]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[120]}
set_attribute -quiet $obj bbox {{495.000 479.340} {495.280 479.620}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[121]} \
	-port {p[121]} \
	-layer METAL3 \
	-bbox {{495.000 480.460} {495.280 480.740}}

set obj [get_terminal {"p[121]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[121]}
set_attribute -quiet $obj bbox {{495.000 480.460} {495.280 480.740}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[122]} \
	-port {p[122]} \
	-layer METAL3 \
	-bbox {{495.000 482.140} {495.280 482.420}}

set obj [get_terminal {"p[122]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[122]}
set_attribute -quiet $obj bbox {{495.000 482.140} {495.280 482.420}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[123]} \
	-port {p[123]} \
	-layer METAL3 \
	-bbox {{495.000 483.260} {495.280 483.540}}

set obj [get_terminal {"p[123]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[123]}
set_attribute -quiet $obj bbox {{495.000 483.260} {495.280 483.540}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[124]} \
	-port {p[124]} \
	-layer METAL3 \
	-bbox {{495.000 484.380} {495.280 484.660}}

set obj [get_terminal {"p[124]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[124]}
set_attribute -quiet $obj bbox {{495.000 484.380} {495.280 484.660}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[125]} \
	-port {p[125]} \
	-layer METAL3 \
	-bbox {{495.000 485.500} {495.280 485.780}}

set obj [get_terminal {"p[125]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[125]}
set_attribute -quiet $obj bbox {{495.000 485.500} {495.280 485.780}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[126]} \
	-port {p[126]} \
	-layer METAL3 \
	-bbox {{495.000 487.180} {495.280 487.460}}

set obj [get_terminal {"p[126]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[126]}
set_attribute -quiet $obj bbox {{495.000 487.180} {495.280 487.460}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {p[127]} \
	-port {p[127]} \
	-layer METAL3 \
	-bbox {{495.000 488.300} {495.280 488.580}}

set obj [get_terminal {"p[127]"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {p[127]}
set_attribute -quiet $obj bbox {{495.000 488.300} {495.280 488.580}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {start} \
	-port {start} \
	-layer METAL3 \
	-bbox {{495.000 489.420} {495.280 489.700}}

set obj [get_terminal {"start"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {start}
set_attribute -quiet $obj bbox {{495.000 489.420} {495.280 489.700}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction input
set_attribute -quiet $obj eeq_class 0

create_terminal \
	-name {done} \
	-port {done} \
	-layer METAL3 \
	-bbox {{495.000 490.540} {495.280 490.820}}

set obj [get_terminal {"done"}]
set_attribute -quiet $obj layer  METAL3
set_attribute -quiet $obj owner_port  {done}
set_attribute -quiet $obj bbox {{495.000 490.540} {495.280 490.820}}
set_attribute -quiet $obj status Unplaced
set_attribute -quiet $obj access_direction Right
set_attribute -quiet $obj direction output
set_attribute -quiet $obj eeq_class 0

#***********
#  Track  
# obj#: 13 
# objects are in arbitrary ordering 
#***********

remove_preferred_routing_direction -layer METAL1
remove_track -layer METAL1 -dir Y
remove_track -layer METAL1 -dir X
set_preferred_routing_direction -layer METAL1 -dir horizontal

remove_preferred_routing_direction -layer METAL2
remove_track -layer METAL2 -dir Y
remove_track -layer METAL2 -dir X
set_preferred_routing_direction -layer METAL2 -dir vertical

remove_preferred_routing_direction -layer METAL3
remove_track -layer METAL3 -dir Y
remove_track -layer METAL3 -dir X
set_preferred_routing_direction -layer METAL3 -dir horizontal

remove_preferred_routing_direction -layer METAL4
remove_track -layer METAL4 -dir Y
remove_track -layer METAL4 -dir X
set_preferred_routing_direction -layer METAL4 -dir vertical

remove_preferred_routing_direction -layer METAL5
remove_track -layer METAL5 -dir Y
remove_track -layer METAL5 -dir X
set_preferred_routing_direction -layer METAL5 -dir horizontal


create_track \
	-layer METAL1 \
	-dir Y \
	-coord 0.680 \
	-space 0.560 \
	-count 882 \
	-bounding_box {{0.000 0.680} {495.280 494.040}}

create_track \
	-layer METAL2 \
	-dir Y \
	-coord 0.680 \
	-space 0.560 \
	-count 882 \
	-bounding_box {{0.000 0.680} {495.280 494.040}}

create_track \
	-layer METAL2 \
	-dir X \
	-coord 0.680 \
	-space 0.560 \
	-count 883 \
	-bounding_box {{0.680 0.000} {494.600 494.720}}

create_track \
	-layer METAL1 \
	-dir X \
	-coord 0.680 \
	-space 0.560 \
	-count 883 \
	-bounding_box {{0.680 0.000} {494.600 494.720}}

create_track \
	-layer METAL3 \
	-dir X \
	-coord 0.680 \
	-space 0.560 \
	-count 883 \
	-bounding_box {{0.680 0.000} {494.600 494.720}}

create_track \
	-layer METAL3 \
	-dir Y \
	-coord 0.680 \
	-space 0.560 \
	-count 882 \
	-bounding_box {{0.000 0.680} {495.280 494.040}}

create_track \
	-layer METAL2 \
	-dir Y \
	-coord 0.680 \
	-space 0.560 \
	-count 882 \
	-bounding_box {{0.000 0.680} {495.280 494.040}}

create_track \
	-layer METAL4 \
	-dir Y \
	-coord 0.680 \
	-space 0.560 \
	-count 882 \
	-bounding_box {{0.000 0.680} {495.280 494.040}}

create_track \
	-layer METAL4 \
	-dir X \
	-coord 0.680 \
	-space 0.560 \
	-count 883 \
	-bounding_box {{0.680 0.000} {494.600 494.720}}

create_track \
	-layer METAL3 \
	-dir X \
	-coord 0.680 \
	-space 0.560 \
	-count 883 \
	-bounding_box {{0.680 0.000} {494.600 494.720}}

create_track \
	-layer METAL5 \
	-dir X \
	-coord 0.680 \
	-space 0.560 \
	-count 883 \
	-bounding_box {{0.680 0.000} {494.600 494.720}}

create_track \
	-layer METAL5 \
	-dir Y \
	-coord 0.480 \
	-space 0.900 \
	-count 549 \
	-bounding_box {{0.000 0.480} {495.280 493.680}}

create_track \
	-layer METAL4 \
	-dir Y \
	-coord 0.480 \
	-space 0.900 \
	-count 549 \
	-bounding_box {{0.000 0.480} {495.280 493.680}}

#*********
#  Row  
# obj#: 116 
# objects are in arbitrary ordering 
#*********

remove_base_array -all

create_base_array  \
	-tile_name unit  \
	-direction horizontal \
	-coordinate {{20.000 20.000} {475.280 474.720}} 

cut_row -all

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 443.360} {475.280 447.280}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 447.280} {475.280 451.200}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 451.200} {475.280 455.120}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 455.120} {475.280 459.040}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 459.040} {475.280 462.960}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 462.960} {475.280 466.880}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 466.880} {475.280 470.800}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 470.800} {475.280 474.720}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 302.240} {475.280 306.160}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 306.160} {475.280 310.080}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 310.080} {475.280 314.000}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 314.000} {475.280 317.920}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 317.920} {475.280 321.840}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 321.840} {475.280 325.760}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 325.760} {475.280 329.680}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 329.680} {475.280 333.600}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 333.600} {475.280 337.520}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 337.520} {475.280 341.440}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 341.440} {475.280 345.360}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 345.360} {475.280 349.280}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 349.280} {475.280 353.200}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 353.200} {475.280 357.120}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 357.120} {475.280 361.040}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 361.040} {475.280 364.960}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 364.960} {475.280 368.880}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 368.880} {475.280 372.800}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 372.800} {475.280 376.720}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 376.720} {475.280 380.640}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 380.640} {475.280 384.560}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 384.560} {475.280 388.480}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 388.480} {475.280 392.400}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 392.400} {475.280 396.320}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 396.320} {475.280 400.240}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 400.240} {475.280 404.160}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 404.160} {475.280 408.080}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 408.080} {475.280 412.000}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 412.000} {475.280 415.920}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 415.920} {475.280 419.840}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 419.840} {475.280 423.760}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 423.760} {475.280 427.680}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 427.680} {475.280 431.600}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 431.600} {475.280 435.520}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 435.520} {475.280 439.440}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 439.440} {475.280 443.360}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 161.120} {475.280 165.040}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 165.040} {475.280 168.960}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 168.960} {475.280 172.880}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 172.880} {475.280 176.800}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 176.800} {475.280 180.720}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 180.720} {475.280 184.640}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 184.640} {475.280 188.560}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 188.560} {475.280 192.480}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 192.480} {475.280 196.400}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 196.400} {475.280 200.320}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 200.320} {475.280 204.240}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 204.240} {475.280 208.160}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 208.160} {475.280 212.080}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 212.080} {475.280 216.000}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 216.000} {475.280 219.920}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 219.920} {475.280 223.840}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 223.840} {475.280 227.760}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 227.760} {475.280 231.680}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 231.680} {475.280 235.600}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 235.600} {475.280 239.520}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 239.520} {475.280 243.440}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 243.440} {475.280 247.360}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 247.360} {475.280 251.280}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 251.280} {475.280 255.200}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 255.200} {475.280 259.120}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 259.120} {475.280 263.040}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 263.040} {475.280 266.960}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 266.960} {475.280 270.880}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 270.880} {475.280 274.800}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 274.800} {475.280 278.720}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 278.720} {475.280 282.640}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 282.640} {475.280 286.560}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 286.560} {475.280 290.480}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 290.480} {475.280 294.400}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 294.400} {475.280 298.320}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 298.320} {475.280 302.240}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 20.000} {475.280 23.920}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 23.920} {475.280 27.840}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 27.840} {475.280 31.760}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 31.760} {475.280 35.680}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 35.680} {475.280 39.600}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 39.600} {475.280 43.520}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 43.520} {475.280 47.440}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 47.440} {475.280 51.360}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 51.360} {475.280 55.280}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 55.280} {475.280 59.200}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 59.200} {475.280 63.120}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 63.120} {475.280 67.040}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 67.040} {475.280 70.960}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 70.960} {475.280 74.880}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 74.880} {475.280 78.800}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 78.800} {475.280 82.720}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 82.720} {475.280 86.640}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 86.640} {475.280 90.560}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 90.560} {475.280 94.480}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 94.480} {475.280 98.400}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 98.400} {475.280 102.320}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 102.320} {475.280 106.240}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 106.240} {475.280 110.160}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 110.160} {475.280 114.080}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 114.080} {475.280 118.000}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 118.000} {475.280 121.920}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 121.920} {475.280 125.840}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 125.840} {475.280 129.760}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 129.760} {475.280 133.680}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 133.680} {475.280 137.600}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 137.600} {475.280 141.520}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 141.520} {475.280 145.440}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 145.440} {475.280 149.360}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 149.360} {475.280 153.280}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-allow_overlap \
	-within {{20.000 153.280} {475.280 157.200}}

add_row  \
	-tile_name unit \
	-direction horizontal \
	-snap_to_row_direction none \
	-snap_to_orthogonal_row_direction none \
	-flip_first_row \
	-allow_overlap \
	-within {{20.000 157.200} {475.280 161.120}}

update_floorplan

remove_bounds -all



#***************

#  Pre Route  

#***************

remove_net_shape *
remove_via *
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 459.04}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 443.36}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 455.12}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 451.2}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 447.28}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 439.44}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 435.52}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 431.6}
create_net_shape -no_snap -type wire -net VSS -layer METAL3 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 490.2 -origin {2.54 6.6}
create_net_shape -no_snap -type wire -net VDD -layer METAL3 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 473.28 -origin {11 15}
create_net_shape -no_snap -type wire -net VSS -layer METAL3 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 490.2 -origin {2.54 488.12}
create_net_shape -no_snap -type wire -net VDD -layer METAL3 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 473.28 -origin {11 479.72}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 51.36}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 55.28}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 59.2}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 39.6}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 47.44}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 43.52}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 35.68}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 23.92}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 20}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 31.76}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 27.84}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 63.12}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 67.04}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 70.96}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 74.88}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 78.8}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 90.56}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 94.48}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 82.72}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 86.64}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 102.32}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 106.24}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 98.4}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 110.16}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 118}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 121.92}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 114.08}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 180.72}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 176.8}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 165.04}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 172.88}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 168.96}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 161.12}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 157.2}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 145.44}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 153.28}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 149.36}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 125.84}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 129.76}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 137.6}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 141.52}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 133.68}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 243.44}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 239.52}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 235.6}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 223.84}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 231.68}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 227.76}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 208.16}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 212.08}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 219.92}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 216}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 204.24}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 192.48}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 200.32}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 196.4}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 188.56}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 184.64}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 306.16}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 302.24}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 286.56}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 290.48}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 298.32}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 294.4}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 282.64}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 278.72}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 274.8}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 270.88}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 266.96}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 263.04}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 259.12}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 255.2}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 251.28}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 247.36}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 364.96}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 361.04}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 349.28}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 357.12}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 353.2}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 333.6}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 337.52}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 345.36}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 341.44}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 329.68}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 317.92}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 325.76}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 321.84}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 314}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 310.08}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 427.68}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 412}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 415.92}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 423.76}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 419.84}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 400.24}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 396.32}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 408.08}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 404.16}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 384.56}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 392.4}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 388.48}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 380.64}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 376.72}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 372.8}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 368.88}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 474.72}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 462.96}
create_net_shape -no_snap -type wire -net VDD -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 473.28 -origin {11 470.8}
create_net_shape -no_snap -type wire -net VSS -layer METAL1 -datatype 0 -path_type 0 -width 0.47 -route_type pg_std_cell_pin_conn -length 490.2 -origin {2.54 466.88}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 489.52 -origin {6.54 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 489.52 -origin {488.74 2.6}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 472.72 -origin {15 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 8 -route_type pg_ring -length 472.72 -origin {480.28 11}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {456.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {414.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {372.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {330.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {288.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {453 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {411 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {369 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {327 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {285 11}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {246.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {204.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {162.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {120.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {78.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VSS -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 489.52 -origin {36.12 2.6}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {243 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {201 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {159 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {117 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {75 11}
create_net_shape -no_snap -type wire -vertical -net VDD -layer METAL4 -datatype 0 -path_type 0 -width 2 -route_type pg_strap -length 472.72 -origin {33 11}
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 427.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 412} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 415.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 423.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 419.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 400.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 408.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 404.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 443.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 455.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 451.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 447.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 439.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 435.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 431.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 474.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 462.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 470.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 466.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 459.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 364.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 361.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 349.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 357.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 353.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 337.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 345.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 341.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 396.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 384.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 392.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 388.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 380.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 376.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 372.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 368.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 302.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 286.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 290.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 298.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 294.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 282.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 278.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 333.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 329.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 317.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 325.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 321.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 306.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 314} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 310.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 443.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 455.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 451.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 447.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 439.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 435.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 431.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 474.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 462.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 470.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 466.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 459.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 427.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 412} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 415.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 423.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 419.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 400.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 408.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 404.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 341.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 396.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 384.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 392.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 388.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 380.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 376.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 372.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 368.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 266.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 263.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 259.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 255.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 251.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 247.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 302.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 286.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 290.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 298.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 294.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 282.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 278.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 333.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 329.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 317.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 325.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 321.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 306.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 314} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 310.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 364.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 361.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 349.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 357.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 353.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 337.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 345.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 208.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 212.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 204.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 192.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 200.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 196.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 188.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 184.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 243.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 239.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 235.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 223.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 231.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 227.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 219.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 216} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 274.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 270.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 180.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 176.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 165.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 172.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 168.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 161.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 157.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 153.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 114.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 118} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 110.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 98.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 106.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 102.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 94.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 145.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 149.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 133.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 141.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 137.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 129.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 125.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 121.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 51.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 55.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 59.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 39.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 47.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 43.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 35.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 31.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 86.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 82.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 90.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 78.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 74.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 70.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 67.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 63.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 208.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 212.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 204.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 192.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 200.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 196.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 188.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 184.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 243.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 239.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 235.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 223.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 231.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 227.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 219.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 216} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 274.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 270.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 266.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 263.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 259.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 255.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 251.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 247.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 180.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 176.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 165.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 172.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 168.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 161.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 157.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 153.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 145.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 149.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 133.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 141.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 137.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 129.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 125.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 121.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 20} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {6.54 27.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 51.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 55.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 59.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 39.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 47.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 43.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 35.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 31.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 86.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 82.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 90.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 78.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 74.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 70.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 67.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 63.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 114.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 118} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 110.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 98.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 106.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 102.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 94.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 443.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 455.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 451.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 447.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 439.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 435.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 431.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 474.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 462.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 470.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 466.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 459.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {480.28 23.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {453 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {411 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {369 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {327 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {285 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 20} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {488.74 27.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {456.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {414.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {372.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {330.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {288.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {243 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {201 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {159 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {246.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {204.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {162.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {117 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {75 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {33 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA12 -route_type pg_std_cell_pin_conn -at {15 23.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {120.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {78.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA12 -route_type pg_std_cell_pin_conn -at {36.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 427.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 412} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 415.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 423.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 419.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 400.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 408.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 404.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 364.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 361.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 349.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 357.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 353.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 337.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 345.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 341.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 396.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 384.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 392.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 388.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 380.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 376.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 372.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 368.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 302.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 286.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 290.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 298.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 294.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 282.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 278.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 333.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 329.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 317.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 325.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 321.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 306.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 314} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 310.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 474.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 462.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 470.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 466.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 459.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 427.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 412} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 415.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 423.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 419.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 400.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 408.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 404.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 443.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 455.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 451.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 447.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 439.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 435.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 431.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 325.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 321.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 306.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 314} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 310.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 364.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 361.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 349.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 357.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 353.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 337.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 345.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 341.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 396.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 384.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 392.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 388.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 380.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 376.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 372.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 368.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 243.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 239.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 235.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 223.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 231.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 227.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 219.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 216} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 274.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 270.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 266.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 263.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 259.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 255.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 251.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 247.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 302.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 286.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 290.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 298.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 294.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 282.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 278.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 333.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 329.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 317.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 180.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 176.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 165.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 172.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 168.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 161.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 157.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 153.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 208.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 212.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 204.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 192.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 200.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 196.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 188.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 184.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 114.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 118} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 110.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 98.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 106.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 102.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 94.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 145.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 149.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 133.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 141.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 137.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 129.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 125.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 121.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 51.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 55.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 59.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 39.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 47.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 43.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 35.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 31.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 86.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 82.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 90.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 78.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 74.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 70.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 67.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 63.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 243.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 239.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 235.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 223.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 231.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 227.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 219.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 216} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 274.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 270.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 266.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 263.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 259.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 255.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 251.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 247.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 180.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 176.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 165.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 172.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 168.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 161.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 157.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 153.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 208.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 212.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 204.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 192.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 200.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 196.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 188.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 184.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 74.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 70.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 67.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 63.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 114.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 118} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 110.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 98.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 106.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 102.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 94.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 145.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 149.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 133.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 141.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 137.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 129.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 125.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 121.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 431.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 474.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 462.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 470.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 466.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 23.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {411 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {369 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {327 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {285 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 20} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 27.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {414.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {372.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {330.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {288.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {243 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {201 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {159 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {246.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {204.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {162.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {117 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {75 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {33 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {15 23.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 20} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {120.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {78.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {36.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {6.54 27.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 51.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 55.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 59.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 39.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 47.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 43.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 35.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 31.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {456.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {453 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 86.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 82.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA23 -route_type pg_std_cell_pin_conn -at {488.74 90.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA23 -route_type pg_std_cell_pin_conn -at {480.28 78.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 400.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 396.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 384.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 392.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 388.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 380.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 376.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 372.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 427.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 412} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 415.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 423.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 419.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 408.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 404.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 459.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 443.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 455.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 451.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 447.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 439.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 435.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 329.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 317.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 325.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 321.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 314} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 310.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 368.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 364.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 361.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 349.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 357.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 353.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 345.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 341.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 274.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 270.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 266.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 263.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 259.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 255.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 251.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 306.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 302.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 286.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 290.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 298.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 294.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 282.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 278.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 333.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 337.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 427.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 412} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 415.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 423.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 419.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 408.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 404.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 372.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 415.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 423.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 408.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 427.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 412} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 419.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 404.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 459.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 443.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 455.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 451.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 447.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 439.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 435.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 431.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 435.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 431.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 474.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 462.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 470.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 466.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 474.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 462.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 470.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 466.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 459.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 443.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 455.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 451.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 447.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 439.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 400.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 396.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 384.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 392.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 388.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 380.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 376.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 372.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 400.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 396.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 384.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 392.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 388.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 380.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 376.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 368.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 364.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 361.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 349.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 357.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 353.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 345.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 341.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 321.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 314} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 310.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 368.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 361.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 353.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 345.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 364.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 349.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 357.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 341.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 227.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 219.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 274.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 270.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 266.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 263.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 259.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 255.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 251.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 306.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 302.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 286.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 290.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 298.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 294.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 282.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 278.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 274.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 266.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 259.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 251.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 270.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 263.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 255.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 306.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 290.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 298.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 282.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 302.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 286.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 294.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 278.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 333.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 337.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 329.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 317.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 325.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 321.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 314} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 310.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 333.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 337.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 329.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 317.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 325.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 165.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 172.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 168.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 161.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 157.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 208.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 212.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 216} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 204.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 192.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 200.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 196.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 188.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 247.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 243.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 239.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 235.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 223.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 231.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 145.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 153.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 149.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 133.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 141.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 137.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 129.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 125.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 184.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 180.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 176.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 86.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 82.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 94.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 90.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 78.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 74.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 70.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 67.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 114.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 121.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 118} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 110.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 98.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 106.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 102.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {78.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 23.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 20} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 31.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 27.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {36.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 51.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 55.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 63.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 59.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 39.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {33 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {15 47.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 43.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {6.54 35.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {117 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {120.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {75 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {204.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {201 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {162.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {159 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {243 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {246.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 216} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 204.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 192.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 200.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 196.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 188.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 247.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 243.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 239.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 235.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 223.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 231.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 227.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 219.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 212.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 204.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 196.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 188.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 208.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 216} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 192.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 200.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 243.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 235.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 227.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 219.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 247.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 239.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 223.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 231.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 145.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 153.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 149.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 133.68} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 141.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 137.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 129.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 125.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 184.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 180.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 176.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 165.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 172.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 168.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 161.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 157.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 149.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 133.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 141.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 125.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 145.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 153.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 137.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 129.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 180.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 165.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 172.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 157.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 184.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 176.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 168.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 161.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 208.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 212.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {369 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {330.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {327 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {285 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {288.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 55.28} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 63.12} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 39.6} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 47.44} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 51.36} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 59.2} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 43.52} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 35.68} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 86.64} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 82.72} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 94.48} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 90.56} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 78.8} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 74.88} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 70.96} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 67.04} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 114.08} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 121.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 118} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 110.16} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 98.4} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 106.24} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 102.32} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 114.08} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 121.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 118} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 110.16} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 98.4} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 106.24} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 102.32} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 86.64} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 94.48} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 78.8} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {411 70.96} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {414.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 82.72} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 90.56} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 74.88} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {372.12 67.04} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_ring -at {6.54 488.12} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_ring -at {6.54 6.6} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_ring -at {488.74 488.12} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_ring -at {488.74 6.6} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_ring -at {15 479.72} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_ring -at {15 15} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_ring -at {480.28 479.72} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_ring -at {480.28 15} -orient N -col 15 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {456.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {414.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {372.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {330.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {288.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {453 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {411 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {369 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {327 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {285 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {246.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {204.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {162.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {120.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {78.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {36.12 6.6} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {243 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {201 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {159 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {117 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {75 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {33 15} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {456.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {414.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {372.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {330.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {288.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {453 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {411 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {369 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {327 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {285 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {246.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {204.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {162.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {120.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {78.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_strap -at {36.12 488.12} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {243 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {201 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {159 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {117 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {75 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_strap -at {33 479.72} -orient N -col 4 -row 15 -x_pitch 0.52 -y_pitch 0.52
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 23.92} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 20} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 31.76} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 27.84} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 23.92} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 20} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {453 31.76} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {456.12 27.84} -orient N -col 4 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 51.36} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 55.28} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 63.12} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 59.2} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 39.6} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VDD -master VIA34 -route_type pg_std_cell_pin_conn -at {480.28 47.44} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 43.52} -orient N -col 15 -row 1 -x_pitch 0.52 
create_via -no_snap -type via_array -net VSS -master VIA34 -route_type pg_std_cell_pin_conn -at {488.74 35.68} -orient N -col 15 -row 1 -x_pitch 0.52 


set_object_snap_type -enabled $oldSnapState
undo_config -enable
