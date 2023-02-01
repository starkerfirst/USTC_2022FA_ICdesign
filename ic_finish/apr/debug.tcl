source script/icc_setup.tcl
open_mw_lib $MW_DESIGN_LIBRARY
import_designs -format ddc $ICC_IN_DDC_FILE
open_mw_cel outputs_icc 
