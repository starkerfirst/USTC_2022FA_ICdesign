# ICC RM Makefile
#-----------------------------------------------------------------------------

ICC_EXEC       = icc_shell -64bit
LOG_DIR        = log
REPORT_DIR     = report
RESULT_DIR     = result
SCRIPT_DIR     = script
PNA_OUTPUT_DIR = pna_output

# Source options
OPTIONS        =

# Optional: Specify design library for the backup step and clean step.
# CAUTION:  If added, the clean step will delete it.
DESIGN_LIB     =


#-----------------------------------------------------------------------------
# Flat Floorplanning Section
#-----------------------------------------------------------------------------

# Execute "make dp" to run IC Compiler design planning based on the
# common_setup.tcl and icc_setup.tcl files.

init_design_icc: 
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/init_design_icc.tcl | tee -i $(LOG_DIR)/init_design_icc.log
	date > init_design_icc

flat_dp: init_design_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/flat_dp.tcl | tee -i $(LOG_DIR)/flat_dp.log
	date > flat_dp

dp: flat_dp 
	date > dp


#-----------------------------------------------------------------------------
# Netlist-to-GDS Section
#-----------------------------------------------------------------------------

# Execute "make ic" to run IC Compiler based on the common_setup.tcl and
# icc_setup.tcl files.
# If "make dp" has been run before, please pick one of the eight created
# floorplans and fill that one in the variable ICC_FLOORPLAN_CEL in the
# icc_setup.tcl file.

place_opt_icc: dp
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/place_opt_icc.tcl | tee -i $(LOG_DIR)/place_opt_icc.log
	date > place_opt_icc

clock_opt_cts_icc: place_opt_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/clock_opt_cts_icc.tcl | tee -i $(LOG_DIR)/clock_opt_cts_icc.log
	date > clock_opt_cts_icc

clock_opt_psyn_icc: clock_opt_cts_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/clock_opt_psyn_icc.tcl | tee -i $(LOG_DIR)/clock_opt_psyn_icc.log
	date > clock_opt_psyn_icc

clock_opt_route_icc: clock_opt_psyn_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/clock_opt_route_icc.tcl | tee -i $(LOG_DIR)/clock_opt_route_icc.log
	date > clock_opt_route_icc

route_icc: clock_opt_route_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/route_icc.tcl | tee -i $(LOG_DIR)/route_icc.log
	date > route_icc

route_opt_icc: route_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/route_opt_icc.tcl | tee -i $(LOG_DIR)/route_opt_icc.log
	date > route_opt_icc

chip_finish_icc: route_opt_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/chip_finish_icc.tcl | tee -i $(LOG_DIR)/chip_finish_icc.log
	date > chip_finish_icc

metal_fill_icc: chip_finish_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/metal_fill_icc.tcl | tee -i $(LOG_DIR)/metal_fill_icc.log
	date > metal_fill_icc

signoff_drc_icc: metal_fill_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/signoff_drc_icc.tcl | tee -i $(LOG_DIR)/signoff_drc_icc.log
	date > signoff_drc_icc

outputs_icc: signoff_drc_icc
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/outputs_icc.tcl | tee -i $(LOG_DIR)/outputs_icc.log
	date > outputs_icc

ic: outputs_icc
	date > ic


#-----------------------------------------------------------------------------
# ECO Flow
#-----------------------------------------------------------------------------

eco_icc: 
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/eco_icc.tcl | tee -i $(LOG_DIR)/eco_icc.log
	date > eco_icc

eco: eco_icc
	date > eco


#-----------------------------------------------------------------------------
# Focal Optimization (focal_opt) Flow
#-----------------------------------------------------------------------------

focal_opt_icc:
	mkdir -p $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR)
	$(ICC_EXEC) $(OPTIONS) -f $(SCRIPT_DIR)/focal_opt_icc.tcl | tee -i $(LOG_DIR)/focal_opt_icc.log
	date > focal_opt_icc

focal_opt: focal_opt_icc
	date > focal_opt


#-----------------------------------------------------------------------------
# Utilities Section
#-----------------------------------------------------------------------------

# Backup
BACKUP = BACKUP.`date "+%m_%d_%H_%M"`
backup:
	rm -rf $(BACKUP)
	mkdir -p $(BACKUP)
	cp -rf rm_icc_scripts rm_icc_zrt_scripts rm_icc_dp_scripts rm_setup $(DESIGN_LIB) $(REPORT_DIR) $(RESULT_DIR) $(LOG_DIR) $(PNA_OUTPUT_DIR) $(BACKUP)

# Clean
clean_all:
	rm -f init_design_icc flat_dp dp init_design_icc_dp place_opt_icc clock_opt_cts_icc clock_opt_psyn_icc clock_opt_route_icc route_icc route_opt_icc chip_finish_icc metal_fill_icc signoff_drc_icc outputs_icc ic
	rm -rf $(DESIGN_LIB) *_map\.* net.acts *.attr .zr* Milkyway.cmd.*_*_*_* Milkyway.log.*_*_*_* \.vers* port_mapping.* pna_output command.log icc_output.txt filename*.log antenna.rule
	##ICC_RM-Info: "make clean" does not remove the design library unless you have specified it with the DESIGN_LIB variable in Makefile."

clean: clean_all
