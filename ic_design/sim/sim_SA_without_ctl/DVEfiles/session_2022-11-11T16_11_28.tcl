# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Fri Nov 11 16:43:47 2022
# Designs open: 1
#   Sim: /bks2/PB20000328/ic_design/sim/sim_SA/simv
# Toplevel windows open: 1
# 	TopLevel.2
#   Wave.1: 18 signals
#   Group count = 2
#   Group systolic_array_sim_without_control signal count = 32
#   Group core signal count = 18
# End_DVE_Session_Save_Info

# DVE version: H-2013.06_Full64
# DVE build date: May 30 2013 23:00:12


#<Session mode="Full" path="/bks2/PB20000328/ic_design/sim/sim_SA/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.2

if {![gui_exist_window -window TopLevel.2]} {
    set TopLevel.2 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.2 TopLevel.2
}
gui_show_window -window ${TopLevel.2} -show_state normal -rect {{28 51} {1241 657}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_set_toolbar_attributes -toolbar {Simulator} -dock_state top
gui_set_toolbar_attributes -toolbar {Simulator} -offset 0
gui_show_toolbar -toolbar {Simulator}
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -dock_state top
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -offset 0
gui_show_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
gui_sync_global -id ${TopLevel.2} -option true

# MDI window settings
set Wave.1 [gui_create_window -type {Wave}  -parent ${TopLevel.2}]
gui_show_window -window ${Wave.1} -show_state maximized
gui_update_layout -id ${Wave.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false} {child_wave_left 351} {child_wave_right 857} {child_wave_colname 173} {child_wave_colvalue 173} {child_wave_col1 0} {child_wave_col2 1}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) none
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) none
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) none
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.2}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { [llength [lindex [gui_get_db -design Sim] 0]] == 0 } {
gui_set_env SIMSETUP::SIMARGS {{}}
gui_set_env SIMSETUP::SIMEXE {./simv}
gui_set_env SIMSETUP::ALLOW_POLL {0}
if { ![gui_is_db_opened -db {/bks2/PB20000328/ic_design/sim/sim_SA/simv}] } {
gui_sim_run Ucli -exe simv -args { -ucligui} -dir /bks2/PB20000328/ic_design/sim/sim_SA -nosource
}
}
if { ![gui_sim_state -check active] } {error "Simulator did not start correctly" error}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Breakpoints

# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {systolic_array_sim_without_control.test.core}
gui_load_child_values {systolic_array_sim_without_control}


set _session_group_1 systolic_array_sim_without_control
gui_sg_create "$_session_group_1"
set systolic_array_sim_without_control "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { systolic_array_sim_without_control.id_A_0 systolic_array_sim_without_control.id_A_1 systolic_array_sim_without_control.id_A_2 systolic_array_sim_without_control.id_A_3 systolic_array_sim_without_control.shift_in_A_0 systolic_array_sim_without_control.shift_in_A_1 systolic_array_sim_without_control.shift_in_A_2 systolic_array_sim_without_control.id_B_0 systolic_array_sim_without_control.A systolic_array_sim_without_control.shift_in_A_3 systolic_array_sim_without_control.id_B_1 systolic_array_sim_without_control.B systolic_array_sim_without_control.id_B_2 systolic_array_sim_without_control.id_B_3 systolic_array_sim_without_control.OutputSign systolic_array_sim_without_control.D systolic_array_sim_without_control.rstn systolic_array_sim_without_control.E systolic_array_sim_without_control.shift_in_B_0 systolic_array_sim_without_control.shift_in_B_1 systolic_array_sim_without_control.shift_in_B_2 systolic_array_sim_without_control.shift_in_B_3 systolic_array_sim_without_control.i systolic_array_sim_without_control.j systolic_array_sim_without_control.shift systolic_array_sim_without_control.clk systolic_array_sim_without_control.shift_out_0 systolic_array_sim_without_control.shift_out_1 systolic_array_sim_without_control.shift_out_2 systolic_array_sim_without_control.shift_out_3 systolic_array_sim_without_control.load systolic_array_sim_without_control.clk_period }
gui_set_radix -radix {decimal} -signals {Sim:systolic_array_sim_without_control.clk_period}
gui_set_radix -radix {twosComplement} -signals {Sim:systolic_array_sim_without_control.clk_period}

