#SA with ctrl
vcs -full64  -PP +lint=all +v2k -debug -line ~/ic_design/src/lib.v \
				    ~/ic_design/src/systolic_array/array.v \
                                    ~/ic_design/src/systolic_array/pe.v \
                                    ~/ic_design/src/systolic_array/shift_buffer.v \
                                    ~/ic_design/src/systolic_array/systolic_array_wrapper_withctl.v \
				    ~/ic_design/src/systolic_array/controller.v \
				    systolic_array_sim_with_control.v

./simv

