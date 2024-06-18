// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:PL_DDR_v1_0:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_ddr_mpsoc_PL_DDR_v1_0_0_0 (
  axi_m_init_axi_txn,
  axi_m_txn_done,
  axi_m_error,
  axi_m_aclk,
  axi_m_aresetn,
  axi_m_awid,
  axi_m_awaddr,
  axi_m_awlen,
  axi_m_awsize,
  axi_m_awburst,
  axi_m_awlock,
  axi_m_awcache,
  axi_m_awprot,
  axi_m_awqos,
  axi_m_awuser,
  axi_m_awvalid,
  axi_m_awready,
  axi_m_wdata,
  axi_m_wstrb,
  axi_m_wlast,
  axi_m_wuser,
  axi_m_wvalid,
  axi_m_wready,
  axi_m_bid,
  axi_m_bresp,
  axi_m_buser,
  axi_m_bvalid,
  axi_m_bready,
  axi_m_arid,
  axi_m_araddr,
  axi_m_arlen,
  axi_m_arsize,
  axi_m_arburst,
  axi_m_arlock,
  axi_m_arcache,
  axi_m_arprot,
  axi_m_arqos,
  axi_m_aruser,
  axi_m_arvalid,
  axi_m_arready,
  axi_m_rid,
  axi_m_rdata,
  axi_m_rresp,
  axi_m_rlast,
  axi_m_ruser,
  axi_m_rvalid,
  axi_m_rready,
  write_data,
  write_data_valid,
  read_data,
  read_data_valid,
  data_valid,
  Trans_done,
  write_done
);

