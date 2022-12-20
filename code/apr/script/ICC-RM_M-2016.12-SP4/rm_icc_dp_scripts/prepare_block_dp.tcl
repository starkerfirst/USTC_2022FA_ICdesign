########################################################################################
# ICC Hierarchical RM
# prepare_block_dp: Prepare block and top sub directories
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
#########################################################################################

source -echo ./rm_setup/icc_setup.tcl 
gui_set_current_task -name {Design Planning}

open_mw_lib $MW_DESIGN_LIBRARY
open_mw_cel $ICC_DP_COMMIT_CEL -readonly


########################################################################################
## Get Block List
########################################################################################
set block_list {}
foreach softmacro ${ICC_DP_PLAN_GROUPS} {
  set block [get_attribute -class cell $softmacro ref_name]
  set block_list "$block_list $block"
  set unique_block_list [lsort -unique $block_list]
}

close_mw_cel
close_mw_lib


########################################################################################
## Prepare block level run directory
########################################################################################
foreach block $unique_block_list {
  file mkdir $block
  file copy -force rm_setup rm_icc_scripts rm_icc_zrt_scripts rm_icc_dp_scripts $block
  if {[file exists $block/lib_${block}]} {file delete -force $block/lib_${block}}
  file rename lib_${block} $block



  ### Prepare Setup Files ###
  set fid_r [open rm_setup/common_setup.tcl r] 
  set fid_w [open ${block}/rm_setup/common_setup.tcl w] 
  while {[gets $fid_r line] >= 0} {
  	if { [regexp "set DESIGN_NAME" $line]} {
  		puts $fid_w "set DESIGN_NAME $block"
  	} else {
  		puts $fid_w $line
  	}
  }
  close $fid_w
  close $fid_r
  set fid_r [open rm_setup/icc_setup.tcl r] 
  set fid_w [open ${block}/rm_setup/icc_setup.tcl w] 
  while {[gets $fid_r line] >= 0} {
  	if { [regexp "set MW_DESIGN_LIBRARY" $line]} {
  		puts $fid_w "set MW_DESIGN_LIBRARY lib_\$DESIGN_NAME" 
  	} elseif { [regexp "set ICC_INIT_DESIGN_INPUT" $line]} {
  		puts $fid_w "set ICC_INIT_DESIGN_INPUT MW"
  	} elseif { [regexp "set ICC_INPUT_CEL" $line]} {
  		puts $fid_w "set ICC_INPUT_CEL \$DESIGN_NAME"
  	} elseif { [regexp "set ICC_FLOORPLAN_INPUT" $line]} {
  		puts $fid_w "set ICC_FLOORPLAN_INPUT SKIP"
  	} elseif { [regexp "set PNS_BLOCK_MODE" $line]} {
  		puts $fid_w "set PNS_BLOCK_MODE TRUE"
  	} elseif { [regexp "set ICC_IMPLEMENTATION_PHASE" $line]} {
  		puts $fid_w "set ICC_IMPLEMENTATION_PHASE block"
  	} elseif { [regexp "set ICC_CREATE_MODEL" $line]} {
  		puts $fid_w "set ICC_CREATE_MODEL TRUE"
  	} else {
  		puts $fid_w $line
  	}
  }
  close $fid_w
  close $fid_r

  ### Open CEL ###
  cd ./$block
  source rm_setup/icc_setup.tcl
  open_mw_lib $MW_DESIGN_LIBRARY
  open_mw_cel $block

  ## Outputs for DCT ###
  write_def -version 5.7 -rows_tracks_gcells -macro -pins -blockages -specialnets -vias -regions_groups -verbose -output ${block}.DCT.def
        write_floorplan -create_terminal -create_bound -row -track -preroute -placement {io terminal hard_macro soft_macro} ${block}.DCT.fp


  ### Create FRAM and block abstraction
  create_macro_fram 
  create_block_abstraction
  save_mw_cel

  close_mw_cel
  close_mw_lib
  cd ../ 
}


