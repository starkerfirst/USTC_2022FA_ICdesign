set_pns_commit_mode true
# committing ring in strategy ring1
create_power_straps -direction horizontal -start_at 148.500 -nets {VDD} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 757.240 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 749.500 -nets {VDD} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 757.240 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 751.740 -nets {VDD} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 755.000 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 148.500 -nets {VDD} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 755.000 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 136.780 -nets {VSS} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.220 -start_high_ends coordinate -start_high_ends_coordinate 769.020 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 761.220 -nets {VSS} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.220 -start_high_ends coordinate -start_high_ends_coordinate 769.020 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 763.520 -nets {VSS} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.280 -start_high_ends coordinate -start_high_ends_coordinate 766.720 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 136.720 -nets {VSS} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.280 -start_high_ends coordinate -start_high_ends_coordinate 766.720 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 136.720 -nets {VSS} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.280 -start_high_ends coordinate -start_high_ends_coordinate 766.720 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

set_pns_commit_mode false