input wire axi_m_init_axi_txn;
output wire axi_m_txn_done;
output wire axi_m_error;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_m_aclk, ASSOCIATED_BUSIF axi_m, ASSOCIATED_RESET axi_m_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN axi_ddr_mpsoc_axi_m_aclk_300M, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_m_aclk CLK" *)
input wire axi_m_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_m_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_m_aresetn RST" *)
input wire axi_m_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWID" *)
output wire [0 : 0] axi_m_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWADDR" *)
output wire [31 : 0] axi_m_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWLEN" *)
output wire [7 : 0] axi_m_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWSIZE" *)
output wire [2 : 0] axi_m_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWBURST" *)
output wire [1 : 0] axi_m_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWLOCK" *)
output wire axi_m_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWCACHE" *)
output wire [3 : 0] axi_m_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWPROT" *)
output wire [2 : 0] axi_m_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWQOS" *)
output wire [3 : 0] axi_m_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWUSER" *)
output wire [0 : 0] axi_m_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWVALID" *)
output wire axi_m_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m AWREADY" *)
input wire axi_m_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m WDATA" *)
output wire [127 : 0] axi_m_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m WSTRB" *)
output wire [15 : 0] axi_m_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m WLAST" *)
output wire axi_m_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m WUSER" *)
output wire [0 : 0] axi_m_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m WVALID" *)
output wire axi_m_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m WREADY" *)
input wire axi_m_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m BID" *)
input wire [0 : 0] axi_m_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m BRESP" *)
input wire [1 : 0] axi_m_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m BUSER" *)
input wire [0 : 0] axi_m_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m BVALID" *)
input wire axi_m_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m BREADY" *)
output wire axi_m_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARID" *)
output wire [0 : 0] axi_m_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARADDR" *)
output wire [31 : 0] axi_m_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARLEN" *)
output wire [7 : 0] axi_m_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARSIZE" *)
output wire [2 : 0] axi_m_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARBURST" *)
output wire [1 : 0] axi_m_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARLOCK" *)
output wire axi_m_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARCACHE" *)
output wire [3 : 0] axi_m_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARPROT" *)
output wire [2 : 0] axi_m_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARQOS" *)
output wire [3 : 0] axi_m_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARUSER" *)
output wire [0 : 0] axi_m_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARVALID" *)
output wire axi_m_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m ARREADY" *)
input wire axi_m_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RID" *)
input wire [0 : 0] axi_m_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RDATA" *)
input wire [127 : 0] axi_m_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RRESP" *)
input wire [1 : 0] axi_m_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RLAST" *)
input wire axi_m_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RUSER" *)
input wire [0 : 0] axi_m_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RVALID" *)
input wire axi_m_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_m, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN axi_ddr_mpsoc_axi_m_aclk_300M, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_m RREADY" *)
output wire axi_m_rready;
input wire [1023 : 0] write_data;
input wire write_data_valid;
output wire [1023 : 0] read_data;
input wire read_data_valid;
output wire data_valid;
output wire Trans_done;
output wire write_done;

  PL_DDR_v1_0 #(
    .C_AXI_M_TARGET_SLAVE_BASE_ADDR(32'H40000000),
    .C_AXI_M_BURST_LEN(8),
    .C_AXI_M_ID_WIDTH(1),
    .C_AXI_M_ADDR_WIDTH(32),
    .C_AXI_M_DATA_WIDTH(128),
    .C_AXI_M_AWUSER_WIDTH(0),
    .C_AXI_M_ARUSER_WIDTH(0),
    .C_AXI_M_WUSER_WIDTH(0),
    .C_AXI_M_RUSER_WIDTH(0),
    .C_AXI_M_BUSER_WIDTH(0)
  ) inst (
    .axi_m_init_axi_txn(axi_m_init_axi_txn),
    .axi_m_txn_done(axi_m_txn_done),
    .axi_m_error(axi_m_error),
    .axi_m_aclk(axi_m_aclk),
    .axi_m_aresetn(axi_m_aresetn),
    .axi_m_awid(axi_m_awid),
    .axi_m_awaddr(axi_m_awaddr),
    .axi_m_awlen(axi_m_awlen),
    .axi_m_awsize(axi_m_awsize),
    .axi_m_awburst(axi_m_awburst),
    .axi_m_awlock(axi_m_awlock),
    .axi_m_awcache(axi_m_awcache),
    .axi_m_awprot(axi_m_awprot),
    .axi_m_awqos(axi_m_awqos),
    .axi_m_awuser(axi_m_awuser),
    .axi_m_awvalid(axi_m_awvalid),
    .axi_m_awready(axi_m_awready),
    .axi_m_wdata(axi_m_wdata),
    .axi_m_wstrb(axi_m_wstrb),
    .axi_m_wlast(axi_m_wlast),
    .axi_m_wuser(axi_m_wuser),
    .axi_m_wvalid(axi_m_wvalid),
    .axi_m_wready(axi_m_wready),
    .axi_m_bid(axi_m_bid),
    .axi_m_bresp(axi_m_bresp),
    .axi_m_buser(axi_m_buser),
    .axi_m_bvalid(axi_m_bvalid),
    .axi_m_bready(axi_m_bready),
    .axi_m_arid(axi_m_arid),
    .axi_m_araddr(axi_m_araddr),
    .axi_m_arlen(axi_m_arlen),
    .axi_m_arsize(axi_m_arsize),
    .axi_m_arburst(axi_m_arburst),
    .axi_m_arlock(axi_m_arlock),
    .axi_m_arcache(axi_m_arcache),
    .axi_m_arprot(axi_m_arprot),
    .axi_m_arqos(axi_m_arqos),
    .axi_m_aruser(axi_m_aruser),
    .axi_m_arvalid(axi_m_arvalid),
    .axi_m_arready(axi_m_arready),
    .axi_m_rid(axi_m_rid),
    .axi_m_rdata(axi_m_rdata),
    .axi_m_rresp(axi_m_rresp),
    .axi_m_rlast(axi_m_rlast),
    .axi_m_ruser(axi_m_ruser),
    .axi_m_rvalid(axi_m_rvalid),
    .axi_m_rready(axi_m_rready),
    .write_data(write_data),
    .write_data_valid(write_data_valid),
    .read_data(read_data),
    .read_data_valid(read_data_valid),
    .data_valid(data_valid),
    .Trans_done(Trans_done),
    .write_done(write_done)
  );
endmodule
