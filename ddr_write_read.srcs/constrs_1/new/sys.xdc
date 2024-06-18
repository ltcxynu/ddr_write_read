

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list instance_name/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 14 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[0]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[1]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[2]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[3]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[4]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[5]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[6]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[7]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[8]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[9]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[10]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[11]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[12]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/write_burst_counter[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/mst_exec_state[0]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/mst_exec_state[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 14 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[0]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[1]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[2]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[3]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[4]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[5]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[6]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[7]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[8]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[9]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[10]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[11]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[12]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/read_burst_counter[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 20 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {counter_read_line[0]} {counter_read_line[1]} {counter_read_line[2]} {counter_read_line[3]} {counter_read_line[4]} {counter_read_line[5]} {counter_read_line[6]} {counter_read_line[7]} {counter_read_line[8]} {counter_read_line[9]} {counter_read_line[10]} {counter_read_line[11]} {counter_read_line[12]} {counter_read_line[13]} {counter_read_line[14]} {counter_read_line[15]} {counter_read_line[16]} {counter_read_line[17]} {counter_read_line[18]} {counter_read_line[19]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 20 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {counter_write_line[0]} {counter_write_line[1]} {counter_write_line[2]} {counter_write_line[3]} {counter_write_line[4]} {counter_write_line[5]} {counter_write_line[6]} {counter_write_line[7]} {counter_write_line[8]} {counter_write_line[9]} {counter_write_line[10]} {counter_write_line[11]} {counter_write_line[12]} {counter_write_line[13]} {counter_write_line[14]} {counter_write_line[15]} {counter_write_line[16]} {counter_write_line[17]} {counter_write_line[18]} {counter_write_line[19]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 64 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {data_trans2ddr[0]} {data_trans2ddr[1]} {data_trans2ddr[2]} {data_trans2ddr[3]} {data_trans2ddr[4]} {data_trans2ddr[5]} {data_trans2ddr[6]} {data_trans2ddr[7]} {data_trans2ddr[8]} {data_trans2ddr[9]} {data_trans2ddr[10]} {data_trans2ddr[11]} {data_trans2ddr[12]} {data_trans2ddr[13]} {data_trans2ddr[14]} {data_trans2ddr[15]} {data_trans2ddr[16]} {data_trans2ddr[17]} {data_trans2ddr[18]} {data_trans2ddr[19]} {data_trans2ddr[20]} {data_trans2ddr[21]} {data_trans2ddr[22]} {data_trans2ddr[23]} {data_trans2ddr[24]} {data_trans2ddr[25]} {data_trans2ddr[26]} {data_trans2ddr[27]} {data_trans2ddr[28]} {data_trans2ddr[29]} {data_trans2ddr[30]} {data_trans2ddr[31]} {data_trans2ddr[32]} {data_trans2ddr[33]} {data_trans2ddr[34]} {data_trans2ddr[35]} {data_trans2ddr[36]} {data_trans2ddr[37]} {data_trans2ddr[38]} {data_trans2ddr[39]} {data_trans2ddr[40]} {data_trans2ddr[41]} {data_trans2ddr[42]} {data_trans2ddr[43]} {data_trans2ddr[44]} {data_trans2ddr[45]} {data_trans2ddr[46]} {data_trans2ddr[47]} {data_trans2ddr[48]} {data_trans2ddr[49]} {data_trans2ddr[50]} {data_trans2ddr[51]} {data_trans2ddr[52]} {data_trans2ddr[53]} {data_trans2ddr[54]} {data_trans2ddr[55]} {data_trans2ddr[56]} {data_trans2ddr[57]} {data_trans2ddr[58]} {data_trans2ddr[59]} {data_trans2ddr[60]} {data_trans2ddr[61]} {data_trans2ddr[62]} {data_trans2ddr[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 4 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {STATE_W_R_IDLE[0]} {STATE_W_R_IDLE[1]} {STATE_W_R_IDLE[2]} {STATE_W_R_IDLE[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 5 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_RID[1]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_RID[2]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_RID[3]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_RID[4]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_RID[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 5 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_BID[1]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_BID[2]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_BID[3]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_BID[4]} {mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0_axi_m_BID[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/burst_read_active]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/burst_write_active]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list read_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/reads_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/start_single_burst_read]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/start_single_burst_write]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list Trans_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list write_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list mpsoc_wrapper/axi_ddr_mpsoc_i/PL_DDR_v1_0_0/inst/PL_DDR_v1_0_AXI_M_inst/writes_done]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_100M]