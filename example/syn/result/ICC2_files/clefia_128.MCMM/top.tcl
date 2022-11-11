## created by write_timing_context -format icc2 -output result/ICC2_files/clefia_128.MCMM
puts "Information: sourcing [info script]";
remove_modes -all;remove_corners -all;remove_scenarios -all;
namespace eval 61D0A512 {
  variable _search_path $::search_path;
  set ::search_path [linsert $_search_path 0 [file normalize [file dirname [info script]]] ];

  source helper_script.tcl;
}


## IC Compiler (pseduo) Scenario: virtual_scenario
create_mode virtual_scenario;
create_corner virtual_scenario;
create_scenario -mode virtual_scenario -corner virtual_scenario -name virtual_scenario;
set_app_options -list { time.convert_constraint_from_bc_wc wc_only};
namespace eval 61D0A512 {
  source -continue_on_error scenario_virtual_scenario.tcl;
}
create_mode virtual_scenario_bc;
create_corner virtual_scenario_bc;
create_scenario -mode virtual_scenario_bc -corner virtual_scenario_bc -name virtual_scenario_bc;
set_app_options -list { time.convert_constraint_from_bc_wc bc_only};
namespace eval 61D0A512 {
  source -continue_on_error scenario_virtual_scenario.tcl;
}
## Scenario Status
## Test Power UI
set_scenario_status -none -setup true -hold {false} virtual_scenario;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power true -leakage_power true virtual_scenario;
} else {
  set_scenario_status -power [expr true || true] virtual_scenario;
}
set_scenario_status -none -setup {false} -hold true virtual_scenario_bc;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power true -leakage_power true virtual_scenario_bc;
} else {
  set_scenario_status -power [expr true || true] virtual_scenario_bc;
}
## have the max drc costing follow the setup costing and min drc costing follow the hold costing
if [sizeof_collection [get_scenarios -quiet -filter setup]] {set_scenario_status -max_cap true -max_tran true [get_scenarios -filter setup];}
if [sizeof_collection [get_scenarios -quiet -filter hold]] {set_scenario_status -min_cap true [get_scenarios -filter hold];}
set_app_options -list { time.convert_constraint_from_bc_wc none};

## these were the acive and current scenarios in the generation session
set_scenario_status -active true *;
namespace eval 61D0A512 {
  proc set_tlu_plus_files {args} {}; ## Do not want these applied globally
  source -continue_on_error design.tcl;
  set ::search_path $_search_path;
}
namespace delete 61D0A512;
puts "Information: sourced [info script]";
