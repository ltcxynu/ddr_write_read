//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Jun 18 17:13:25 2024
//Host        : MOOS running 64-bit major release  (build 9200)
//Command     : generate_target verify_write_read.bd
//Design      : verify_write_read
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "verify_write_read,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=verify_write_read,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "verify_write_read.hwdef" *) 
module verify_write_read
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_M_ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_M_ACLK_0, ASSOCIATED_RESET axi_m_aresetn_0, CLK_DOMAIN verify_write_read_axi_m_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axi_m_aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_M_ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_M_ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_m_aresetn_0;
  input axi_m_init_axi_txn_0;
  output data_valid_0;
  output [1023:0]read_data_0;
  input read_data_valid_0;
  input [1023:0]write_data_0;
  input write_data_valid_0;
  output write_done_0;

  wire PL_DDR_v1_0_0_Trans_done;
  wire [31:0]PL_DDR_v1_0_0_axi_m_ARADDR;
  wire [1:0]PL_DDR_v1_0_0_axi_m_ARBURST;
  wire [3:0]PL_DDR_v1_0_0_axi_m_ARCACHE;
  wire [0:0]PL_DDR_v1_0_0_axi_m_ARID;
  wire [7:0]PL_DDR_v1_0_0_axi_m_ARLEN;
  wire PL_DDR_v1_0_0_axi_m_ARLOCK;
  wire [2:0]PL_DDR_v1_0_0_axi_m_ARPROT;
  wire [3:0]PL_DDR_v1_0_0_axi_m_ARQOS;
  wire PL_DDR_v1_0_0_axi_m_ARREADY;
  wire [2:0]PL_DDR_v1_0_0_axi_m_ARSIZE;
  wire [0:0]PL_DDR_v1_0_0_axi_m_ARUSER;
  wire PL_DDR_v1_0_0_axi_m_ARVALID;
  wire [31:0]PL_DDR_v1_0_0_axi_m_AWADDR;
  wire [1:0]PL_DDR_v1_0_0_axi_m_AWBURST;
  wire [3:0]PL_DDR_v1_0_0_axi_m_AWCACHE;
  wire [0:0]PL_DDR_v1_0_0_axi_m_AWID;
  wire [7:0]PL_DDR_v1_0_0_axi_m_AWLEN;
  wire PL_DDR_v1_0_0_axi_m_AWLOCK;
  wire [2:0]PL_DDR_v1_0_0_axi_m_AWPROT;
  wire [3:0]PL_DDR_v1_0_0_axi_m_AWQOS;
  wire PL_DDR_v1_0_0_axi_m_AWREADY;
  wire [2:0]PL_DDR_v1_0_0_axi_m_AWSIZE;
  wire [0:0]PL_DDR_v1_0_0_axi_m_AWUSER;
  wire PL_DDR_v1_0_0_axi_m_AWVALID;
  wire [0:0]PL_DDR_v1_0_0_axi_m_BID;
  wire PL_DDR_v1_0_0_axi_m_BREADY;
  wire [1:0]PL_DDR_v1_0_0_axi_m_BRESP;
  wire [0:0]PL_DDR_v1_0_0_axi_m_BUSER;
  wire PL_DDR_v1_0_0_axi_m_BVALID;
  wire [127:0]PL_DDR_v1_0_0_axi_m_RDATA;
  wire [0:0]PL_DDR_v1_0_0_axi_m_RID;
  wire PL_DDR_v1_0_0_axi_m_RLAST;
  wire PL_DDR_v1_0_0_axi_m_RREADY;
  wire [1:0]PL_DDR_v1_0_0_axi_m_RRESP;
  wire [0:0]PL_DDR_v1_0_0_axi_m_RUSER;
  wire PL_DDR_v1_0_0_axi_m_RVALID;
  wire [127:0]PL_DDR_v1_0_0_axi_m_WDATA;
  wire PL_DDR_v1_0_0_axi_m_WLAST;
  wire PL_DDR_v1_0_0_axi_m_WREADY;
  wire [15:0]PL_DDR_v1_0_0_axi_m_WSTRB;
  wire [0:0]PL_DDR_v1_0_0_axi_m_WUSER;
  wire PL_DDR_v1_0_0_axi_m_WVALID;
  wire PL_DDR_v1_0_0_data_valid;
  wire [1023:0]PL_DDR_v1_0_0_read_data;
  wire PL_DDR_v1_0_0_write_done;
  wire axi_m_aclk_0_1;
  wire axi_m_aresetn_0_1;
  wire axi_m_init_axi_txn_0_1;
  wire read_data_valid_0_1;
  wire [1023:0]write_data_0_1;
  wire write_data_valid_0_1;

  assign Trans_done_0 = PL_DDR_v1_0_0_Trans_done;
  assign axi_m_aclk_0_1 = axi_m_aclk_0;
  assign axi_m_aresetn_0_1 = axi_m_aresetn_0;
  assign axi_m_init_axi_txn_0_1 = axi_m_init_axi_txn_0;
  assign data_valid_0 = PL_DDR_v1_0_0_data_valid;
  assign read_data_0[1023:0] = PL_DDR_v1_0_0_read_data;
  assign read_data_valid_0_1 = read_data_valid_0;
  assign write_data_0_1 = write_data_0[1023:0];
  assign write_data_valid_0_1 = write_data_valid_0;
  assign write_done_0 = PL_DDR_v1_0_0_write_done;
  verify_write_read_PL_DDR_v1_0_0_0 PL_DDR_v1_0_0
       (.Trans_done(PL_DDR_v1_0_0_Trans_done),
        .axi_m_aclk(axi_m_aclk_0_1),
        .axi_m_araddr(PL_DDR_v1_0_0_axi_m_ARADDR),
        .axi_m_arburst(PL_DDR_v1_0_0_axi_m_ARBURST),
        .axi_m_arcache(PL_DDR_v1_0_0_axi_m_ARCACHE),
        .axi_m_aresetn(axi_m_aresetn_0_1),
        .axi_m_arid(PL_DDR_v1_0_0_axi_m_ARID),
        .axi_m_arlen(PL_DDR_v1_0_0_axi_m_ARLEN),
        .axi_m_arlock(PL_DDR_v1_0_0_axi_m_ARLOCK),
        .axi_m_arprot(PL_DDR_v1_0_0_axi_m_ARPROT),
        .axi_m_arqos(PL_DDR_v1_0_0_axi_m_ARQOS),
        .axi_m_arready(PL_DDR_v1_0_0_axi_m_ARREADY),
        .axi_m_arsize(PL_DDR_v1_0_0_axi_m_ARSIZE),
        .axi_m_aruser(PL_DDR_v1_0_0_axi_m_ARUSER),
        .axi_m_arvalid(PL_DDR_v1_0_0_axi_m_ARVALID),
        .axi_m_awaddr(PL_DDR_v1_0_0_axi_m_AWADDR),
        .axi_m_awburst(PL_DDR_v1_0_0_axi_m_AWBURST),
        .axi_m_awcache(PL_DDR_v1_0_0_axi_m_AWCACHE),
        .axi_m_awid(PL_DDR_v1_0_0_axi_m_AWID),
        .axi_m_awlen(PL_DDR_v1_0_0_axi_m_AWLEN),
        .axi_m_awlock(PL_DDR_v1_0_0_axi_m_AWLOCK),
        .axi_m_awprot(PL_DDR_v1_0_0_axi_m_AWPROT),
        .axi_m_awqos(PL_DDR_v1_0_0_axi_m_AWQOS),
        .axi_m_awready(PL_DDR_v1_0_0_axi_m_AWREADY),
        .axi_m_awsize(PL_DDR_v1_0_0_axi_m_AWSIZE),
        .axi_m_awuser(PL_DDR_v1_0_0_axi_m_AWUSER),
        .axi_m_awvalid(PL_DDR_v1_0_0_axi_m_AWVALID),
        .axi_m_bid(PL_DDR_v1_0_0_axi_m_BID),
        .axi_m_bready(PL_DDR_v1_0_0_axi_m_BREADY),
        .axi_m_bresp(PL_DDR_v1_0_0_axi_m_BRESP),
        .axi_m_buser(PL_DDR_v1_0_0_axi_m_BUSER),
        .axi_m_bvalid(PL_DDR_v1_0_0_axi_m_BVALID),
        .axi_m_init_axi_txn(axi_m_init_axi_txn_0_1),
        .axi_m_rdata(PL_DDR_v1_0_0_axi_m_RDATA),
        .axi_m_rid(PL_DDR_v1_0_0_axi_m_RID),
        .axi_m_rlast(PL_DDR_v1_0_0_axi_m_RLAST),
        .axi_m_rready(PL_DDR_v1_0_0_axi_m_RREADY),
        .axi_m_rresp(PL_DDR_v1_0_0_axi_m_RRESP),
        .axi_m_ruser(PL_DDR_v1_0_0_axi_m_RUSER),
        .axi_m_rvalid(PL_DDR_v1_0_0_axi_m_RVALID),
        .axi_m_wdata(PL_DDR_v1_0_0_axi_m_WDATA),
        .axi_m_wlast(PL_DDR_v1_0_0_axi_m_WLAST),
        .axi_m_wready(PL_DDR_v1_0_0_axi_m_WREADY),
        .axi_m_wstrb(PL_DDR_v1_0_0_axi_m_WSTRB),
        .axi_m_wuser(PL_DDR_v1_0_0_axi_m_WUSER),
        .axi_m_wvalid(PL_DDR_v1_0_0_axi_m_WVALID),
        .data_valid(PL_DDR_v1_0_0_data_valid),
        .read_data(PL_DDR_v1_0_0_read_data),
        .read_data_valid(read_data_valid_0_1),
        .write_data(write_data_0_1),
        .write_data_valid(write_data_valid_0_1),
        .write_done(PL_DDR_v1_0_0_write_done));
  verify_write_read_SIM_PS_AXI_S_v1_0_0_0 SIM_PS_AXI_S_v1_0_0
       (.s00_axi_aclk(axi_m_aclk_0_1),
        .s00_axi_araddr(PL_DDR_v1_0_0_axi_m_ARADDR[29:0]),
        .s00_axi_arburst(PL_DDR_v1_0_0_axi_m_ARBURST),
        .s00_axi_arcache(PL_DDR_v1_0_0_axi_m_ARCACHE),
        .s00_axi_aresetn(axi_m_aresetn_0_1),
        .s00_axi_arid(PL_DDR_v1_0_0_axi_m_ARID),
        .s00_axi_arlen(PL_DDR_v1_0_0_axi_m_ARLEN),
        .s00_axi_arlock(PL_DDR_v1_0_0_axi_m_ARLOCK),
        .s00_axi_arprot(PL_DDR_v1_0_0_axi_m_ARPROT),
        .s00_axi_arqos(PL_DDR_v1_0_0_axi_m_ARQOS),
        .s00_axi_arready(PL_DDR_v1_0_0_axi_m_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(PL_DDR_v1_0_0_axi_m_ARSIZE),
        .s00_axi_aruser(PL_DDR_v1_0_0_axi_m_ARUSER),
        .s00_axi_arvalid(PL_DDR_v1_0_0_axi_m_ARVALID),
        .s00_axi_awaddr(PL_DDR_v1_0_0_axi_m_AWADDR[29:0]),
        .s00_axi_awburst(PL_DDR_v1_0_0_axi_m_AWBURST),
        .s00_axi_awcache(PL_DDR_v1_0_0_axi_m_AWCACHE),
        .s00_axi_awid(PL_DDR_v1_0_0_axi_m_AWID),
        .s00_axi_awlen(PL_DDR_v1_0_0_axi_m_AWLEN),
        .s00_axi_awlock(PL_DDR_v1_0_0_axi_m_AWLOCK),
        .s00_axi_awprot(PL_DDR_v1_0_0_axi_m_AWPROT),
        .s00_axi_awqos(PL_DDR_v1_0_0_axi_m_AWQOS),
        .s00_axi_awready(PL_DDR_v1_0_0_axi_m_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(PL_DDR_v1_0_0_axi_m_AWSIZE),
        .s00_axi_awuser(PL_DDR_v1_0_0_axi_m_AWUSER),
        .s00_axi_awvalid(PL_DDR_v1_0_0_axi_m_AWVALID),
        .s00_axi_bid(PL_DDR_v1_0_0_axi_m_BID),
        .s00_axi_bready(PL_DDR_v1_0_0_axi_m_BREADY),
        .s00_axi_bresp(PL_DDR_v1_0_0_axi_m_BRESP),
        .s00_axi_buser(PL_DDR_v1_0_0_axi_m_BUSER),
        .s00_axi_bvalid(PL_DDR_v1_0_0_axi_m_BVALID),
        .s00_axi_rdata(PL_DDR_v1_0_0_axi_m_RDATA),
        .s00_axi_rid(PL_DDR_v1_0_0_axi_m_RID),
        .s00_axi_rlast(PL_DDR_v1_0_0_axi_m_RLAST),
        .s00_axi_rready(PL_DDR_v1_0_0_axi_m_RREADY),
        .s00_axi_rresp(PL_DDR_v1_0_0_axi_m_RRESP),
        .s00_axi_ruser(PL_DDR_v1_0_0_axi_m_RUSER),
        .s00_axi_rvalid(PL_DDR_v1_0_0_axi_m_RVALID),
        .s00_axi_wdata(PL_DDR_v1_0_0_axi_m_WDATA),
        .s00_axi_wlast(PL_DDR_v1_0_0_axi_m_WLAST),
        .s00_axi_wready(PL_DDR_v1_0_0_axi_m_WREADY),
        .s00_axi_wstrb(PL_DDR_v1_0_0_axi_m_WSTRB),
        .s00_axi_wuser(PL_DDR_v1_0_0_axi_m_WUSER),
        .s00_axi_wvalid(PL_DDR_v1_0_0_axi_m_WVALID));
endmodule
