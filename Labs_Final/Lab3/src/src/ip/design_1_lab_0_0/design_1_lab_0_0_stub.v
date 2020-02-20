// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Feb 19 17:47:52 2020
// Host        : ECTET-1360-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/hsb2790/Downloads/Lab_3/lab_3/src/ip/design_1_lab_0_0/design_1_lab_0_0_stub.v
// Design      : design_1_lab_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "lab,Vivado 2019.1" *)
module design_1_lab_0_0(clk, reset, enable, period, duty, \output )
/* synthesis syn_black_box black_box_pad_pin="clk,reset,enable,period[20:0],duty[20:0],\output " */;
  input clk;
  input reset;
  input enable;
  input [20:0]period;
  input [20:0]duty;
  output \output ;
endmodule
