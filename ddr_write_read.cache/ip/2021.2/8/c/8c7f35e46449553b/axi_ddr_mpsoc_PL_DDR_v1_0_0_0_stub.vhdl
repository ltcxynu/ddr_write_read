-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Jun 18 15:45:56 2024
-- Host        : MOOS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_ddr_mpsoc_PL_DDR_v1_0_0_0_stub.vhdl
-- Design      : axi_ddr_mpsoc_PL_DDR_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    axi_m_init_axi_txn : in STD_LOGIC;
    axi_m_txn_done : out STD_LOGIC;
    axi_m_error : out STD_LOGIC;
    axi_m_aclk : in STD_LOGIC;
    axi_m_aresetn : in STD_LOGIC;
    axi_m_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_m_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_m_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_m_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_m_awlock : out STD_LOGIC;
    axi_m_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_m_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_m_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_m_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_awvalid : out STD_LOGIC;
    axi_m_awready : in STD_LOGIC;
    axi_m_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_m_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_m_wlast : out STD_LOGIC;
    axi_m_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_wvalid : out STD_LOGIC;
    axi_m_wready : in STD_LOGIC;
    axi_m_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_m_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_bvalid : in STD_LOGIC;
    axi_m_bready : out STD_LOGIC;
    axi_m_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_m_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_m_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_m_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_m_arlock : out STD_LOGIC;
    axi_m_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_m_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_m_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_m_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_arvalid : out STD_LOGIC;
    axi_m_arready : in STD_LOGIC;
    axi_m_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_m_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_m_rlast : in STD_LOGIC;
    axi_m_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_m_rvalid : in STD_LOGIC;
    axi_m_rready : out STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    write_data_valid : in STD_LOGIC;
    read_data : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    read_data_valid : in STD_LOGIC;
    data_valid : out STD_LOGIC;
    Trans_done : out STD_LOGIC;
    write_done : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axi_m_init_axi_txn,axi_m_txn_done,axi_m_error,axi_m_aclk,axi_m_aresetn,axi_m_awid[0:0],axi_m_awaddr[31:0],axi_m_awlen[7:0],axi_m_awsize[2:0],axi_m_awburst[1:0],axi_m_awlock,axi_m_awcache[3:0],axi_m_awprot[2:0],axi_m_awqos[3:0],axi_m_awuser[0:0],axi_m_awvalid,axi_m_awready,axi_m_wdata[127:0],axi_m_wstrb[15:0],axi_m_wlast,axi_m_wuser[0:0],axi_m_wvalid,axi_m_wready,axi_m_bid[0:0],axi_m_bresp[1:0],axi_m_buser[0:0],axi_m_bvalid,axi_m_bready,axi_m_arid[0:0],axi_m_araddr[31:0],axi_m_arlen[7:0],axi_m_arsize[2:0],axi_m_arburst[1:0],axi_m_arlock,axi_m_arcache[3:0],axi_m_arprot[2:0],axi_m_arqos[3:0],axi_m_aruser[0:0],axi_m_arvalid,axi_m_arready,axi_m_rid[0:0],axi_m_rdata[127:0],axi_m_rresp[1:0],axi_m_rlast,axi_m_ruser[0:0],axi_m_rvalid,axi_m_rready,write_data[1023:0],write_data_valid,read_data[1023:0],read_data_valid,data_valid,Trans_done,write_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PL_DDR_v1_0,Vivado 2021.2";
begin
end;
