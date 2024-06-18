//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Jun 18 15:43:53 2024
//Host        : MOOS running 64-bit major release  (build 9200)
//Command     : generate_target axi_ddr_mpsoc.bd
//Design      : axi_ddr_mpsoc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_ddr_mpsoc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_ddr_mpsoc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,da_zynq_ultra_ps_e_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_ddr_mpsoc.hwdef" *) 
module axi_ddr_mpsoc
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXI_M_ACLK_300M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXI_M_ACLK_300M, CLK_DOMAIN axi_ddr_mpsoc_axi_m_aclk_300M, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input axi_m_aclk_300M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXI_M_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXI_M_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axi_m_aresetn;
  input axi_m_init;
  output data_valid;
  output [1023:0]read_data;
  input read_data_valid;
  input [1023:0]write_data;
  input write_data_valid;
  output write_done_0;

  wire PL_DDR_v1_0_0_Trans_done;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]PL_DDR_v1_0_0_axi_m_ARADDR;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]PL_DDR_v1_0_0_axi_m_ARBURST;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]PL_DDR_v1_0_0_axi_m_ARCACHE;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]PL_DDR_v1_0_0_axi_m_ARID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]PL_DDR_v1_0_0_axi_m_ARLEN;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_ARLOCK;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]PL_DDR_v1_0_0_axi_m_ARPROT;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]PL_DDR_v1_0_0_axi_m_ARQOS;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_ARREADY;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]PL_DDR_v1_0_0_axi_m_ARSIZE;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]PL_DDR_v1_0_0_axi_m_ARUSER;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_ARVALID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]PL_DDR_v1_0_0_axi_m_AWADDR;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]PL_DDR_v1_0_0_axi_m_AWBURST;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]PL_DDR_v1_0_0_axi_m_AWCACHE;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]PL_DDR_v1_0_0_axi_m_AWID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]PL_DDR_v1_0_0_axi_m_AWLEN;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_AWLOCK;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]PL_DDR_v1_0_0_axi_m_AWPROT;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]PL_DDR_v1_0_0_axi_m_AWQOS;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_AWREADY;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]PL_DDR_v1_0_0_axi_m_AWSIZE;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]PL_DDR_v1_0_0_axi_m_AWUSER;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_AWVALID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 BID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]PL_DDR_v1_0_0_axi_m_BID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_BREADY;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]PL_DDR_v1_0_0_axi_m_BRESP;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_BVALID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]PL_DDR_v1_0_0_axi_m_RDATA;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 RID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [5:0]PL_DDR_v1_0_0_axi_m_RID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_RLAST;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_RREADY;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]PL_DDR_v1_0_0_axi_m_RRESP;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_RVALID;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]PL_DDR_v1_0_0_axi_m_WDATA;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_WLAST;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_WREADY;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]PL_DDR_v1_0_0_axi_m_WSTRB;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 WUSER" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]PL_DDR_v1_0_0_axi_m_WUSER;
  (* CONN_BUS_INFO = "PL_DDR_v1_0_0_axi_m xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_axi_m_WVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire PL_DDR_v1_0_0_data_valid;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1023:0]PL_DDR_v1_0_0_read_data;
  wire PL_DDR_v1_0_0_write_done;
  wire axi_m_aclk_0_1;
  wire axi_m_aresetn_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_m_init_axi_txn_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire read_data_valid_0_1;
  wire [0:0]rst_axi_m_aclk_300M_100M_peripheral_aresetn;
  wire [0:0]util_vector_logic_0_Res;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1023:0]write_data_0_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire write_data_valid_0_1;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign Trans_done_0 = PL_DDR_v1_0_0_Trans_done;
  assign axi_m_aclk_0_1 = axi_m_aclk_300M;
  assign axi_m_aresetn_0_1 = axi_m_aresetn;
  assign axi_m_init_axi_txn_0_1 = axi_m_init;
  assign data_valid = PL_DDR_v1_0_0_data_valid;
  assign read_data[1023:0] = PL_DDR_v1_0_0_read_data;
  assign read_data_valid_0_1 = read_data_valid;
  assign write_data_0_1 = write_data[1023:0];
  assign write_data_valid_0_1 = write_data_valid;
  assign write_done_0 = PL_DDR_v1_0_0_write_done;
  axi_ddr_mpsoc_PL_DDR_v1_0_0_0 PL_DDR_v1_0_0
       (.Trans_done(PL_DDR_v1_0_0_Trans_done),
        .axi_m_aclk(axi_m_aclk_0_1),
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
        .axi_m_wuser(PL_DDR_v1_0_0_axi_m_WUSER),
        .axi_m_wvalid(PL_DDR_v1_0_0_axi_m_WVALID),
        .data_valid(PL_DDR_v1_0_0_data_valid),
        .read_data(PL_DDR_v1_0_0_read_data),
        .read_data_valid(read_data_valid_0_1),
        .write_data(write_data_0_1),
        .write_data_valid(write_data_valid_0_1),
        .write_done(PL_DDR_v1_0_0_write_done));
  axi_ddr_mpsoc_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  axi_ddr_mpsoc_rst_axi_m_aclk_300M_100M_0 rst_axi_m_aclk_300M_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_axi_m_aclk_300M_100M_peripheral_aresetn),
        .slowest_sync_clk(axi_m_aclk_0_1));
  axi_ddr_mpsoc_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(PL_DDR_v1_0_0_axi_m_ARADDR),
        .SLOT_0_AXI_arburst(PL_DDR_v1_0_0_axi_m_ARBURST),
        .SLOT_0_AXI_arcache(PL_DDR_v1_0_0_axi_m_ARCACHE),
        .SLOT_0_AXI_arid(PL_DDR_v1_0_0_axi_m_ARID),
        .SLOT_0_AXI_arlen(PL_DDR_v1_0_0_axi_m_ARLEN),
        .SLOT_0_AXI_arlock(PL_DDR_v1_0_0_axi_m_ARLOCK),
        .SLOT_0_AXI_arprot(PL_DDR_v1_0_0_axi_m_ARPROT),
        .SLOT_0_AXI_arqos(PL_DDR_v1_0_0_axi_m_ARQOS),
        .SLOT_0_AXI_arready(PL_DDR_v1_0_0_axi_m_ARREADY),
        .SLOT_0_AXI_arsize(PL_DDR_v1_0_0_axi_m_ARSIZE),
        .SLOT_0_AXI_aruser(PL_DDR_v1_0_0_axi_m_ARUSER),
        .SLOT_0_AXI_arvalid(PL_DDR_v1_0_0_axi_m_ARVALID),
        .SLOT_0_AXI_awaddr(PL_DDR_v1_0_0_axi_m_AWADDR),
        .SLOT_0_AXI_awburst(PL_DDR_v1_0_0_axi_m_AWBURST),
        .SLOT_0_AXI_awcache(PL_DDR_v1_0_0_axi_m_AWCACHE),
        .SLOT_0_AXI_awid(PL_DDR_v1_0_0_axi_m_AWID),
        .SLOT_0_AXI_awlen(PL_DDR_v1_0_0_axi_m_AWLEN),
        .SLOT_0_AXI_awlock(PL_DDR_v1_0_0_axi_m_AWLOCK),
        .SLOT_0_AXI_awprot(PL_DDR_v1_0_0_axi_m_AWPROT),
        .SLOT_0_AXI_awqos(PL_DDR_v1_0_0_axi_m_AWQOS),
        .SLOT_0_AXI_awready(PL_DDR_v1_0_0_axi_m_AWREADY),
        .SLOT_0_AXI_awsize(PL_DDR_v1_0_0_axi_m_AWSIZE),
        .SLOT_0_AXI_awuser(PL_DDR_v1_0_0_axi_m_AWUSER),
        .SLOT_0_AXI_awvalid(PL_DDR_v1_0_0_axi_m_AWVALID),
        .SLOT_0_AXI_bid(PL_DDR_v1_0_0_axi_m_BID[0]),
        .SLOT_0_AXI_bready(PL_DDR_v1_0_0_axi_m_BREADY),
        .SLOT_0_AXI_bresp(PL_DDR_v1_0_0_axi_m_BRESP),
        .SLOT_0_AXI_buser(1'b0),
        .SLOT_0_AXI_bvalid(PL_DDR_v1_0_0_axi_m_BVALID),
        .SLOT_0_AXI_rdata(PL_DDR_v1_0_0_axi_m_RDATA),
        .SLOT_0_AXI_rid(PL_DDR_v1_0_0_axi_m_RID[0]),
        .SLOT_0_AXI_rlast(PL_DDR_v1_0_0_axi_m_RLAST),
        .SLOT_0_AXI_rready(PL_DDR_v1_0_0_axi_m_RREADY),
        .SLOT_0_AXI_rresp(PL_DDR_v1_0_0_axi_m_RRESP),
        .SLOT_0_AXI_ruser(1'b0),
        .SLOT_0_AXI_rvalid(PL_DDR_v1_0_0_axi_m_RVALID),
        .SLOT_0_AXI_wdata(PL_DDR_v1_0_0_axi_m_WDATA),
        .SLOT_0_AXI_wlast(PL_DDR_v1_0_0_axi_m_WLAST),
        .SLOT_0_AXI_wready(PL_DDR_v1_0_0_axi_m_WREADY),
        .SLOT_0_AXI_wstrb(PL_DDR_v1_0_0_axi_m_WSTRB),
        .SLOT_0_AXI_wuser(PL_DDR_v1_0_0_axi_m_WUSER),
        .SLOT_0_AXI_wvalid(PL_DDR_v1_0_0_axi_m_WVALID),
        .clk(axi_m_aclk_0_1),
        .probe0(axi_m_init_axi_txn_0_1),
        .probe1(PL_DDR_v1_0_0_data_valid),
        .probe2(PL_DDR_v1_0_0_read_data),
        .probe3(read_data_valid_0_1),
        .probe4(write_data_0_1),
        .probe5(write_data_valid_0_1),
        .resetn(rst_axi_m_aclk_300M_100M_peripheral_aresetn));
  axi_ddr_mpsoc_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(axi_m_aresetn_0_1),
        .Op2(proc_sys_reset_0_peripheral_aresetn),
        .Res(util_vector_logic_0_Res));
  axi_ddr_mpsoc_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
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
