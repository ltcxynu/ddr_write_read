//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Jun 18 17:13:25 2024
//Host        : MOOS running 64-bit major release  (build 9200)
//Command     : generate_target verify_write_read_wrapper.bd
//Design      : verify_write_read_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module verify_write_read_wrapper
   (Trans_done_0,
    axi_m_aclk_0,
    axi_m_aresetn_0,
    axi_m_init_axi_txn_0,
    data_valid_0,
    read_data_0,
    read_data_valid_0,
    write_data_0,
    write_data_valid_0,
    write_done_0);
  output Trans_done_0;
  input axi_m_aclk_0;
  input axi_m_aresetn_0;
  input axi_m_init_axi_txn_0;
  output data_valid_0;
  output [1023:0]read_data_0;
  input read_data_valid_0;
  input [1023:0]write_data_0;
  input write_data_valid_0;
  output write_done_0;

  wire Trans_done_0;
  wire axi_m_aclk_0;
  wire axi_m_aresetn_0;
  wire axi_m_init_axi_txn_0;
  wire data_valid_0;
  wire [1023:0]read_data_0;
  wire read_data_valid_0;
  wire [1023:0]write_data_0;
  wire write_data_valid_0;
  wire write_done_0;

  verify_write_read verify_write_read_i
       (.Trans_done_0(Trans_done_0),
        .axi_m_aclk_0(axi_m_aclk_0),
        .axi_m_aresetn_0(axi_m_aresetn_0),
        .axi_m_init_axi_txn_0(axi_m_init_axi_txn_0),
        .data_valid_0(data_valid_0),
        .read_data_0(read_data_0),
        .read_data_valid_0(read_data_valid_0),
        .write_data_0(write_data_0),
        .write_data_valid_0(write_data_valid_0),
        .write_done_0(write_done_0));
endmodule