########################################################################################
## Prepare top level run directory
########################################################################################
  source rm_setup/common_setup.tcl
  file mkdir ${DESIGN_NAME}
        if {![file exists top]} {sh ln -s ${DESIGN_NAME} top}
        if {[file exists ${DESIGN_NAME}/rm_setup]} {file delete -force ${DESIGN_NAME}/rm_setup}
        if {[file exists ${DESIGN_NAME}/rm_icc_scripts]} {file delete -force ${DESIGN_NAME}/rm_icc_scripts}
        if {[file exists ${DESIGN_NAME}/rm_icc_zrt_scripts]} {file delete -force ${DESIGN_NAME}/rm_icc_zrt_scripts}
        if {[file exists ${DESIGN_NAME}/rm_icc_dp_scripts]} {file delete -force ${DESIGN_NAME}/rm_icc_dp_scripts}
  file copy -force rm_setup rm_icc_scripts rm_icc_zrt_scripts rm_icc_dp_scripts ${DESIGN_NAME}
  if {[file exists ${DESIGN_NAME}/lib_$ICC_DP_COMMIT_CEL]} {file delete -force ${DESIGN_NAME}/lib_$ICC_DP_COMMIT_CEL]}
  file rename lib_$ICC_DP_COMMIT_CEL ${DESIGN_NAME}


  ### Prepare Setup Files ###
  set fid_r [open rm_setup/icc_setup.tcl r] 
  set fid_w [open ${DESIGN_NAME}/rm_setup/icc_setup.tcl w] 
  while {[gets $fid_r line] >= 0} {
  	if { [regexp "set MW_DESIGN_LIBRARY" $line]} {
  		puts $fid_w "set MW_DESIGN_LIBRARY lib_$ICC_DP_COMMIT_CEL" 
  	} elseif { [regexp "set ICC_INIT_DESIGN_INPUT" $line]} {
  		puts $fid_w "set ICC_INIT_DESIGN_INPUT MW"
  	} elseif { [regexp "set ICC_INPUT_CEL" $line]} {
  		puts $fid_w "set ICC_INPUT_CEL $ICC_DP_COMMIT_CEL"
  	} elseif { [regexp "set ICC_FLOORPLAN_INPUT" $line]} {
  		puts $fid_w "set ICC_FLOORPLAN_INPUT SKIP"
  	} elseif { [regexp "set ICC_IMPLEMENTATION_PHASE" $line]} {
  		puts $fid_w "set ICC_IMPLEMENTATION_PHASE top"
  	} elseif { [regexp "set ICC_CREATE_MODEL" $line]} {
  		puts $fid_w "set ICC_CREATE_MODEL FALSE"
  	} elseif { [regexp "set ICC_WRITE_FULL_CHIP_VERILOG" $line]} {
  		puts $fid_w "set ICC_WRITE_FULL_CHIP_VERILOG TRUE"
  	} elseif { [regexp "set ICC_BLOCK_ABSTRACTIONS_LIST" $line]} {
  	        if {$ICC_BLOCK_ABSTRACTIONS_LIST == ""} {
  		puts $fid_w "set ICC_BLOCK_ABSTRACTIONS_LIST \"$unique_block_list\""
  	        } else {
  		puts $fid_w $line		
  		}
  	} else {
  		puts $fid_w $line
  	}
  }
  close $fid_w
  close $fid_r
  set MW_SOFT_MACRO_LIBS {}
  foreach block $unique_block_list {
  	set MW_SOFT_MACRO_LIBS "$MW_SOFT_MACRO_LIBS ../${block}/lib_${block}"
  }
  redirect -append ${DESIGN_NAME}/rm_setup/icc_setup.tcl {echo set MW_SOFT_MACRO_LIBS {"} $MW_SOFT_MACRO_LIBS {"}}
  redirect -append ${DESIGN_NAME}/rm_setup/icc_setup.tcl {
  	echo if "{" {$synopsys_program_name} == \"icc_shell\" "}" "{" set_mw_lib_reference {$MW_DESIGN_LIBRARY} -mw_reference_library {"$MW_REFERENCE_LIB_DIRS $MW_SOFT_MACRO_LIBS"} "}"
  	#echo "set_mw_lib_reference" {$MW_DESIGN_LIBRARY} -mw_reference_library {"$MW_REFERENCE_LIB_DIRS $MW_SOFT_MACRO_LIBS"}
  }

  ### Prepare Link, FRAM View and fix the blocks
  cd ./${DESIGN_NAME}
  source rm_setup/icc_setup.tcl
  open_mw_lib $MW_DESIGN_LIBRARY
  open_mw_cel $ICC_DP_COMMIT_CEL

   foreach block $unique_block_list {
           change_macro_view -reference $block -view FRAM
   }
  foreach softmacro $ICC_DP_PLAN_GROUPS {
  set_attribute $softmacro is_fixed false
  }


          set_top_implementation_options -block_references "$unique_block_list" 

  save_mw_cel

  ### Outputs for DCT ###
  write_def -version 5.7 -rows_tracks_gcells -macro -pins -blockages -specialnets -vias -regions_groups -verbose -output top.DCT.def 
  write_floorplan -create_terminal -create_bound -row -track -preroute -placement {io terminal hard_macro soft_macro} top.DCT.fp 


  close_mw_cel
  close_mw_lib
  cd ../ 
exit

