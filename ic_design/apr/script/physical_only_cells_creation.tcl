# e.g. create_cell {vdd1left vdd1right vdd1top vdd1bottom} pvdi

create_cell u_pad_corner_ul PCORNER
create_cell u_pad_corner_ur PCORNER
create_cell u_pad_corner_lr PCORNER
create_cell u_pad_corner_ll PCORNER

for {set i 0} {$i < 4} {incr i} {
	create_cell u_pad_vdd1_$i PVDD1CDG
    create_cell u_pad_vss3_$i PVSS3CDG
    create_cell u_pad_vdd2_$i PVDD2CDG
    }
