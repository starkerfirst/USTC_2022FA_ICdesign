###################################################################

# Created by write_sdc on Sun Jan  2 03:43:49 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max WCCOM -max_library tcb018gbwp7twc_ccs\
                         -min BCCOM -min_library tcb018gbwp7tbc_ccs
set_max_fanout 32 [current_design]
set_max_transition 0.5 [current_design]
set_max_area 0
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports clk]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
reset_n]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[127]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[126]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[125]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[124]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[123]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[122]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[121]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[120]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[119]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[118]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[117]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[116]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[115]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[114]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[113]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[112]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[111]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[110]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[109]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[108]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[107]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[106]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[105]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[104]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[103]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[102]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[101]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[100]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[99]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[98]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[97]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[96]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[95]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[94]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[93]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[92]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[91]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[90]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[89]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[88]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[87]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[86]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[85]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[84]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[83]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[82]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[81]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[80]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[79]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[78]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[77]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[76]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[75]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[74]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[73]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[72]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[71]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[70]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[69]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[68]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[67]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[66]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[65]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[64]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[63]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[62]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[61]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[60]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[59]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[58]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[57]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[56]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[55]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[54]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[53]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[52]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[51]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[50]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[49]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[48]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[47]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[46]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[45]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[44]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[43]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[42]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[41]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[40]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[39]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[38]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[37]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[36]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[35]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[34]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[33]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[32]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[31]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[30]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[29]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[28]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[27]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[26]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[25]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[24]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[23]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[22]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[21]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[20]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[19]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[18]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[17]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[16]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[15]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[14]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[13]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[12]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[11]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[10]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[9]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[8]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[7]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[6]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[5]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[4]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[3]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[2]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[1]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{k[0]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[127]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[126]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[125]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[124]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[123]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[122]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[121]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[120]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[119]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[118]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[117]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[116]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[115]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[114]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[113]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[112]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[111]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[110]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[109]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[108]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[107]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[106]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[105]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[104]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[103]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[102]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[101]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[100]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[99]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[98]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[97]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[96]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[95]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[94]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[93]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[92]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[91]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[90]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[89]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[88]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[87]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[86]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[85]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[84]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[83]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[82]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[81]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[80]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[79]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[78]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[77]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[76]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[75]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[74]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[73]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[72]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[71]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[70]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[69]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[68]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[67]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[66]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[65]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[64]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[63]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[62]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[61]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[60]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[59]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[58]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[57]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[56]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[55]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[54]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[53]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[52]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[51]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[50]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[49]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[48]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[47]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[46]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[45]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[44]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[43]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[42]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[41]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[40]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[39]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[38]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[37]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[36]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[35]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[34]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[33]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[32]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[31]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[30]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[29]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[28]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[27]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[26]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[25]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[24]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[23]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[22]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[21]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[20]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[19]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[18]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[17]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[16]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[15]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[14]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[13]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[12]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[11]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[10]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[9]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[8]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[7]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[6]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[5]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[4]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[3]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[2]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[1]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports       \
{p[0]}]
set_driving_cell -lib_cell BUFFD1BWP7T -pin Z -no_design_rule [get_ports start]
set_load -pin_load 0.103347 [get_ports {c[127]}]
set_load -pin_load 0.103347 [get_ports {c[126]}]
set_load -pin_load 0.103347 [get_ports {c[125]}]
set_load -pin_load 0.103347 [get_ports {c[124]}]
set_load -pin_load 0.103347 [get_ports {c[123]}]
set_load -pin_load 0.103347 [get_ports {c[122]}]
set_load -pin_load 0.103347 [get_ports {c[121]}]
set_load -pin_load 0.103347 [get_ports {c[120]}]
set_load -pin_load 0.103347 [get_ports {c[119]}]
set_load -pin_load 0.103347 [get_ports {c[118]}]
set_load -pin_load 0.103347 [get_ports {c[117]}]
set_load -pin_load 0.103347 [get_ports {c[116]}]
set_load -pin_load 0.103347 [get_ports {c[115]}]
set_load -pin_load 0.103347 [get_ports {c[114]}]
set_load -pin_load 0.103347 [get_ports {c[113]}]
set_load -pin_load 0.103347 [get_ports {c[112]}]
set_load -pin_load 0.103347 [get_ports {c[111]}]
set_load -pin_load 0.103347 [get_ports {c[110]}]
set_load -pin_load 0.103347 [get_ports {c[109]}]
set_load -pin_load 0.103347 [get_ports {c[108]}]
set_load -pin_load 0.103347 [get_ports {c[107]}]
set_load -pin_load 0.103347 [get_ports {c[106]}]
set_load -pin_load 0.103347 [get_ports {c[105]}]
set_load -pin_load 0.103347 [get_ports {c[104]}]
set_load -pin_load 0.103347 [get_ports {c[103]}]
set_load -pin_load 0.103347 [get_ports {c[102]}]
set_load -pin_load 0.103347 [get_ports {c[101]}]
set_load -pin_load 0.103347 [get_ports {c[100]}]
set_load -pin_load 0.103347 [get_ports {c[99]}]
set_load -pin_load 0.103347 [get_ports {c[98]}]
set_load -pin_load 0.103347 [get_ports {c[97]}]
set_load -pin_load 0.103347 [get_ports {c[96]}]
set_load -pin_load 0.103347 [get_ports {c[95]}]
set_load -pin_load 0.103347 [get_ports {c[94]}]
set_load -pin_load 0.103347 [get_ports {c[93]}]
set_load -pin_load 0.103347 [get_ports {c[92]}]
set_load -pin_load 0.103347 [get_ports {c[91]}]
set_load -pin_load 0.103347 [get_ports {c[90]}]
set_load -pin_load 0.103347 [get_ports {c[89]}]
set_load -pin_load 0.103347 [get_ports {c[88]}]
set_load -pin_load 0.103347 [get_ports {c[87]}]
set_load -pin_load 0.103347 [get_ports {c[86]}]
set_load -pin_load 0.103347 [get_ports {c[85]}]
set_load -pin_load 0.103347 [get_ports {c[84]}]
set_load -pin_load 0.103347 [get_ports {c[83]}]
set_load -pin_load 0.103347 [get_ports {c[82]}]
set_load -pin_load 0.103347 [get_ports {c[81]}]
set_load -pin_load 0.103347 [get_ports {c[80]}]
set_load -pin_load 0.103347 [get_ports {c[79]}]
set_load -pin_load 0.103347 [get_ports {c[78]}]
set_load -pin_load 0.103347 [get_ports {c[77]}]
set_load -pin_load 0.103347 [get_ports {c[76]}]
set_load -pin_load 0.103347 [get_ports {c[75]}]
set_load -pin_load 0.103347 [get_ports {c[74]}]
set_load -pin_load 0.103347 [get_ports {c[73]}]
set_load -pin_load 0.103347 [get_ports {c[72]}]
set_load -pin_load 0.103347 [get_ports {c[71]}]
set_load -pin_load 0.103347 [get_ports {c[70]}]
set_load -pin_load 0.103347 [get_ports {c[69]}]
set_load -pin_load 0.103347 [get_ports {c[68]}]
set_load -pin_load 0.103347 [get_ports {c[67]}]
set_load -pin_load 0.103347 [get_ports {c[66]}]
set_load -pin_load 0.103347 [get_ports {c[65]}]
set_load -pin_load 0.103347 [get_ports {c[64]}]
set_load -pin_load 0.103347 [get_ports {c[63]}]
set_load -pin_load 0.103347 [get_ports {c[62]}]
set_load -pin_load 0.103347 [get_ports {c[61]}]
set_load -pin_load 0.103347 [get_ports {c[60]}]
set_load -pin_load 0.103347 [get_ports {c[59]}]
set_load -pin_load 0.103347 [get_ports {c[58]}]
set_load -pin_load 0.103347 [get_ports {c[57]}]
set_load -pin_load 0.103347 [get_ports {c[56]}]
set_load -pin_load 0.103347 [get_ports {c[55]}]
set_load -pin_load 0.103347 [get_ports {c[54]}]
set_load -pin_load 0.103347 [get_ports {c[53]}]
set_load -pin_load 0.103347 [get_ports {c[52]}]
set_load -pin_load 0.103347 [get_ports {c[51]}]
set_load -pin_load 0.103347 [get_ports {c[50]}]
set_load -pin_load 0.103347 [get_ports {c[49]}]
set_load -pin_load 0.103347 [get_ports {c[48]}]
set_load -pin_load 0.103347 [get_ports {c[47]}]
set_load -pin_load 0.103347 [get_ports {c[46]}]
set_load -pin_load 0.103347 [get_ports {c[45]}]
set_load -pin_load 0.103347 [get_ports {c[44]}]
set_load -pin_load 0.103347 [get_ports {c[43]}]
set_load -pin_load 0.103347 [get_ports {c[42]}]
set_load -pin_load 0.103347 [get_ports {c[41]}]
set_load -pin_load 0.103347 [get_ports {c[40]}]
set_load -pin_load 0.103347 [get_ports {c[39]}]
set_load -pin_load 0.103347 [get_ports {c[38]}]
set_load -pin_load 0.103347 [get_ports {c[37]}]
set_load -pin_load 0.103347 [get_ports {c[36]}]
set_load -pin_load 0.103347 [get_ports {c[35]}]
set_load -pin_load 0.103347 [get_ports {c[34]}]
set_load -pin_load 0.103347 [get_ports {c[33]}]
set_load -pin_load 0.103347 [get_ports {c[32]}]
set_load -pin_load 0.103347 [get_ports {c[31]}]
set_load -pin_load 0.103347 [get_ports {c[30]}]
set_load -pin_load 0.103347 [get_ports {c[29]}]
set_load -pin_load 0.103347 [get_ports {c[28]}]
set_load -pin_load 0.103347 [get_ports {c[27]}]
set_load -pin_load 0.103347 [get_ports {c[26]}]
set_load -pin_load 0.103347 [get_ports {c[25]}]
set_load -pin_load 0.103347 [get_ports {c[24]}]
set_load -pin_load 0.103347 [get_ports {c[23]}]
set_load -pin_load 0.103347 [get_ports {c[22]}]
set_load -pin_load 0.103347 [get_ports {c[21]}]
set_load -pin_load 0.103347 [get_ports {c[20]}]
set_load -pin_load 0.103347 [get_ports {c[19]}]
set_load -pin_load 0.103347 [get_ports {c[18]}]
set_load -pin_load 0.103347 [get_ports {c[17]}]
set_load -pin_load 0.103347 [get_ports {c[16]}]
set_load -pin_load 0.103347 [get_ports {c[15]}]
set_load -pin_load 0.103347 [get_ports {c[14]}]
set_load -pin_load 0.103347 [get_ports {c[13]}]
set_load -pin_load 0.103347 [get_ports {c[12]}]
set_load -pin_load 0.103347 [get_ports {c[11]}]
set_load -pin_load 0.103347 [get_ports {c[10]}]
set_load -pin_load 0.103347 [get_ports {c[9]}]
set_load -pin_load 0.103347 [get_ports {c[8]}]
set_load -pin_load 0.103347 [get_ports {c[7]}]
set_load -pin_load 0.103347 [get_ports {c[6]}]
set_load -pin_load 0.103347 [get_ports {c[5]}]
set_load -pin_load 0.103347 [get_ports {c[4]}]
set_load -pin_load 0.103347 [get_ports {c[3]}]
set_load -pin_load 0.103347 [get_ports {c[2]}]
set_load -pin_load 0.103347 [get_ports {c[1]}]
set_load -pin_load 0.103347 [get_ports {c[0]}]
set_load -pin_load 0.103347 [get_ports done]
set_max_transition 0.5 [get_ports clk]
set_propagated_clock [get_ports clk]
create_clock [get_ports clk]  -period 40  -waveform {0 20}
set_clock_uncertainty -setup 0.5  [get_clocks clk]
group_path -name FEEDTHROUGH  -from [list [get_ports reset_n] [get_ports {k[127]}] [get_ports {k[126]}]     \
[get_ports {k[125]}] [get_ports {k[124]}] [get_ports {k[123]}] [get_ports      \
{k[122]}] [get_ports {k[121]}] [get_ports {k[120]}] [get_ports {k[119]}]       \
[get_ports {k[118]}] [get_ports {k[117]}] [get_ports {k[116]}] [get_ports      \
{k[115]}] [get_ports {k[114]}] [get_ports {k[113]}] [get_ports {k[112]}]       \
[get_ports {k[111]}] [get_ports {k[110]}] [get_ports {k[109]}] [get_ports      \
{k[108]}] [get_ports {k[107]}] [get_ports {k[106]}] [get_ports {k[105]}]       \
[get_ports {k[104]}] [get_ports {k[103]}] [get_ports {k[102]}] [get_ports      \
{k[101]}] [get_ports {k[100]}] [get_ports {k[99]}] [get_ports {k[98]}]         \
[get_ports {k[97]}] [get_ports {k[96]}] [get_ports {k[95]}] [get_ports         \
{k[94]}] [get_ports {k[93]}] [get_ports {k[92]}] [get_ports {k[91]}]           \
[get_ports {k[90]}] [get_ports {k[89]}] [get_ports {k[88]}] [get_ports         \
{k[87]}] [get_ports {k[86]}] [get_ports {k[85]}] [get_ports {k[84]}]           \
[get_ports {k[83]}] [get_ports {k[82]}] [get_ports {k[81]}] [get_ports         \
{k[80]}] [get_ports {k[79]}] [get_ports {k[78]}] [get_ports {k[77]}]           \
[get_ports {k[76]}] [get_ports {k[75]}] [get_ports {k[74]}] [get_ports         \
{k[73]}] [get_ports {k[72]}] [get_ports {k[71]}] [get_ports {k[70]}]           \
[get_ports {k[69]}] [get_ports {k[68]}] [get_ports {k[67]}] [get_ports         \
{k[66]}] [get_ports {k[65]}] [get_ports {k[64]}] [get_ports {k[63]}]           \
[get_ports {k[62]}] [get_ports {k[61]}] [get_ports {k[60]}] [get_ports         \
{k[59]}] [get_ports {k[58]}] [get_ports {k[57]}] [get_ports {k[56]}]           \
[get_ports {k[55]}] [get_ports {k[54]}] [get_ports {k[53]}] [get_ports         \
{k[52]}] [get_ports {k[51]}] [get_ports {k[50]}] [get_ports {k[49]}]           \
[get_ports {k[48]}] [get_ports {k[47]}] [get_ports {k[46]}] [get_ports         \
{k[45]}] [get_ports {k[44]}] [get_ports {k[43]}] [get_ports {k[42]}]           \
[get_ports {k[41]}] [get_ports {k[40]}] [get_ports {k[39]}] [get_ports         \
{k[38]}] [get_ports {k[37]}] [get_ports {k[36]}] [get_ports {k[35]}]           \
[get_ports {k[34]}] [get_ports {k[33]}] [get_ports {k[32]}] [get_ports         \
{k[31]}] [get_ports {k[30]}] [get_ports {k[29]}] [get_ports {k[28]}]           \
[get_ports {k[27]}] [get_ports {k[26]}] [get_ports {k[25]}] [get_ports         \
{k[24]}] [get_ports {k[23]}] [get_ports {k[22]}] [get_ports {k[21]}]           \
[get_ports {k[20]}] [get_ports {k[19]}] [get_ports {k[18]}] [get_ports         \
{k[17]}] [get_ports {k[16]}] [get_ports {k[15]}] [get_ports {k[14]}]           \
[get_ports {k[13]}] [get_ports {k[12]}] [get_ports {k[11]}] [get_ports         \
{k[10]}] [get_ports {k[9]}] [get_ports {k[8]}] [get_ports {k[7]}] [get_ports   \
{k[6]}] [get_ports {k[5]}] [get_ports {k[4]}] [get_ports {k[3]}] [get_ports    \
{k[2]}] [get_ports {k[1]}] [get_ports {k[0]}] [get_ports {p[127]}] [get_ports  \
{p[126]}] [get_ports {p[125]}] [get_ports {p[124]}] [get_ports {p[123]}]       \
[get_ports {p[122]}] [get_ports {p[121]}] [get_ports {p[120]}] [get_ports      \
{p[119]}] [get_ports {p[118]}] [get_ports {p[117]}] [get_ports {p[116]}]       \
[get_ports {p[115]}] [get_ports {p[114]}] [get_ports {p[113]}] [get_ports      \
{p[112]}] [get_ports {p[111]}] [get_ports {p[110]}] [get_ports {p[109]}]       \
[get_ports {p[108]}] [get_ports {p[107]}] [get_ports {p[106]}] [get_ports      \
{p[105]}] [get_ports {p[104]}] [get_ports {p[103]}] [get_ports {p[102]}]       \
[get_ports {p[101]}] [get_ports {p[100]}] [get_ports {p[99]}] [get_ports       \
{p[98]}] [get_ports {p[97]}] [get_ports {p[96]}] [get_ports {p[95]}]           \
[get_ports {p[94]}] [get_ports {p[93]}] [get_ports {p[92]}] [get_ports         \
{p[91]}] [get_ports {p[90]}] [get_ports {p[89]}] [get_ports {p[88]}]           \
[get_ports {p[87]}] [get_ports {p[86]}] [get_ports {p[85]}] [get_ports         \
{p[84]}] [get_ports {p[83]}] [get_ports {p[82]}] [get_ports {p[81]}]           \
[get_ports {p[80]}] [get_ports {p[79]}] [get_ports {p[78]}] [get_ports         \
{p[77]}] [get_ports {p[76]}] [get_ports {p[75]}] [get_ports {p[74]}]           \
[get_ports {p[73]}] [get_ports {p[72]}] [get_ports {p[71]}] [get_ports         \
{p[70]}] [get_ports {p[69]}] [get_ports {p[68]}] [get_ports {p[67]}]           \
[get_ports {p[66]}] [get_ports {p[65]}] [get_ports {p[64]}] [get_ports         \
{p[63]}] [get_ports {p[62]}] [get_ports {p[61]}] [get_ports {p[60]}]           \
[get_ports {p[59]}] [get_ports {p[58]}] [get_ports {p[57]}] [get_ports         \
{p[56]}] [get_ports {p[55]}] [get_ports {p[54]}] [get_ports {p[53]}]           \
[get_ports {p[52]}] [get_ports {p[51]}] [get_ports {p[50]}] [get_ports         \
{p[49]}] [get_ports {p[48]}] [get_ports {p[47]}] [get_ports {p[46]}]           \
[get_ports {p[45]}] [get_ports {p[44]}] [get_ports {p[43]}] [get_ports         \
{p[42]}] [get_ports {p[41]}] [get_ports {p[40]}] [get_ports {p[39]}]           \
[get_ports {p[38]}] [get_ports {p[37]}] [get_ports {p[36]}] [get_ports         \
{p[35]}] [get_ports {p[34]}] [get_ports {p[33]}] [get_ports {p[32]}]           \
[get_ports {p[31]}] [get_ports {p[30]}] [get_ports {p[29]}] [get_ports         \
{p[28]}] [get_ports {p[27]}] [get_ports {p[26]}] [get_ports {p[25]}]           \
[get_ports {p[24]}] [get_ports {p[23]}] [get_ports {p[22]}] [get_ports         \
{p[21]}] [get_ports {p[20]}] [get_ports {p[19]}] [get_ports {p[18]}]           \
[get_ports {p[17]}] [get_ports {p[16]}] [get_ports {p[15]}] [get_ports         \
{p[14]}] [get_ports {p[13]}] [get_ports {p[12]}] [get_ports {p[11]}]           \
[get_ports {p[10]}] [get_ports {p[9]}] [get_ports {p[8]}] [get_ports {p[7]}]   \
[get_ports {p[6]}] [get_ports {p[5]}] [get_ports {p[4]}] [get_ports {p[3]}]    \
[get_ports {p[2]}] [get_ports {p[1]}] [get_ports {p[0]}] [get_ports start]]  -to [list [get_ports {c[127]}] [get_ports {c[126]}] [get_ports {c[125]}]      \
[get_ports {c[124]}] [get_ports {c[123]}] [get_ports {c[122]}] [get_ports      \
{c[121]}] [get_ports {c[120]}] [get_ports {c[119]}] [get_ports {c[118]}]       \
[get_ports {c[117]}] [get_ports {c[116]}] [get_ports {c[115]}] [get_ports      \
{c[114]}] [get_ports {c[113]}] [get_ports {c[112]}] [get_ports {c[111]}]       \
[get_ports {c[110]}] [get_ports {c[109]}] [get_ports {c[108]}] [get_ports      \
{c[107]}] [get_ports {c[106]}] [get_ports {c[105]}] [get_ports {c[104]}]       \
[get_ports {c[103]}] [get_ports {c[102]}] [get_ports {c[101]}] [get_ports      \
{c[100]}] [get_ports {c[99]}] [get_ports {c[98]}] [get_ports {c[97]}]          \
[get_ports {c[96]}] [get_ports {c[95]}] [get_ports {c[94]}] [get_ports         \
{c[93]}] [get_ports {c[92]}] [get_ports {c[91]}] [get_ports {c[90]}]           \
[get_ports {c[89]}] [get_ports {c[88]}] [get_ports {c[87]}] [get_ports         \
{c[86]}] [get_ports {c[85]}] [get_ports {c[84]}] [get_ports {c[83]}]           \
[get_ports {c[82]}] [get_ports {c[81]}] [get_ports {c[80]}] [get_ports         \
{c[79]}] [get_ports {c[78]}] [get_ports {c[77]}] [get_ports {c[76]}]           \
[get_ports {c[75]}] [get_ports {c[74]}] [get_ports {c[73]}] [get_ports         \
{c[72]}] [get_ports {c[71]}] [get_ports {c[70]}] [get_ports {c[69]}]           \
[get_ports {c[68]}] [get_ports {c[67]}] [get_ports {c[66]}] [get_ports         \
{c[65]}] [get_ports {c[64]}] [get_ports {c[63]}] [get_ports {c[62]}]           \
[get_ports {c[61]}] [get_ports {c[60]}] [get_ports {c[59]}] [get_ports         \
{c[58]}] [get_ports {c[57]}] [get_ports {c[56]}] [get_ports {c[55]}]           \
[get_ports {c[54]}] [get_ports {c[53]}] [get_ports {c[52]}] [get_ports         \
{c[51]}] [get_ports {c[50]}] [get_ports {c[49]}] [get_ports {c[48]}]           \
[get_ports {c[47]}] [get_ports {c[46]}] [get_ports {c[45]}] [get_ports         \
{c[44]}] [get_ports {c[43]}] [get_ports {c[42]}] [get_ports {c[41]}]           \
[get_ports {c[40]}] [get_ports {c[39]}] [get_ports {c[38]}] [get_ports         \
{c[37]}] [get_ports {c[36]}] [get_ports {c[35]}] [get_ports {c[34]}]           \
[get_ports {c[33]}] [get_ports {c[32]}] [get_ports {c[31]}] [get_ports         \
{c[30]}] [get_ports {c[29]}] [get_ports {c[28]}] [get_ports {c[27]}]           \
[get_ports {c[26]}] [get_ports {c[25]}] [get_ports {c[24]}] [get_ports         \
{c[23]}] [get_ports {c[22]}] [get_ports {c[21]}] [get_ports {c[20]}]           \
[get_ports {c[19]}] [get_ports {c[18]}] [get_ports {c[17]}] [get_ports         \
{c[16]}] [get_ports {c[15]}] [get_ports {c[14]}] [get_ports {c[13]}]           \
[get_ports {c[12]}] [get_ports {c[11]}] [get_ports {c[10]}] [get_ports {c[9]}] \
[get_ports {c[8]}] [get_ports {c[7]}] [get_ports {c[6]}] [get_ports {c[5]}]    \
[get_ports {c[4]}] [get_ports {c[3]}] [get_ports {c[2]}] [get_ports {c[1]}]    \
[get_ports {c[0]}] [get_ports done]]
group_path -name REGIN  -from [list [get_ports reset_n] [get_ports {k[127]}] [get_ports {k[126]}]     \
[get_ports {k[125]}] [get_ports {k[124]}] [get_ports {k[123]}] [get_ports      \
{k[122]}] [get_ports {k[121]}] [get_ports {k[120]}] [get_ports {k[119]}]       \
[get_ports {k[118]}] [get_ports {k[117]}] [get_ports {k[116]}] [get_ports      \
{k[115]}] [get_ports {k[114]}] [get_ports {k[113]}] [get_ports {k[112]}]       \
[get_ports {k[111]}] [get_ports {k[110]}] [get_ports {k[109]}] [get_ports      \
{k[108]}] [get_ports {k[107]}] [get_ports {k[106]}] [get_ports {k[105]}]       \
[get_ports {k[104]}] [get_ports {k[103]}] [get_ports {k[102]}] [get_ports      \
{k[101]}] [get_ports {k[100]}] [get_ports {k[99]}] [get_ports {k[98]}]         \
[get_ports {k[97]}] [get_ports {k[96]}] [get_ports {k[95]}] [get_ports         \
{k[94]}] [get_ports {k[93]}] [get_ports {k[92]}] [get_ports {k[91]}]           \
[get_ports {k[90]}] [get_ports {k[89]}] [get_ports {k[88]}] [get_ports         \
{k[87]}] [get_ports {k[86]}] [get_ports {k[85]}] [get_ports {k[84]}]           \
[get_ports {k[83]}] [get_ports {k[82]}] [get_ports {k[81]}] [get_ports         \
{k[80]}] [get_ports {k[79]}] [get_ports {k[78]}] [get_ports {k[77]}]           \
[get_ports {k[76]}] [get_ports {k[75]}] [get_ports {k[74]}] [get_ports         \
{k[73]}] [get_ports {k[72]}] [get_ports {k[71]}] [get_ports {k[70]}]           \
[get_ports {k[69]}] [get_ports {k[68]}] [get_ports {k[67]}] [get_ports         \
{k[66]}] [get_ports {k[65]}] [get_ports {k[64]}] [get_ports {k[63]}]           \
[get_ports {k[62]}] [get_ports {k[61]}] [get_ports {k[60]}] [get_ports         \
{k[59]}] [get_ports {k[58]}] [get_ports {k[57]}] [get_ports {k[56]}]           \
[get_ports {k[55]}] [get_ports {k[54]}] [get_ports {k[53]}] [get_ports         \
{k[52]}] [get_ports {k[51]}] [get_ports {k[50]}] [get_ports {k[49]}]           \
[get_ports {k[48]}] [get_ports {k[47]}] [get_ports {k[46]}] [get_ports         \
{k[45]}] [get_ports {k[44]}] [get_ports {k[43]}] [get_ports {k[42]}]           \
[get_ports {k[41]}] [get_ports {k[40]}] [get_ports {k[39]}] [get_ports         \
{k[38]}] [get_ports {k[37]}] [get_ports {k[36]}] [get_ports {k[35]}]           \
[get_ports {k[34]}] [get_ports {k[33]}] [get_ports {k[32]}] [get_ports         \
{k[31]}] [get_ports {k[30]}] [get_ports {k[29]}] [get_ports {k[28]}]           \
[get_ports {k[27]}] [get_ports {k[26]}] [get_ports {k[25]}] [get_ports         \
{k[24]}] [get_ports {k[23]}] [get_ports {k[22]}] [get_ports {k[21]}]           \
[get_ports {k[20]}] [get_ports {k[19]}] [get_ports {k[18]}] [get_ports         \
{k[17]}] [get_ports {k[16]}] [get_ports {k[15]}] [get_ports {k[14]}]           \
[get_ports {k[13]}] [get_ports {k[12]}] [get_ports {k[11]}] [get_ports         \
{k[10]}] [get_ports {k[9]}] [get_ports {k[8]}] [get_ports {k[7]}] [get_ports   \
{k[6]}] [get_ports {k[5]}] [get_ports {k[4]}] [get_ports {k[3]}] [get_ports    \
{k[2]}] [get_ports {k[1]}] [get_ports {k[0]}] [get_ports {p[127]}] [get_ports  \
{p[126]}] [get_ports {p[125]}] [get_ports {p[124]}] [get_ports {p[123]}]       \
[get_ports {p[122]}] [get_ports {p[121]}] [get_ports {p[120]}] [get_ports      \
{p[119]}] [get_ports {p[118]}] [get_ports {p[117]}] [get_ports {p[116]}]       \
[get_ports {p[115]}] [get_ports {p[114]}] [get_ports {p[113]}] [get_ports      \
{p[112]}] [get_ports {p[111]}] [get_ports {p[110]}] [get_ports {p[109]}]       \
[get_ports {p[108]}] [get_ports {p[107]}] [get_ports {p[106]}] [get_ports      \
{p[105]}] [get_ports {p[104]}] [get_ports {p[103]}] [get_ports {p[102]}]       \
[get_ports {p[101]}] [get_ports {p[100]}] [get_ports {p[99]}] [get_ports       \
{p[98]}] [get_ports {p[97]}] [get_ports {p[96]}] [get_ports {p[95]}]           \
[get_ports {p[94]}] [get_ports {p[93]}] [get_ports {p[92]}] [get_ports         \
{p[91]}] [get_ports {p[90]}] [get_ports {p[89]}] [get_ports {p[88]}]           \
[get_ports {p[87]}] [get_ports {p[86]}] [get_ports {p[85]}] [get_ports         \
{p[84]}] [get_ports {p[83]}] [get_ports {p[82]}] [get_ports {p[81]}]           \
[get_ports {p[80]}] [get_ports {p[79]}] [get_ports {p[78]}] [get_ports         \
{p[77]}] [get_ports {p[76]}] [get_ports {p[75]}] [get_ports {p[74]}]           \
[get_ports {p[73]}] [get_ports {p[72]}] [get_ports {p[71]}] [get_ports         \
{p[70]}] [get_ports {p[69]}] [get_ports {p[68]}] [get_ports {p[67]}]           \
[get_ports {p[66]}] [get_ports {p[65]}] [get_ports {p[64]}] [get_ports         \
{p[63]}] [get_ports {p[62]}] [get_ports {p[61]}] [get_ports {p[60]}]           \
[get_ports {p[59]}] [get_ports {p[58]}] [get_ports {p[57]}] [get_ports         \
{p[56]}] [get_ports {p[55]}] [get_ports {p[54]}] [get_ports {p[53]}]           \
[get_ports {p[52]}] [get_ports {p[51]}] [get_ports {p[50]}] [get_ports         \
{p[49]}] [get_ports {p[48]}] [get_ports {p[47]}] [get_ports {p[46]}]           \
[get_ports {p[45]}] [get_ports {p[44]}] [get_ports {p[43]}] [get_ports         \
{p[42]}] [get_ports {p[41]}] [get_ports {p[40]}] [get_ports {p[39]}]           \
[get_ports {p[38]}] [get_ports {p[37]}] [get_ports {p[36]}] [get_ports         \
{p[35]}] [get_ports {p[34]}] [get_ports {p[33]}] [get_ports {p[32]}]           \
[get_ports {p[31]}] [get_ports {p[30]}] [get_ports {p[29]}] [get_ports         \
{p[28]}] [get_ports {p[27]}] [get_ports {p[26]}] [get_ports {p[25]}]           \
[get_ports {p[24]}] [get_ports {p[23]}] [get_ports {p[22]}] [get_ports         \
{p[21]}] [get_ports {p[20]}] [get_ports {p[19]}] [get_ports {p[18]}]           \
[get_ports {p[17]}] [get_ports {p[16]}] [get_ports {p[15]}] [get_ports         \
{p[14]}] [get_ports {p[13]}] [get_ports {p[12]}] [get_ports {p[11]}]           \
[get_ports {p[10]}] [get_ports {p[9]}] [get_ports {p[8]}] [get_ports {p[7]}]   \
[get_ports {p[6]}] [get_ports {p[5]}] [get_ports {p[4]}] [get_ports {p[3]}]    \
[get_ports {p[2]}] [get_ports {p[1]}] [get_ports {p[0]}] [get_ports start]]
group_path -name REGOUT  -to [list [get_ports {c[127]}] [get_ports {c[126]}] [get_ports {c[125]}]      \
[get_ports {c[124]}] [get_ports {c[123]}] [get_ports {c[122]}] [get_ports      \
{c[121]}] [get_ports {c[120]}] [get_ports {c[119]}] [get_ports {c[118]}]       \
[get_ports {c[117]}] [get_ports {c[116]}] [get_ports {c[115]}] [get_ports      \
{c[114]}] [get_ports {c[113]}] [get_ports {c[112]}] [get_ports {c[111]}]       \
[get_ports {c[110]}] [get_ports {c[109]}] [get_ports {c[108]}] [get_ports      \
{c[107]}] [get_ports {c[106]}] [get_ports {c[105]}] [get_ports {c[104]}]       \
[get_ports {c[103]}] [get_ports {c[102]}] [get_ports {c[101]}] [get_ports      \
{c[100]}] [get_ports {c[99]}] [get_ports {c[98]}] [get_ports {c[97]}]          \
[get_ports {c[96]}] [get_ports {c[95]}] [get_ports {c[94]}] [get_ports         \
{c[93]}] [get_ports {c[92]}] [get_ports {c[91]}] [get_ports {c[90]}]           \
[get_ports {c[89]}] [get_ports {c[88]}] [get_ports {c[87]}] [get_ports         \
{c[86]}] [get_ports {c[85]}] [get_ports {c[84]}] [get_ports {c[83]}]           \
[get_ports {c[82]}] [get_ports {c[81]}] [get_ports {c[80]}] [get_ports         \
{c[79]}] [get_ports {c[78]}] [get_ports {c[77]}] [get_ports {c[76]}]           \
[get_ports {c[75]}] [get_ports {c[74]}] [get_ports {c[73]}] [get_ports         \
{c[72]}] [get_ports {c[71]}] [get_ports {c[70]}] [get_ports {c[69]}]           \
[get_ports {c[68]}] [get_ports {c[67]}] [get_ports {c[66]}] [get_ports         \
{c[65]}] [get_ports {c[64]}] [get_ports {c[63]}] [get_ports {c[62]}]           \
[get_ports {c[61]}] [get_ports {c[60]}] [get_ports {c[59]}] [get_ports         \
{c[58]}] [get_ports {c[57]}] [get_ports {c[56]}] [get_ports {c[55]}]           \
[get_ports {c[54]}] [get_ports {c[53]}] [get_ports {c[52]}] [get_ports         \
{c[51]}] [get_ports {c[50]}] [get_ports {c[49]}] [get_ports {c[48]}]           \
[get_ports {c[47]}] [get_ports {c[46]}] [get_ports {c[45]}] [get_ports         \
{c[44]}] [get_ports {c[43]}] [get_ports {c[42]}] [get_ports {c[41]}]           \
[get_ports {c[40]}] [get_ports {c[39]}] [get_ports {c[38]}] [get_ports         \
{c[37]}] [get_ports {c[36]}] [get_ports {c[35]}] [get_ports {c[34]}]           \
[get_ports {c[33]}] [get_ports {c[32]}] [get_ports {c[31]}] [get_ports         \
{c[30]}] [get_ports {c[29]}] [get_ports {c[28]}] [get_ports {c[27]}]           \
[get_ports {c[26]}] [get_ports {c[25]}] [get_ports {c[24]}] [get_ports         \
{c[23]}] [get_ports {c[22]}] [get_ports {c[21]}] [get_ports {c[20]}]           \
[get_ports {c[19]}] [get_ports {c[18]}] [get_ports {c[17]}] [get_ports         \
{c[16]}] [get_ports {c[15]}] [get_ports {c[14]}] [get_ports {c[13]}]           \
[get_ports {c[12]}] [get_ports {c[11]}] [get_ports {c[10]}] [get_ports {c[9]}] \
[get_ports {c[8]}] [get_ports {c[7]}] [get_ports {c[6]}] [get_ports {c[5]}]    \
[get_ports {c[4]}] [get_ports {c[3]}] [get_ports {c[2]}] [get_ports {c[1]}]    \
[get_ports {c[0]}] [get_ports done]]
set_input_delay -clock clk  24  [get_ports reset_n]
set_input_delay -clock clk  12  [get_ports {k[127]}]
set_input_delay -clock clk  12  [get_ports {k[126]}]
set_input_delay -clock clk  12  [get_ports {k[125]}]
set_input_delay -clock clk  12  [get_ports {k[124]}]
set_input_delay -clock clk  12  [get_ports {k[123]}]
set_input_delay -clock clk  12  [get_ports {k[122]}]
set_input_delay -clock clk  12  [get_ports {k[121]}]
set_input_delay -clock clk  12  [get_ports {k[120]}]
set_input_delay -clock clk  12  [get_ports {k[119]}]
set_input_delay -clock clk  12  [get_ports {k[118]}]
set_input_delay -clock clk  12  [get_ports {k[117]}]
set_input_delay -clock clk  12  [get_ports {k[116]}]
set_input_delay -clock clk  12  [get_ports {k[115]}]
set_input_delay -clock clk  12  [get_ports {k[114]}]
set_input_delay -clock clk  12  [get_ports {k[113]}]
set_input_delay -clock clk  12  [get_ports {k[112]}]
set_input_delay -clock clk  12  [get_ports {k[111]}]
set_input_delay -clock clk  12  [get_ports {k[110]}]
set_input_delay -clock clk  12  [get_ports {k[109]}]
set_input_delay -clock clk  12  [get_ports {k[108]}]
set_input_delay -clock clk  12  [get_ports {k[107]}]
set_input_delay -clock clk  12  [get_ports {k[106]}]
set_input_delay -clock clk  12  [get_ports {k[105]}]
set_input_delay -clock clk  12  [get_ports {k[104]}]
set_input_delay -clock clk  12  [get_ports {k[103]}]
set_input_delay -clock clk  12  [get_ports {k[102]}]
set_input_delay -clock clk  12  [get_ports {k[101]}]
set_input_delay -clock clk  12  [get_ports {k[100]}]
set_input_delay -clock clk  12  [get_ports {k[99]}]
set_input_delay -clock clk  12  [get_ports {k[98]}]
set_input_delay -clock clk  12  [get_ports {k[97]}]
set_input_delay -clock clk  12  [get_ports {k[96]}]
set_input_delay -clock clk  12  [get_ports {k[95]}]
set_input_delay -clock clk  12  [get_ports {k[94]}]
set_input_delay -clock clk  12  [get_ports {k[93]}]
set_input_delay -clock clk  12  [get_ports {k[92]}]
set_input_delay -clock clk  12  [get_ports {k[91]}]
set_input_delay -clock clk  12  [get_ports {k[90]}]
set_input_delay -clock clk  12  [get_ports {k[89]}]
set_input_delay -clock clk  12  [get_ports {k[88]}]
set_input_delay -clock clk  12  [get_ports {k[87]}]
set_input_delay -clock clk  12  [get_ports {k[86]}]
set_input_delay -clock clk  12  [get_ports {k[85]}]
set_input_delay -clock clk  12  [get_ports {k[84]}]
set_input_delay -clock clk  12  [get_ports {k[83]}]
set_input_delay -clock clk  12  [get_ports {k[82]}]
set_input_delay -clock clk  12  [get_ports {k[81]}]
set_input_delay -clock clk  12  [get_ports {k[80]}]
set_input_delay -clock clk  12  [get_ports {k[79]}]
set_input_delay -clock clk  12  [get_ports {k[78]}]
set_input_delay -clock clk  12  [get_ports {k[77]}]
set_input_delay -clock clk  12  [get_ports {k[76]}]
set_input_delay -clock clk  12  [get_ports {k[75]}]
set_input_delay -clock clk  12  [get_ports {k[74]}]
set_input_delay -clock clk  12  [get_ports {k[73]}]
set_input_delay -clock clk  12  [get_ports {k[72]}]
set_input_delay -clock clk  12  [get_ports {k[71]}]
set_input_delay -clock clk  12  [get_ports {k[70]}]
set_input_delay -clock clk  12  [get_ports {k[69]}]
set_input_delay -clock clk  12  [get_ports {k[68]}]
set_input_delay -clock clk  12  [get_ports {k[67]}]
set_input_delay -clock clk  12  [get_ports {k[66]}]
set_input_delay -clock clk  12  [get_ports {k[65]}]
set_input_delay -clock clk  12  [get_ports {k[64]}]
set_input_delay -clock clk  12  [get_ports {k[63]}]
set_input_delay -clock clk  12  [get_ports {k[62]}]
set_input_delay -clock clk  12  [get_ports {k[61]}]
set_input_delay -clock clk  12  [get_ports {k[60]}]
set_input_delay -clock clk  12  [get_ports {k[59]}]
set_input_delay -clock clk  12  [get_ports {k[58]}]
set_input_delay -clock clk  12  [get_ports {k[57]}]
set_input_delay -clock clk  12  [get_ports {k[56]}]
set_input_delay -clock clk  12  [get_ports {k[55]}]
set_input_delay -clock clk  12  [get_ports {k[54]}]
set_input_delay -clock clk  12  [get_ports {k[53]}]
set_input_delay -clock clk  12  [get_ports {k[52]}]
set_input_delay -clock clk  12  [get_ports {k[51]}]
set_input_delay -clock clk  12  [get_ports {k[50]}]
set_input_delay -clock clk  12  [get_ports {k[49]}]
set_input_delay -clock clk  12  [get_ports {k[48]}]
set_input_delay -clock clk  12  [get_ports {k[47]}]
set_input_delay -clock clk  12  [get_ports {k[46]}]
set_input_delay -clock clk  12  [get_ports {k[45]}]
set_input_delay -clock clk  12  [get_ports {k[44]}]
set_input_delay -clock clk  12  [get_ports {k[43]}]
set_input_delay -clock clk  12  [get_ports {k[42]}]
set_input_delay -clock clk  12  [get_ports {k[41]}]
set_input_delay -clock clk  12  [get_ports {k[40]}]
set_input_delay -clock clk  12  [get_ports {k[39]}]
set_input_delay -clock clk  12  [get_ports {k[38]}]
set_input_delay -clock clk  12  [get_ports {k[37]}]
set_input_delay -clock clk  12  [get_ports {k[36]}]
set_input_delay -clock clk  12  [get_ports {k[35]}]
set_input_delay -clock clk  12  [get_ports {k[34]}]
set_input_delay -clock clk  12  [get_ports {k[33]}]
set_input_delay -clock clk  12  [get_ports {k[32]}]
set_input_delay -clock clk  12  [get_ports {k[31]}]
set_input_delay -clock clk  12  [get_ports {k[30]}]
set_input_delay -clock clk  12  [get_ports {k[29]}]
set_input_delay -clock clk  12  [get_ports {k[28]}]
set_input_delay -clock clk  12  [get_ports {k[27]}]
set_input_delay -clock clk  12  [get_ports {k[26]}]
set_input_delay -clock clk  12  [get_ports {k[25]}]
set_input_delay -clock clk  12  [get_ports {k[24]}]
set_input_delay -clock clk  12  [get_ports {k[23]}]
set_input_delay -clock clk  12  [get_ports {k[22]}]
set_input_delay -clock clk  12  [get_ports {k[21]}]
set_input_delay -clock clk  12  [get_ports {k[20]}]
set_input_delay -clock clk  12  [get_ports {k[19]}]
set_input_delay -clock clk  12  [get_ports {k[18]}]
set_input_delay -clock clk  12  [get_ports {k[17]}]
set_input_delay -clock clk  12  [get_ports {k[16]}]
set_input_delay -clock clk  12  [get_ports {k[15]}]
set_input_delay -clock clk  12  [get_ports {k[14]}]
set_input_delay -clock clk  12  [get_ports {k[13]}]
set_input_delay -clock clk  12  [get_ports {k[12]}]
set_input_delay -clock clk  12  [get_ports {k[11]}]
set_input_delay -clock clk  12  [get_ports {k[10]}]
set_input_delay -clock clk  12  [get_ports {k[9]}]
set_input_delay -clock clk  12  [get_ports {k[8]}]
set_input_delay -clock clk  12  [get_ports {k[7]}]
set_input_delay -clock clk  12  [get_ports {k[6]}]
set_input_delay -clock clk  12  [get_ports {k[5]}]
set_input_delay -clock clk  12  [get_ports {k[4]}]
set_input_delay -clock clk  12  [get_ports {k[3]}]
set_input_delay -clock clk  12  [get_ports {k[2]}]
set_input_delay -clock clk  12  [get_ports {k[1]}]
set_input_delay -clock clk  12  [get_ports {k[0]}]
set_input_delay -clock clk  24  [get_ports {p[127]}]
set_input_delay -clock clk  24  [get_ports {p[126]}]
set_input_delay -clock clk  24  [get_ports {p[125]}]
set_input_delay -clock clk  24  [get_ports {p[124]}]
set_input_delay -clock clk  24  [get_ports {p[123]}]
set_input_delay -clock clk  24  [get_ports {p[122]}]
set_input_delay -clock clk  24  [get_ports {p[121]}]
set_input_delay -clock clk  24  [get_ports {p[120]}]
set_input_delay -clock clk  24  [get_ports {p[119]}]
set_input_delay -clock clk  24  [get_ports {p[118]}]
set_input_delay -clock clk  24  [get_ports {p[117]}]
set_input_delay -clock clk  24  [get_ports {p[116]}]
set_input_delay -clock clk  24  [get_ports {p[115]}]
set_input_delay -clock clk  24  [get_ports {p[114]}]
set_input_delay -clock clk  24  [get_ports {p[113]}]
set_input_delay -clock clk  24  [get_ports {p[112]}]
set_input_delay -clock clk  24  [get_ports {p[111]}]
set_input_delay -clock clk  24  [get_ports {p[110]}]
set_input_delay -clock clk  24  [get_ports {p[109]}]
set_input_delay -clock clk  24  [get_ports {p[108]}]
set_input_delay -clock clk  24  [get_ports {p[107]}]
set_input_delay -clock clk  24  [get_ports {p[106]}]
set_input_delay -clock clk  24  [get_ports {p[105]}]
set_input_delay -clock clk  24  [get_ports {p[104]}]
set_input_delay -clock clk  24  [get_ports {p[103]}]
set_input_delay -clock clk  24  [get_ports {p[102]}]
set_input_delay -clock clk  24  [get_ports {p[101]}]
set_input_delay -clock clk  24  [get_ports {p[100]}]
set_input_delay -clock clk  24  [get_ports {p[99]}]
set_input_delay -clock clk  24  [get_ports {p[98]}]
set_input_delay -clock clk  24  [get_ports {p[97]}]
set_input_delay -clock clk  24  [get_ports {p[96]}]
set_input_delay -clock clk  24  [get_ports {p[95]}]
set_input_delay -clock clk  24  [get_ports {p[94]}]
set_input_delay -clock clk  24  [get_ports {p[93]}]
set_input_delay -clock clk  24  [get_ports {p[92]}]
set_input_delay -clock clk  24  [get_ports {p[91]}]
set_input_delay -clock clk  24  [get_ports {p[90]}]
set_input_delay -clock clk  24  [get_ports {p[89]}]
set_input_delay -clock clk  24  [get_ports {p[88]}]
set_input_delay -clock clk  24  [get_ports {p[87]}]
set_input_delay -clock clk  24  [get_ports {p[86]}]
set_input_delay -clock clk  24  [get_ports {p[85]}]
set_input_delay -clock clk  24  [get_ports {p[84]}]
set_input_delay -clock clk  24  [get_ports {p[83]}]
set_input_delay -clock clk  24  [get_ports {p[82]}]
set_input_delay -clock clk  24  [get_ports {p[81]}]
set_input_delay -clock clk  24  [get_ports {p[80]}]
set_input_delay -clock clk  24  [get_ports {p[79]}]
set_input_delay -clock clk  24  [get_ports {p[78]}]
set_input_delay -clock clk  24  [get_ports {p[77]}]
set_input_delay -clock clk  24  [get_ports {p[76]}]
set_input_delay -clock clk  24  [get_ports {p[75]}]
set_input_delay -clock clk  24  [get_ports {p[74]}]
set_input_delay -clock clk  24  [get_ports {p[73]}]
set_input_delay -clock clk  24  [get_ports {p[72]}]
set_input_delay -clock clk  24  [get_ports {p[71]}]
set_input_delay -clock clk  24  [get_ports {p[70]}]
set_input_delay -clock clk  24  [get_ports {p[69]}]
set_input_delay -clock clk  24  [get_ports {p[68]}]
set_input_delay -clock clk  24  [get_ports {p[67]}]
set_input_delay -clock clk  24  [get_ports {p[66]}]
set_input_delay -clock clk  24  [get_ports {p[65]}]
set_input_delay -clock clk  24  [get_ports {p[64]}]
set_input_delay -clock clk  24  [get_ports {p[63]}]
set_input_delay -clock clk  24  [get_ports {p[62]}]
set_input_delay -clock clk  24  [get_ports {p[61]}]
set_input_delay -clock clk  24  [get_ports {p[60]}]
set_input_delay -clock clk  24  [get_ports {p[59]}]
set_input_delay -clock clk  24  [get_ports {p[58]}]
set_input_delay -clock clk  24  [get_ports {p[57]}]
set_input_delay -clock clk  24  [get_ports {p[56]}]
set_input_delay -clock clk  24  [get_ports {p[55]}]
set_input_delay -clock clk  24  [get_ports {p[54]}]
set_input_delay -clock clk  24  [get_ports {p[53]}]
set_input_delay -clock clk  24  [get_ports {p[52]}]
set_input_delay -clock clk  24  [get_ports {p[51]}]
set_input_delay -clock clk  24  [get_ports {p[50]}]
set_input_delay -clock clk  24  [get_ports {p[49]}]
set_input_delay -clock clk  24  [get_ports {p[48]}]
set_input_delay -clock clk  24  [get_ports {p[47]}]
set_input_delay -clock clk  24  [get_ports {p[46]}]
set_input_delay -clock clk  24  [get_ports {p[45]}]
set_input_delay -clock clk  24  [get_ports {p[44]}]
set_input_delay -clock clk  24  [get_ports {p[43]}]
set_input_delay -clock clk  24  [get_ports {p[42]}]
set_input_delay -clock clk  24  [get_ports {p[41]}]
set_input_delay -clock clk  24  [get_ports {p[40]}]
set_input_delay -clock clk  24  [get_ports {p[39]}]
set_input_delay -clock clk  24  [get_ports {p[38]}]
set_input_delay -clock clk  24  [get_ports {p[37]}]
set_input_delay -clock clk  24  [get_ports {p[36]}]
set_input_delay -clock clk  24  [get_ports {p[35]}]
set_input_delay -clock clk  24  [get_ports {p[34]}]
set_input_delay -clock clk  24  [get_ports {p[33]}]
set_input_delay -clock clk  24  [get_ports {p[32]}]
set_input_delay -clock clk  24  [get_ports {p[31]}]
set_input_delay -clock clk  24  [get_ports {p[30]}]
set_input_delay -clock clk  24  [get_ports {p[29]}]
set_input_delay -clock clk  24  [get_ports {p[28]}]
set_input_delay -clock clk  24  [get_ports {p[27]}]
set_input_delay -clock clk  24  [get_ports {p[26]}]
set_input_delay -clock clk  24  [get_ports {p[25]}]
set_input_delay -clock clk  24  [get_ports {p[24]}]
set_input_delay -clock clk  24  [get_ports {p[23]}]
set_input_delay -clock clk  24  [get_ports {p[22]}]
set_input_delay -clock clk  24  [get_ports {p[21]}]
set_input_delay -clock clk  24  [get_ports {p[20]}]
set_input_delay -clock clk  24  [get_ports {p[19]}]
set_input_delay -clock clk  24  [get_ports {p[18]}]
set_input_delay -clock clk  24  [get_ports {p[17]}]
set_input_delay -clock clk  24  [get_ports {p[16]}]
set_input_delay -clock clk  24  [get_ports {p[15]}]
set_input_delay -clock clk  24  [get_ports {p[14]}]
set_input_delay -clock clk  24  [get_ports {p[13]}]
set_input_delay -clock clk  24  [get_ports {p[12]}]
set_input_delay -clock clk  24  [get_ports {p[11]}]
set_input_delay -clock clk  24  [get_ports {p[10]}]
set_input_delay -clock clk  24  [get_ports {p[9]}]
set_input_delay -clock clk  24  [get_ports {p[8]}]
set_input_delay -clock clk  24  [get_ports {p[7]}]
set_input_delay -clock clk  24  [get_ports {p[6]}]
set_input_delay -clock clk  24  [get_ports {p[5]}]
set_input_delay -clock clk  24  [get_ports {p[4]}]
set_input_delay -clock clk  24  [get_ports {p[3]}]
set_input_delay -clock clk  24  [get_ports {p[2]}]
set_input_delay -clock clk  24  [get_ports {p[1]}]
set_input_delay -clock clk  24  [get_ports {p[0]}]
set_input_delay -clock clk  24  [get_ports start]
set_output_delay -clock clk  12  [get_ports {c[127]}]
set_output_delay -clock clk  12  [get_ports {c[126]}]
set_output_delay -clock clk  12  [get_ports {c[125]}]
set_output_delay -clock clk  12  [get_ports {c[124]}]
set_output_delay -clock clk  12  [get_ports {c[123]}]
set_output_delay -clock clk  12  [get_ports {c[122]}]
set_output_delay -clock clk  12  [get_ports {c[121]}]
set_output_delay -clock clk  12  [get_ports {c[120]}]
set_output_delay -clock clk  12  [get_ports {c[119]}]
set_output_delay -clock clk  12  [get_ports {c[118]}]
set_output_delay -clock clk  12  [get_ports {c[117]}]
set_output_delay -clock clk  12  [get_ports {c[116]}]
set_output_delay -clock clk  12  [get_ports {c[115]}]
set_output_delay -clock clk  12  [get_ports {c[114]}]
set_output_delay -clock clk  12  [get_ports {c[113]}]
set_output_delay -clock clk  12  [get_ports {c[112]}]
set_output_delay -clock clk  12  [get_ports {c[111]}]
set_output_delay -clock clk  12  [get_ports {c[110]}]
set_output_delay -clock clk  12  [get_ports {c[109]}]
set_output_delay -clock clk  12  [get_ports {c[108]}]
set_output_delay -clock clk  12  [get_ports {c[107]}]
set_output_delay -clock clk  12  [get_ports {c[106]}]
set_output_delay -clock clk  12  [get_ports {c[105]}]
set_output_delay -clock clk  12  [get_ports {c[104]}]
set_output_delay -clock clk  12  [get_ports {c[103]}]
set_output_delay -clock clk  12  [get_ports {c[102]}]
set_output_delay -clock clk  12  [get_ports {c[101]}]
set_output_delay -clock clk  12  [get_ports {c[100]}]
set_output_delay -clock clk  12  [get_ports {c[99]}]
set_output_delay -clock clk  12  [get_ports {c[98]}]
set_output_delay -clock clk  12  [get_ports {c[97]}]
set_output_delay -clock clk  12  [get_ports {c[96]}]
set_output_delay -clock clk  12  [get_ports {c[95]}]
set_output_delay -clock clk  12  [get_ports {c[94]}]
set_output_delay -clock clk  12  [get_ports {c[93]}]
set_output_delay -clock clk  12  [get_ports {c[92]}]
set_output_delay -clock clk  12  [get_ports {c[91]}]
set_output_delay -clock clk  12  [get_ports {c[90]}]
set_output_delay -clock clk  12  [get_ports {c[89]}]
set_output_delay -clock clk  12  [get_ports {c[88]}]
set_output_delay -clock clk  12  [get_ports {c[87]}]
set_output_delay -clock clk  12  [get_ports {c[86]}]
set_output_delay -clock clk  12  [get_ports {c[85]}]
set_output_delay -clock clk  12  [get_ports {c[84]}]
set_output_delay -clock clk  12  [get_ports {c[83]}]
set_output_delay -clock clk  12  [get_ports {c[82]}]
set_output_delay -clock clk  12  [get_ports {c[81]}]
set_output_delay -clock clk  12  [get_ports {c[80]}]
set_output_delay -clock clk  12  [get_ports {c[79]}]
set_output_delay -clock clk  12  [get_ports {c[78]}]
set_output_delay -clock clk  12  [get_ports {c[77]}]
set_output_delay -clock clk  12  [get_ports {c[76]}]
set_output_delay -clock clk  12  [get_ports {c[75]}]
set_output_delay -clock clk  12  [get_ports {c[74]}]
set_output_delay -clock clk  12  [get_ports {c[73]}]
set_output_delay -clock clk  12  [get_ports {c[72]}]
set_output_delay -clock clk  12  [get_ports {c[71]}]
set_output_delay -clock clk  12  [get_ports {c[70]}]
set_output_delay -clock clk  12  [get_ports {c[69]}]
set_output_delay -clock clk  12  [get_ports {c[68]}]
set_output_delay -clock clk  12  [get_ports {c[67]}]
set_output_delay -clock clk  12  [get_ports {c[66]}]
set_output_delay -clock clk  12  [get_ports {c[65]}]
set_output_delay -clock clk  12  [get_ports {c[64]}]
set_output_delay -clock clk  12  [get_ports {c[63]}]
set_output_delay -clock clk  12  [get_ports {c[62]}]
set_output_delay -clock clk  12  [get_ports {c[61]}]
set_output_delay -clock clk  12  [get_ports {c[60]}]
set_output_delay -clock clk  12  [get_ports {c[59]}]
set_output_delay -clock clk  12  [get_ports {c[58]}]
set_output_delay -clock clk  12  [get_ports {c[57]}]
set_output_delay -clock clk  12  [get_ports {c[56]}]
set_output_delay -clock clk  12  [get_ports {c[55]}]
set_output_delay -clock clk  12  [get_ports {c[54]}]
set_output_delay -clock clk  12  [get_ports {c[53]}]
set_output_delay -clock clk  12  [get_ports {c[52]}]
set_output_delay -clock clk  12  [get_ports {c[51]}]
set_output_delay -clock clk  12  [get_ports {c[50]}]
set_output_delay -clock clk  12  [get_ports {c[49]}]
set_output_delay -clock clk  12  [get_ports {c[48]}]
set_output_delay -clock clk  12  [get_ports {c[47]}]
set_output_delay -clock clk  12  [get_ports {c[46]}]
set_output_delay -clock clk  12  [get_ports {c[45]}]
set_output_delay -clock clk  12  [get_ports {c[44]}]
set_output_delay -clock clk  12  [get_ports {c[43]}]
set_output_delay -clock clk  12  [get_ports {c[42]}]
set_output_delay -clock clk  12  [get_ports {c[41]}]
set_output_delay -clock clk  12  [get_ports {c[40]}]
set_output_delay -clock clk  12  [get_ports {c[39]}]
set_output_delay -clock clk  12  [get_ports {c[38]}]
set_output_delay -clock clk  12  [get_ports {c[37]}]
set_output_delay -clock clk  12  [get_ports {c[36]}]
set_output_delay -clock clk  12  [get_ports {c[35]}]
set_output_delay -clock clk  12  [get_ports {c[34]}]
set_output_delay -clock clk  12  [get_ports {c[33]}]
set_output_delay -clock clk  12  [get_ports {c[32]}]
set_output_delay -clock clk  12  [get_ports {c[31]}]
set_output_delay -clock clk  12  [get_ports {c[30]}]
set_output_delay -clock clk  12  [get_ports {c[29]}]
set_output_delay -clock clk  12  [get_ports {c[28]}]
set_output_delay -clock clk  12  [get_ports {c[27]}]
set_output_delay -clock clk  12  [get_ports {c[26]}]
set_output_delay -clock clk  12  [get_ports {c[25]}]
set_output_delay -clock clk  12  [get_ports {c[24]}]
set_output_delay -clock clk  12  [get_ports {c[23]}]
set_output_delay -clock clk  12  [get_ports {c[22]}]
set_output_delay -clock clk  12  [get_ports {c[21]}]
set_output_delay -clock clk  12  [get_ports {c[20]}]
set_output_delay -clock clk  12  [get_ports {c[19]}]
set_output_delay -clock clk  12  [get_ports {c[18]}]
set_output_delay -clock clk  12  [get_ports {c[17]}]
set_output_delay -clock clk  12  [get_ports {c[16]}]
set_output_delay -clock clk  12  [get_ports {c[15]}]
set_output_delay -clock clk  12  [get_ports {c[14]}]
set_output_delay -clock clk  12  [get_ports {c[13]}]
set_output_delay -clock clk  12  [get_ports {c[12]}]
set_output_delay -clock clk  12  [get_ports {c[11]}]
set_output_delay -clock clk  12  [get_ports {c[10]}]
set_output_delay -clock clk  12  [get_ports {c[9]}]
set_output_delay -clock clk  12  [get_ports {c[8]}]
set_output_delay -clock clk  12  [get_ports {c[7]}]
set_output_delay -clock clk  12  [get_ports {c[6]}]
set_output_delay -clock clk  12  [get_ports {c[5]}]
set_output_delay -clock clk  12  [get_ports {c[4]}]
set_output_delay -clock clk  12  [get_ports {c[3]}]
set_output_delay -clock clk  12  [get_ports {c[2]}]
set_output_delay -clock clk  12  [get_ports {c[1]}]
set_output_delay -clock clk  12  [get_ports {c[0]}]
set_output_delay -clock clk  24  [get_ports done]
set_timing_derate -late -net_delay  1.01 
set_timing_derate -early -net_delay  0.99 
set_timing_derate -late -cell_delay 1.01 
set_timing_derate -early -cell_delay 0.99 