set _session_group_2 core
gui_sg_create "$_session_group_2"
set core "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { systolic_array_sim_without_control.test.core.connect systolic_array_sim_without_control.test.core.OutputSign systolic_array_sim_without_control.test.core.rstn systolic_array_sim_without_control.test.core.shift_wire systolic_array_sim_without_control.test.core.input_col_0 systolic_array_sim_without_control.test.core.input_col_1 systolic_array_sim_without_control.test.core.input_col_2 systolic_array_sim_without_control.test.core.input_col_3 systolic_array_sim_without_control.test.core.output_row_0 systolic_array_sim_without_control.test.core.connect systolic_array_sim_without_control.test.core.output_row_1 systolic_array_sim_without_control.test.core.output_row_2 systolic_array_sim_without_control.test.core.output_row_3 systolic_array_sim_without_control.test.core.clk systolic_array_sim_without_control.test.core.input_row_0 systolic_array_sim_without_control.test.core.input_row_1 systolic_array_sim_without_control.test.core.input_row_2 systolic_array_sim_without_control.test.core.input_row_3 }
gui_set_radix -radix {decimal} -signals {Sim:systolic_array_sim_without_control.test.core.output_row_1}
gui_set_radix -radix {unsigned} -signals {Sim:systolic_array_sim_without_control.test.core.output_row_1}
gui_set_radix -radix {decimal} -signals {Sim:systolic_array_sim_without_control.test.core.output_row_2}
gui_set_radix -radix {unsigned} -signals {Sim:systolic_array_sim_without_control.test.core.output_row_2}
gui_set_radix -radix {decimal} -signals {Sim:systolic_array_sim_without_control.test.core.output_row_3}
gui_set_radix -radix {unsigned} -signals {Sim:systolic_array_sim_without_control.test.core.output_row_3}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 294229



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# View 'Wave.1'
gui_wv_sync -id ${Wave.1} -switch false
set groupExD [gui_get_pref_value -category Wave -key exclusiveSG]
gui_set_pref_value -category Wave -key exclusiveSG -value {false}
set origWaveHeight [gui_get_pref_value -category Wave -key waveRowHeight]
gui_list_set_height -id Wave -height 25
set origGroupCreationState [gui_list_create_group_when_add -wave]
gui_list_create_group_when_add -wave -disable
gui_marker_set_ref -id ${Wave.1}  C1
gui_wv_zoom_timerange -id ${Wave.1} 177493 463189
gui_list_add_group -id ${Wave.1} -after {New Group} {core}
gui_list_select -id ${Wave.1} {systolic_array_sim_without_control.test.core.output_row_0 }
gui_seek_criteria -id ${Wave.1} {Any Edge}

gui_list_item_set_property -id ${Wave.1} -group ${core} -index 9 -default false  -color default -draw_style default
gui_list_item_set_property -id ${Wave.1} -group ${core} -index 9 -radix {decimal}
gui_list_item_set_property -id ${Wave.1} -group ${core} -index 9 -radix {unsigned}


gui_set_env TOGGLE::DEFAULT_WAVE_WINDOW ${Wave.1}
gui_set_pref_value -category Wave -key exclusiveSG -value $groupExD
gui_list_set_height -id Wave -height $origWaveHeight
if {$origGroupCreationState} {
	gui_list_create_group_when_add -wave -enable
}
if { $groupExD } {
 gui_msg_report -code DVWW028
}
gui_list_set_filter -id ${Wave.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {Parameter 1} {All 1} {Aggregate 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Wave.1} -text {*}
gui_list_set_insertion_bar  -id ${Wave.1} -group core  -item {systolic_array_sim_without_control.test.core.connect[23:0][7:0]} -position below

gui_marker_move -id ${Wave.1} {C1} 294229
gui_view_scroll -id ${Wave.1} -vertical -set 102
gui_show_grid -id ${Wave.1} -enable false
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.2}]} {
	gui_set_active_window -window ${TopLevel.2}
	gui_set_active_window -window ${Wave.1}
}
#</Session>

