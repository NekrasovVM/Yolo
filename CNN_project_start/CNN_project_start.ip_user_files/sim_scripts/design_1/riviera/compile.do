vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/zynq_ultra_ps_e_vip_v1_0_8
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 riviera/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim/design_1_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0_2/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../CNN_project_start.srcs/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

