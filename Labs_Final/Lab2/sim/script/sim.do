vlib work
vcom -93 -work work ../../src/lab.vhd
vcom -93 -work work ../src/lab_testbench.vhd
vsim -voptargs=+acc lab_testbench
do wave.do
run 50 ms