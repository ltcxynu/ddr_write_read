//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Jun 18 15:43:53 2024
//Host        : MOOS running 64-bit major release  (build 9200)
//Command     : generate_target axi_ddr_mpsoc_wrapper.bd
//Design      : axi_ddr_mpsoc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module axi_ddr_mpsoc_wrapper
   (Trans_done_0,
    axi_m_aclk_300M,
    axi_m_aresetn,
    axi_m_init,
    data_valid,
    read_data,
    read_data_valid,
    write_data,
    write_data_valid,
    write_done_0);
  output Trans_done_0;
  input axi_m_aclk_300M;
  input axi_m_aresetn;
  input axi_m_init;
  output data_valid;
  output [1023:0]read_data;
  input read_data_valid;
  input [1023:0]write_data;
  input write_data_valid;
  output write_done_0;

  wire Trans_done_0;
  wire axi_m_aclk_300M;
  wire axi_m_aresetn;
  wire axi_m_init;
  wire data_valid;
  wire [1023:0]read_data;
  wire read_data_valid;
  wire [1023:0]write_data;
  wire write_data_valid;
  wire write_done_0;

  axi_ddr_mpsoc axi_ddr_mpsoc_i
       (.Trans_done_0(Trans_done_0),
        .axi_m_aclk_300M(axi_m_aclk_300M),
        .axi_m_aresetn(axi_m_aresetn),
        .axi_m_init(axi_m_init),
        .data_valid(data_valid),
        .read_data(read_data),
        .read_data_valid(read_data_valid),
        .write_data(write_data),
        .write_data_valid(write_data_valid),
        .write_done_0(write_done_0));
endmodule
