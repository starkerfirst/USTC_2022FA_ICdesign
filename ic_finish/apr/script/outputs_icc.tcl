#-----------------------------------------------------------------------------
# outputs_icc.tcl:
#     Outputs.
#-----------------------------------------------------------------------------



puts "-----------------------------------------------------------------------"
puts "RM-Info: Running script [info script]\n"
puts "-----------------------------------------------------------------------"


# Source the setup script.
source -echo ./script/icc_setup.tcl 

# Open design.
open_mw_cel $ICC_METAL_FILL_CEL -lib $MW_DESIGN_LIBRARY
change_names -rules verilog -hierarchy
save_mw_cel -as $ICC_OUTPUTS_CEL 
close_mw_cel
open_mw_cel $ICC_OUTPUTS_CEL


# Verilog output.
if {$ICC_WRITE_FULL_CHIP_VERILOG} {
    write_verilog -diode_ports -no_physical_only_cells $RESULT_DIR/$DESIGN_NAME.output.v -macro_definition

    # For comparison with a Design Compiler netlist, the option -diode_ports is removed.
    write_verilog -no_physical_only_cells $RESULT_DIR/$DESIGN_NAME.output.dc.v -macro_definition

    # For LVS use, the option -no_physical_only_cells is removed.
    write_verilog -diode_ports -pg $RESULT_DIR/$DESIGN_NAME.output.pg.lvs.v -macro_definition
    } \
else {
    write_verilog -diode_ports -no_physical_only_cells $RESULT_DIR/$DESIGN_NAME.output.v

    # For comparison with a Design Compiler netlist, the option -diode_ports is removed.
    write_verilog -no_physical_only_cells $RESULT_DIR/$DESIGN_NAME.output.dc.v

    # For LVS use, the option -no_physical_only_cells is removed.
    write_verilog -diode_ports -pg $RESULT_DIR/$DESIGN_NAME.output.pg.lvs.v
    }

write_verilog \
    -force_output_references    FILLER_CELL_METAL \
    -force_no_output_references $ICC_TAP_CEL \
    -no_pad_filler_cells \
    -no_corner_pad_cells \
    -no_core_filler_cells \
    -no_tap_cells \
    -diode_ports \
    -pg \
    $RESULT_DIR/$DESIGN_NAME.output.pg.lvs.v

# Add -output_net_name_for_tie option to write_verilog command if the verilog
# file is to be used by "eco_netlist -by_verilog_file" command in eco_icc task.

# For Prime Time use, to include DCAP cells for leakage power analysis, add
# the option -force_output_references.
# if {$ICC_WRITE_FULL_CHIP_VERILOG} {
#     write_verilog -diode_ports -no_physical_only_cells -force_output_references [list of your DCAP cells] $RESULT_DIR/$DESIGN_NAME.output.pt.v -macro_definition
#     } \
# else {
#     write_verilog -diode_ports -no_physical_only_cells -force_output_references [list of your DCAP cells] $RESULT_DIR/$DESIGN_NAME.output.pt.v
#     }


# SDC output.
set_app_var write_sdc_output_lumped_net_capacitance false
set_app_var write_sdc_output_net_resistance false

write_sdc $RESULT_DIR/$DESIGN_NAME.output.sdc


# Parasitics output.
extract_rc -coupling_cap
write_parasitics -format SPEF -output $RESULT_DIR/$DESIGN_NAME.output.spef
#write_parasitics  -format SBPF -output $RESULT_DIR/$DESIGN_NAME.output.sbpf


# SDF output.
write_sdf $RESULT_DIR/$DESIGN_NAME.output.sdf


# DEF output.
write_def -output $RESULT_DIR/$DESIGN_NAME.output.def


# GDSII output.
save_mw_cel -as $DESIGN_NAME
close_mw_lib

set_write_stream_options \
    -output_filling         fill \
    -output_pin             {text geometry} \
    -map_layer              [which $SIGNOFF_MAPFILE] \
    -pin_name_mag           0.5 \
    -output_outdated_fill \
    -keep_data_type

write_stream \
    -lib_name   $MW_DESIGN_LIBRARY \
    -format     gds \
    $RESULT_DIR/$DESIGN_NAME.gds


# Creates a FRAM view.
if {$ICC_CREATE_MODEL} {
    save_mw_cel -as $DESIGN_NAME
    close_mw_cel
    open_mw_cel $DESIGN_NAME

    source -echo common_optimization_settings_icc.tcl
    source -echo common_placement_settings_icc.tcl
    source -echo common_post_cts_timing_settings.tcl
    source -echo common_route_si_settings_zrt_icc.tcl

    create_macro_fram 

    if {$ICC_FIX_ANTENNA} {
        # Create antenna info.
        extract_zrt_hier_antenna_property -cell_name $DESIGN_NAME
        }

    create_block_abstraction
    save_mw_cel
    close_mw_cel 
    }


puts "-----------------------------------------------------------------------"
puts "RM-Info: Completed script [info script]\n"
puts "-----------------------------------------------------------------------"

#exit

