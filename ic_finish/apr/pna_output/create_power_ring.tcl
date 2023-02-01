set_pns_commit_mode true
# committing ring in strategy ring1
create_power_straps -direction horizontal -start_at 148.500 -nets {VDD} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 948.200 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 929.820 -nets {VDD} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 948.200 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 942.700 -nets {VDD} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 935.320 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 148.500 -nets {VDD} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 143.000 -start_high_ends coordinate -start_high_ends_coordinate 935.320 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 136.780 -nets {VSS} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.220 -start_high_ends coordinate -start_high_ends_coordinate 959.980 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 941.540 -nets {VSS} -layer 28 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.220 -start_high_ends coordinate -start_high_ends_coordinate 959.980 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 954.480 -nets {VSS} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.280 -start_high_ends coordinate -start_high_ends_coordinate 947.040 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 136.720 -nets {VSS} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.280 -start_high_ends coordinate -start_high_ends_coordinate 947.040 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 136.720 -nets {VSS} -layer 31 -width 11.000 -start_low_ends coordinate -start_low_ends_coordinate 131.280 -start_high_ends coordinate -start_high_ends_coordinate 947.040 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

set_pns_commit_mode false
