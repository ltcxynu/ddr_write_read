
`timescale 1 ns / 1 ps

	module PL_DDR_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface AXI_M
		parameter  C_AXI_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_AXI_M_BURST_LEN	= 16,
		parameter integer C_AXI_M_ID_WIDTH	= 1,
		parameter integer C_AXI_M_ADDR_WIDTH	= 32,
		parameter integer C_AXI_M_DATA_WIDTH	= 64,
		parameter integer C_AXI_M_AWUSER_WIDTH	= 0,
		parameter integer C_AXI_M_ARUSER_WIDTH	= 0,
		parameter integer C_AXI_M_WUSER_WIDTH	= 0,
		parameter integer C_AXI_M_RUSER_WIDTH	= 0,
		parameter integer C_AXI_M_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface AXI_M
		input wire  axi_m_init_axi_txn,
		output wire  axi_m_txn_done,
		output wire  axi_m_error,
		input wire  axi_m_aclk,
		input wire  axi_m_aresetn,
		output wire [C_AXI_M_ID_WIDTH-1 : 0] axi_m_awid,
		output wire [C_AXI_M_ADDR_WIDTH-1 : 0] axi_m_awaddr,
		output wire [7 : 0] axi_m_awlen,
		output wire [2 : 0] axi_m_awsize,
		output wire [1 : 0] axi_m_awburst,
		output wire  axi_m_awlock,
		output wire [3 : 0] axi_m_awcache,
		output wire [2 : 0] axi_m_awprot,
		output wire [3 : 0] axi_m_awqos,
		output wire [C_AXI_M_AWUSER_WIDTH-1 : 0] axi_m_awuser,
		output wire  axi_m_awvalid,
		input wire  axi_m_awready,
		output wire [C_AXI_M_DATA_WIDTH-1 : 0] axi_m_wdata,
		output wire [C_AXI_M_DATA_WIDTH/8-1 : 0] axi_m_wstrb,
		output wire  axi_m_wlast,
		output wire [C_AXI_M_WUSER_WIDTH-1 : 0] axi_m_wuser,
		output wire  axi_m_wvalid,
		input wire  axi_m_wready,
		input wire [C_AXI_M_ID_WIDTH-1 : 0] axi_m_bid,
		input wire [1 : 0] axi_m_bresp,
		input wire [C_AXI_M_BUSER_WIDTH-1 : 0] axi_m_buser,
		input wire  axi_m_bvalid,
		output wire  axi_m_bready,
		output wire [C_AXI_M_ID_WIDTH-1 : 0] axi_m_arid,
		output wire [C_AXI_M_ADDR_WIDTH-1 : 0] axi_m_araddr,
		output wire [7 : 0] axi_m_arlen,
		output wire [2 : 0] axi_m_arsize,
		output wire [1 : 0] axi_m_arburst,
		output wire  axi_m_arlock,
		output wire [3 : 0] axi_m_arcache,
		output wire [2 : 0] axi_m_arprot,
		output wire [3 : 0] axi_m_arqos,
		output wire [C_AXI_M_ARUSER_WIDTH-1 : 0] axi_m_aruser,
		output wire  axi_m_arvalid,
		input wire  axi_m_arready,
		input wire [C_AXI_M_ID_WIDTH-1 : 0] axi_m_rid,
		input wire [C_AXI_M_DATA_WIDTH-1 : 0] axi_m_rdata,
		input wire [1 : 0] axi_m_rresp,
		input wire  axi_m_rlast,
		input wire [C_AXI_M_RUSER_WIDTH-1 : 0] axi_m_ruser,
		input wire  axi_m_rvalid,
		output wire  axi_m_rready,
		//user port
		input wire [C_AXI_M_DATA_WIDTH*C_AXI_M_BURST_LEN-1:0] write_data,
		input wire write_data_valid,
		output wire [C_AXI_M_DATA_WIDTH*C_AXI_M_BURST_LEN-1:0] read_data,
		input wire read_data_valid,
		output wire data_valid,
		output wire Trans_done,
		output wire write_done
		
	);
// Instantiation of Axi Bus Interface AXI_M
	PL_DDR_v1_0_AXI_M # ( 
		.C_M_TARGET_SLAVE_BASE_ADDR(C_AXI_M_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_BURST_LEN(C_AXI_M_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_AXI_M_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_AXI_M_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_AXI_M_DATA_WIDTH),
		.C_M_AXI_AWUSER_WIDTH(C_AXI_M_AWUSER_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_AXI_M_ARUSER_WIDTH),
		.C_M_AXI_WUSER_WIDTH(C_AXI_M_WUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_AXI_M_RUSER_WIDTH),
		.C_M_AXI_BUSER_WIDTH(C_AXI_M_BUSER_WIDTH)
	) PL_DDR_v1_0_AXI_M_inst (
		.INIT_AXI_TXN(axi_m_init_axi_txn),
		.TXN_DONE(axi_m_txn_done),
		.ERROR(axi_m_error),
		.M_AXI_ACLK(axi_m_aclk),
		.M_AXI_ARESETN(axi_m_aresetn),
		.M_AXI_AWID(axi_m_awid),
		.M_AXI_AWADDR(axi_m_awaddr),
		.M_AXI_AWLEN(axi_m_awlen),
		.M_AXI_AWSIZE(axi_m_awsize),
		.M_AXI_AWBURST(axi_m_awburst),
		.M_AXI_AWLOCK(axi_m_awlock),
		.M_AXI_AWCACHE(axi_m_awcache),
		.M_AXI_AWPROT(axi_m_awprot),
		.M_AXI_AWQOS(axi_m_awqos),
		.M_AXI_AWUSER(axi_m_awuser),
		.M_AXI_AWVALID(axi_m_awvalid),
		.M_AXI_AWREADY(axi_m_awready),
		.M_AXI_WDATA(axi_m_wdata),
		.M_AXI_WSTRB(axi_m_wstrb),
		.M_AXI_WLAST(axi_m_wlast),
		.M_AXI_WUSER(axi_m_wuser),
		.M_AXI_WVALID(axi_m_wvalid),
		.M_AXI_WREADY(axi_m_wready),
		.M_AXI_BID(axi_m_bid),
		.M_AXI_BRESP(axi_m_bresp),
		.M_AXI_BUSER(axi_m_buser),
		.M_AXI_BVALID(axi_m_bvalid),
		.M_AXI_BREADY(axi_m_bready),
		.M_AXI_ARID(axi_m_arid),
		.M_AXI_ARADDR(axi_m_araddr),
		.M_AXI_ARLEN(axi_m_arlen),
		.M_AXI_ARSIZE(axi_m_arsize),
		.M_AXI_ARBURST(axi_m_arburst),
		.M_AXI_ARLOCK(axi_m_arlock),
		.M_AXI_ARCACHE(axi_m_arcache),
		.M_AXI_ARPROT(axi_m_arprot),
		.M_AXI_ARQOS(axi_m_arqos),
		.M_AXI_ARUSER(axi_m_aruser),
		.M_AXI_ARVALID(axi_m_arvalid),
		.M_AXI_ARREADY(axi_m_arready),
		.M_AXI_RID(axi_m_rid),
		.M_AXI_RDATA(axi_m_rdata),
		.M_AXI_RRESP(axi_m_rresp),
		.M_AXI_RLAST(axi_m_rlast),
		.M_AXI_RUSER(axi_m_ruser),
		.M_AXI_RVALID(axi_m_rvalid),
		.M_AXI_RREADY(axi_m_rready),
	// user logic port
		.write_data(write_data),
		.write_data_valid(write_data_valid),
		.read_data(read_data),
		.read_data_valid(read_data_valid),
		.data_valid(data_valid),
		.Trans_done(Trans_done),
		.write_done(write_done)
	);

	// Add user logic here

	// User logic ends

	endmodule
