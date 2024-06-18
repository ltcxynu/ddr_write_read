// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Jun 17 09:48:33 2024
// Host        : MOOS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_ddr_mpsoc_PL_DDR_v1_0_0_0_stub.v
// Design      : axi_ddr_mpsoc_PL_DDR_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PL_DDR_v1_0,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axi_m_init_axi_txn, axi_m_txn_done, 
  axi_m_error, axi_m_aclk, axi_m_aresetn, axi_m_awid, axi_m_awaddr, axi_m_awlen, axi_m_awsize, 
  axi_m_awburst, axi_m_awlock, axi_m_awcache, axi_m_awprot, axi_m_awqos, axi_m_awuser, 
  axi_m_awvalid, axi_m_awready, axi_m_wdata, axi_m_wstrb, axi_m_wlast, axi_m_wuser, 
  axi_m_wvalid, axi_m_wready, axi_m_bid, axi_m_bresp, axi_m_buser, axi_m_bvalid, axi_m_bready, 
  axi_m_arid, axi_m_araddr, axi_m_arlen, axi_m_arsize, axi_m_arburst, axi_m_arlock, 
  axi_m_arcache, axi_m_arprot, axi_m_arqos, axi_m_aruser, axi_m_arvalid, axi_m_arready, 
  axi_m_rid, axi_m_rdata, axi_m_rresp, axi_m_rlast, axi_m_ruser, axi_m_rvalid, axi_m_rready, 
  write_data, write_data_valid, read_data, read_data_valid, data_valid)
/* synthesis syn_black_box black_box_pad_pin="axi_m_init_axi_txn,axi_m_txn_done,axi_m_error,axi_m_aclk,axi_m_aresetn,axi_m_awid[0:0],axi_m_awaddr[31:0],axi_m_awlen[7:0],axi_m_awsize[2:0],axi_m_awburst[1:0],axi_m_awlock,axi_m_awcache[3:0],axi_m_awprot[2:0],axi_m_awqos[3:0],axi_m_awuser[0:0],axi_m_awvalid,axi_m_awready,axi_m_wdata[127:0],axi_m_wstrb[15:0],axi_m_wlast,axi_m_wuser[0:0],axi_m_wvalid,axi_m_wready,axi_m_bid[0:0],axi_m_bresp[1:0],axi_m_buser[0:0],axi_m_bvalid,axi_m_bready,axi_m_arid[0:0],axi_m_araddr[31:0],axi_m_arlen[7:0],axi_m_arsize[2:0],axi_m_arburst[1:0],axi_m_arlock,axi_m_arcache[3:0],axi_m_arprot[2:0],axi_m_arqos[3:0],axi_m_aruser[0:0],axi_m_arvalid,axi_m_arready,axi_m_rid[0:0],axi_m_rdata[127:0],axi_m_rresp[1:0],axi_m_rlast,axi_m_ruser[0:0],axi_m_rvalid,axi_m_rready,write_data[1023:0],write_data_valid,read_data[1023:0],read_data_valid,data_valid" */;
  input axi_m_init_axi_txn;
  output axi_m_txn_done;
  output axi_m_error;
  input axi_m_aclk;
  input axi_m_aresetn;
  output [0:0]axi_m_awid;
  output [31:0]axi_m_awaddr;
  output [7:0]axi_m_awlen;
  output [2:0]axi_m_awsize;
  output [1:0]axi_m_awburst;
  output axi_m_awlock;
  output [3:0]axi_m_awcache;
  output [2:0]axi_m_awprot;
  output [3:0]axi_m_awqos;
  output [0:0]axi_m_awuser;
  output axi_m_awvalid;
  input axi_m_awready;
  output [127:0]axi_m_wdata;
  output [15:0]axi_m_wstrb;
  output axi_m_wlast;
  output [0:0]axi_m_wuser;
  output axi_m_wvalid;
  input axi_m_wready;
  input [0:0]axi_m_bid;
  input [1:0]axi_m_bresp;
  input [0:0]axi_m_buser;
  input axi_m_bvalid;
  output axi_m_bready;
  output [0:0]axi_m_arid;
  output [31:0]axi_m_araddr;
  output [7:0]axi_m_arlen;
  output [2:0]axi_m_arsize;
  output [1:0]axi_m_arburst;
  output axi_m_arlock;
  output [3:0]axi_m_arcache;
  output [2:0]axi_m_arprot;
  output [3:0]axi_m_arqos;
  output [0:0]axi_m_aruser;
  output axi_m_arvalid;
  input axi_m_arready;
  input [0:0]axi_m_rid;
  input [127:0]axi_m_rdata;
  input [1:0]axi_m_rresp;
  input axi_m_rlast;
  input [0:0]axi_m_ruser;
  input axi_m_rvalid;
  output axi_m_rready;
  input [1023:0]write_data;
  input write_data_valid;
  output [1023:0]read_data;
  input read_data_valid;
  output data_valid;
endmodule
