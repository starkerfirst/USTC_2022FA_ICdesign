##########################################################################################
# Version: M-2016.12-SP4 (July 17, 2017)
# Copyright (C) 2010-2017 Synopsys, Inc. All rights reserved.
##########################################################################################

source -echo ./rm_setup/icc_setup.tcl 

###################################################
## focal_opt_icc: focal_opt
###################################################

open_mw_lib $MW_DESIGN_LIBRARY
redirect /dev/null "remove_mw_cel -version_kept 0 ${ICC_FOCAL_OPT_CEL}"
copy_mw_cel -from $ICC_FOCAL_OPT_STARTING_CEL -to $ICC_FOCAL_OPT_CEL
open_mw_cel $ICC_FOCAL_OPT_CEL


source -echo common_optimization_settings_icc.tcl
source -echo common_placement_settings_icc.tcl
source -echo common_post_cts_timing_settings.tcl


########################################
#    LOAD THE ROUTE AND SI SETTINGS    #
########################################

source -echo common_route_si_settings_zrt_icc.tcl



# Controls the effort level of TNS optimization
set_optimization_strategy -tns_effort $ICC_TNS_EFFORT_POSTROUTE

if { [check_error -verbose] != 0} { echo "RM-Error, flagging ..." }

if {[file exists [which $CUSTOM_FOCAL_OPT_PRE_SCRIPT]]} {
echo "RM-Info: Sourcing [which $CUSTOM_FOCAL_OPT_PRE_SCRIPT]"
source $CUSTOM_FOCAL_OPT_PRE_SCRIPT
}

## focal_opt allows you to optimize a specific subset of post route violations for setup/hold/drc
## these violating endpoints can be provided via a simple ascii file, e.g. :
##          I_STACK_TOP/I3_STACK_MEM/Stack_Mem_reg_2__1_/D
## execute man focal_opt to find additional options

## Note :
#  For running route_opt and focal_opt with filler cells placed, the filler cells must be type std_filler.
#  This is done by marking the std filler cells with gdsStdFillerCell during library dataprep.
#  If you see the following message when filler cells are inserted prior to route_opt or focal_opt,
#  then that means they are not marked properly :
#     WARNING : cell <xxx> is not of std filler cell subtype

 if {$ICC_FOCAL_OPT_HOLD_VIOLS != ""} {
  if {[file exists [which $ICC_FOCAL_OPT_HOLD_VIOLS]]} {
    focal_opt -hold_endpoints $ICC_FOCAL_OPT_HOLD_VIOLS
  } elseif {$ICC_FOCAL_OPT_HOLD_VIOLS == "all"} {
    focal_opt -hold_endpoints all
    }
 }
 
 if {$ICC_FOCAL_OPT_SETUP_VIOLS != ""} {
  if {[file exists [which $ICC_FOCAL_OPT_SETUP_VIOLS]]} {
    focal_opt -setup_endpoints $ICC_FOCAL_OPT_SETUP_VIOLS
  } elseif {$ICC_FOCAL_OPT_SETUP_VIOLS == "all"} {
    focal_opt -setup_endpoints all
    }
 }
 
 if {$ICC_FOCAL_OPT_DRC_NET_VIOLS != ""} {
  if {[file exists [which $ICC_FOCAL_OPT_DRC_NET_VIOLS]]} {
    focal_opt -drc_nets $ICC_FOCAL_OPT_DRC_NET_VIOLS
  } elseif {$ICC_FOCAL_OPT_DRC_NET_VIOLS == "all"} {
    focal_opt -drc_nets all
    }
 }
 
 if {$ICC_FOCAL_OPT_DRC_PIN_VIOLS != ""} {
  if {[file exists [which $ICC_FOCAL_OPT_DRC_PIN_VIOLS]]} {
    focal_opt -drc_pins $ICC_FOCAL_OPT_DRC_PIN_VIOLS
  } elseif {$ICC_FOCAL_OPT_DRC_PIN_VIOLS == "all"} {
    focal_opt -drc_pins all
    }
 }
 
 if {$ICC_FOCAL_OPT_XTALK_VIOLS != ""} {
  if {[file exists [which $ICC_FOCAL_OPT_XTALK_VIOLS]]} {
    focal_opt -xtalk_reduction $ICC_FOCAL_OPT_XTALK_VIOLS
  }
 }


 ########################################
 #   TIO setup for route_opt command
 ########################################
 if {$ICC_IMPLEMENTATION_PHASE == "top"} {
 source -echo common_route_opt_tio_settings_icc.tcl
 }

 ## The following route_opt command performs final overall optimization with -size_only option which is used
 #  to avoid potential route and cell disturbances associated with buffer insertion. These refer to the 
 #  pre-H-2013.03 postroute design closure flow. Refer to SolvNet #034130 for details on this flow.
 #  Refer to SolvNet #038921 for more details about the post-H-2013.03 postroute design closure flow.
 route_opt -incremental -size_only

 if {$POWER_OPTIMIZATION} {
 focal_opt -power
 }


if {[file exists [which $CUSTOM_FOCAL_OPT_POST_SCRIPT]]} {
echo "RM-Info: Sourcing [which $CUSTOM_FOCAL_OPT_POST_SCRIPT]"
source $CUSTOM_FOCAL_OPT_POST_SCRIPT
}

save_mw_cel -as $ICC_FOCAL_OPT_CEL

if {$ICC_REPORTING_EFFORT == "MED" } {
  redirect -tee -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.qor {report_qor}
  redirect -tee -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.qor -append {report_qor -summary}
  redirect -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.con {report_constraints}
}

if {$ICC_REPORTING_EFFORT != "OFF" } {
     redirect -tee -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.clock_tree {report_clock_tree -nosplit -summary}     ;# global skew report
     redirect -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.clock_timing {report_clock_timing -nosplit -type skew} ;# local skew report
}
if {$ICC_REPORTING_EFFORT != "OFF" } {
 redirect -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.max.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay max} 
 redirect -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.min.tim {report_timing -nosplit -crosstalk_delta -capacitance -transition_time -input_pins -nets -delay min} 
}
if {$ICC_REPORTING_EFFORT != "OFF" } {
 redirect -tee -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.sum {report_design_physical -all -verbose}
}


## Create Snapshot and Save

if {$ICC_REPORTING_EFFORT != "OFF" } {
 create_qor_snapshot -name $ICC_FOCAL_OPT_CEL
 redirect -file $REPORTS_DIR_FOCAL_OPT/$ICC_FOCAL_OPT_CEL.qor_snapshot.rpt {report_qor_snapshot -no_display}
}

exit

