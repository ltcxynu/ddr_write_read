//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sat Jun 15 16:56:56 2024
//Host        : MOOS running 64-bit major release  (build 9200)
//Command     : generate_target axi_ddr_mpsoc.bd
//Design      : axi_ddr_mpsoc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_ddr_mpsoc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_ddr_mpsoc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,da_zynq_ultra_ps_e_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_ddr_mpsoc.hwdef" *) 
module axi_ddr_mpsoc
   (axi_m_aclk_300M,
    axi_m_aresetn,
    axi_m_init,
    data_valid,
    read_data,
    read_data_valid,
    write_data,
    write_data_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_M_ACLK_300M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_M_ACLK_300M, CLK_DOMAIN axi_ddr_mpsoc_axi_m_aclk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axi_m_aclk_300M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_M_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_M_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_m_aresetn;
  input axi_m_init;
  output data_valid;
  output [1023:0]read_data;
  input read_data_valid;
  input [1023:0]write_data;
  input write_data_valid;

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
  wire [5:0]PL_DDR_v1_0_0_axi_m_BID;
  wire PL_DDR_v1_0_0_axi_m_BREADY;
  wire [1:0]PL_DDR_v1_0_0_axi_m_BRESP;
  wire PL_DDR_v1_0_0_axi_m_BVALID;
  wire [127:0]PL_DDR_v1_0_0_axi_m_RDATA;
  wire [5:0]PL_DDR_v1_0_0_axi_m_RID;
  wire PL_DDR_v1_0_0_axi_m_RLAST;
  wire PL_DDR_v1_0_0_axi_m_RREADY;
  wire [1:0]PL_DDR_v1_0_0_axi_m_RRESP;
  wire PL_DDR_v1_0_0_axi_m_RVALID;
  wire [127:0]PL_DDR_v1_0_0_axi_m_WDATA;
  wire PL_DDR_v1_0_0_axi_m_WLAST;
  wire PL_DDR_v1_0_0_axi_m_WREADY;
  wire [15:0]PL_DDR_v1_0_0_axi_m_WSTRB;
  wire PL_DDR_v1_0_0_axi_m_WVALID;
  wire PL_DDR_v1_0_0_data_valid;
  wire [1023:0]PL_DDR_v1_0_0_read_data;
  wire axi_m_aclk_0_1;
  wire axi_m_aresetn_0_1;
  wire axi_m_init_axi_txn_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire read_data_valid_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [1023:0]write_data_0_1;
  wire write_data_valid_0_1;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign axi_m_aclk_0_1 = axi_m_aclk_300M;
  assign axi_m_aresetn_0_1 = axi_m_aresetn;
  assign axi_m_init_axi_txn_0_1 = axi_m_init;
  assign data_valid = PL_DDR_v1_0_0_data_valid;
  assign read_data[1023:0] = PL_DDR_v1_0_0_read_data;
  assign read_data_valid_0_1 = read_data_valid;
  assign write_data_0_1 = write_data[1023:0];
  assign write_data_valid_0_1 = write_data_valid;
  axi_ddr_mpsoc_PL_DDR_v1_0_0_0 PL_DDR_v1_0_0
       (.axi_m_aclk(axi_m_aclk_0_1),
        .axi_m_araddr(PL_DDR_v1_0_0_axi_m_ARADDR),
        .axi_m_arburst(PL_DDR_v1_0_0_axi_m_ARBURST),
        .axi_m_arcache(PL_DDR_v1_0_0_axi_m_ARCACHE),
        .axi_m_aresetn(util_vector_logic_0_Res),
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
        .axi_m_bid(PL_DDR_v1_0_0_axi_m_BID[0]),
        .axi_m_bready(PL_DDR_v1_0_0_axi_m_BREADY),
        .axi_m_bresp(PL_DDR_v1_0_0_axi_m_BRESP),
        .axi_m_buser(1'b0),
        .axi_m_bvalid(PL_DDR_v1_0_0_axi_m_BVALID),
        .axi_m_init_axi_txn(axi_m_init_axi_txn_0_1),
        .axi_m_rdata(PL_DDR_v1_0_0_axi_m_RDATA),
        .axi_m_rid(PL_DDR_v1_0_0_axi_m_RID[0]),
        .axi_m_rlast(PL_DDR_v1_0_0_axi_m_RLAST),
        .axi_m_rready(PL_DDR_v1_0_0_axi_m_RREADY),
        .axi_m_rresp(PL_DDR_v1_0_0_axi_m_RRESP),
        .axi_m_ruser(1'b0),
        .axi_m_rvalid(PL_DDR_v1_0_0_axi_m_RVALID),
        .axi_m_wdata(PL_DDR_v1_0_0_axi_m_WDATA),
        .axi_m_wlast(PL_DDR_v1_0_0_axi_m_WLAST),
        .axi_m_wready(PL_DDR_v1_0_0_axi_m_WREADY),
        .axi_m_wstrb(PL_DDR_v1_0_0_axi_m_WSTRB),
        .axi_m_wvalid(PL_DDR_v1_0_0_axi_m_WVALID),
        .data_valid(PL_DDR_v1_0_0_data_valid),
        .read_data(PL_DDR_v1_0_0_read_data),
        .read_data_valid(read_data_valid_0_1),
        .write_data(write_data_0_1),
        .write_data_valid(write_data_valid_0_1));
  axi_ddr_mpsoc_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  axi_ddr_mpsoc_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(axi_m_aresetn_0_1),
        .Op2(proc_sys_reset_0_peripheral_aresetn),
        .Res(util_vector_logic_0_Res));
  axi_ddr_mpsoc_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PL_DDR_v1_0_0_axi_m_ARADDR}),
        .saxigp2_arburst(PL_DDR_v1_0_0_axi_m_ARBURST),
        .saxigp2_arcache(PL_DDR_v1_0_0_axi_m_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,1'b0,PL_DDR_v1_0_0_axi_m_ARID}),
        .saxigp2_arlen(PL_DDR_v1_0_0_axi_m_ARLEN),
        .saxigp2_arlock(PL_DDR_v1_0_0_axi_m_ARLOCK),
        .saxigp2_arprot(PL_DDR_v1_0_0_axi_m_ARPROT),
        .saxigp2_arqos(PL_DDR_v1_0_0_axi_m_ARQOS),
        .saxigp2_arready(PL_DDR_v1_0_0_axi_m_ARREADY),
        .saxigp2_arsize(PL_DDR_v1_0_0_axi_m_ARSIZE),
        .saxigp2_aruser(PL_DDR_v1_0_0_axi_m_ARUSER),
        .saxigp2_arvalid(PL_DDR_v1_0_0_axi_m_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PL_DDR_v1_0_0_axi_m_AWADDR}),
        .saxigp2_awburst(PL_DDR_v1_0_0_axi_m_AWBURST),
        .saxigp2_awcache(PL_DDR_v1_0_0_axi_m_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,1'b0,PL_DDR_v1_0_0_axi_m_AWID}),
        .saxigp2_awlen(PL_DDR_v1_0_0_axi_m_AWLEN),
        .saxigp2_awlock(PL_DDR_v1_0_0_axi_m_AWLOCK),
        .saxigp2_awprot(PL_DDR_v1_0_0_axi_m_AWPROT),
        .saxigp2_awqos(PL_DDR_v1_0_0_axi_m_AWQOS),
        .saxigp2_awready(PL_DDR_v1_0_0_axi_m_AWREADY),
        .saxigp2_awsize(PL_DDR_v1_0_0_axi_m_AWSIZE),
        .saxigp2_awuser(PL_DDR_v1_0_0_axi_m_AWUSER),
        .saxigp2_awvalid(PL_DDR_v1_0_0_axi_m_AWVALID),
        .saxigp2_bid(PL_DDR_v1_0_0_axi_m_BID),
        .saxigp2_bready(PL_DDR_v1_0_0_axi_m_BREADY),
        .saxigp2_bresp(PL_DDR_v1_0_0_axi_m_BRESP),
        .saxigp2_bvalid(PL_DDR_v1_0_0_axi_m_BVALID),
        .saxigp2_rdata(PL_DDR_v1_0_0_axi_m_RDATA),
        .saxigp2_rid(PL_DDR_v1_0_0_axi_m_RID),
        .saxigp2_rlast(PL_DDR_v1_0_0_axi_m_RLAST),
        .saxigp2_rready(PL_DDR_v1_0_0_axi_m_RREADY),
        .saxigp2_rresp(PL_DDR_v1_0_0_axi_m_RRESP),
        .saxigp2_rvalid(PL_DDR_v1_0_0_axi_m_RVALID),
        .saxigp2_wdata(PL_DDR_v1_0_0_axi_m_WDATA),
        .saxigp2_wlast(PL_DDR_v1_0_0_axi_m_WLAST),
        .saxigp2_wready(PL_DDR_v1_0_0_axi_m_WREADY),
        .saxigp2_wstrb(PL_DDR_v1_0_0_axi_m_WSTRB),
        .saxigp2_wvalid(PL_DDR_v1_0_0_axi_m_WVALID),
        .saxihp0_fpd_aclk(axi_m_aclk_0_1));
endmodule
