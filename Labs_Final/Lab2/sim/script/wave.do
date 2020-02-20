onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab_testbench/output
add wave -noupdate /lab_testbench/clk
add wave -noupdate /lab_testbench/reset
add wave -noupdate /lab_testbench/period_pwm
add wave -noupdate /lab_testbench/duty
add wave -noupdate /lab_testbench/uut/count_sig
add wave -noupdate /lab_testbench/enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {499910 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 177
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {499901 ns} {500006 ns}