vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L zynq_ultra_ps_e_vip_v1_0_11 -L xilinx_vip "+incdir+D:/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L zynq_ultra_ps_e_vip_v1_0_11 -L xilinx_vip "+incdir+D:/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+D:/xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/verify_write_read/ip/verify_write_read_SIM_PS_AXI_S_v1_0_0_0/sim/verify_write_read_SIM_PS_AXI_S_v1_0_0_0.v" \
"../../../bd/verify_write_read/ip/verify_write_read_PL_DDR_v1_0_0_0/sim/verify_write_read_PL_DDR_v1_0_0_0.v" \
"../../../bd/verify_write_read/sim/verify_write_read.v" \

vlog -work xil_defaultlib \
"glbl.v"

