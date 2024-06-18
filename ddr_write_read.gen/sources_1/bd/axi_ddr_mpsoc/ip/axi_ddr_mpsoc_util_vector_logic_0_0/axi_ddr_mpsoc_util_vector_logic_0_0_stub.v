// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Jun 17 09:48:30 2024
// Host        : MOOS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/project_fpga/ddr_write_read/ddr_write_read.gen/sources_1/bd/axi_ddr_mpsoc/ip/axi_ddr_mpsoc_util_vector_logic_0_0/axi_ddr_mpsoc_util_vector_logic_0_0_stub.v
// Design      : axi_ddr_mpsoc_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *)
module axi_ddr_mpsoc_util_vector_logic_0_0(Op1, Op2, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[0:0],Op2[0:0],Res[0:0]" */;
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;
endmodule
