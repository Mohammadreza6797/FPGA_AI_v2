// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jan 20 20:45:50 2025
// Host        : DESKTOP-TT327LJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Mohammadreza/Desktop/DMA_TEST/DMA_Test/DMA_Test.gen/sources_1/bd/design_1/ip/design_1_ProcessAndFIFO_0_0/design_1_ProcessAndFIFO_0_0_stub.v
// Design      : design_1_ProcessAndFIFO_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ProcessAndFIFO,Vivado 2022.2" *)
module design_1_ProcessAndFIFO_0_0(ClK, InputReady, NotFull, DataIn, LastIn, STRBIn, 
  OutputReady, NotEmpty, DataOut, LastOut, STRBOut)
/* synthesis syn_black_box black_box_pad_pin="ClK,InputReady,NotFull,DataIn[31:0],LastIn,STRBIn[3:0],OutputReady,NotEmpty,DataOut[31:0],LastOut,STRBOut[3:0]" */;
  input ClK;
  input InputReady;
  output NotFull;
  input [31:0]DataIn;
  input LastIn;
  input [3:0]STRBIn;
  input OutputReady;
  output NotEmpty;
  output [31:0]DataOut;
  output LastOut;
  output [3:0]STRBOut;
endmodule
