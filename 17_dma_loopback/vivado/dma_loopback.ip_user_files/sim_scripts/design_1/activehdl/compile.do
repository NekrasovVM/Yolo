vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_8
vlib activehdl/xil_defaultlib
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_24
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_23
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v2_0_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/axi_protocol_converter_v2_1_22
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/smartconnect_v1_0
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/gigantic_mux

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 activehdl/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_24 activehdl/axi_datamover_v5_1_24
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_23 activehdl/axi_dma_v7_1_23
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_4 activehdl/axis_data_fifo_v2_0_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 activehdl/axi_protocol_converter_v2_1_22
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap gigantic_mux activehdl/gigantic_mux

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

vlog -work xpm  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_23 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/89d8/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_4  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/abd4/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_1/sim/design_1_rst_ps8_0_99M_1.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_0/sim/bd_6f02_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/sim/bd_6f02_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_2/sim/bd_6f02_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_3/sim/bd_6f02_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_4/sim/bd_6f02_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/sim/bd_6f02_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/sim/bd_6f02_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/sim/bd_6f02_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/sim/bd_6f02_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/sim/bd_6f02_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/sim/bd_6f02_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/sim/bd_6f02_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_12/sim/bd_6f02_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_13/sim/bd_6f02_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_14/sim/bd_6f02_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_15/sim/bd_6f02_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_16/sim/bd_6f02_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_17/sim/bd_6f02_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_18/sim/bd_6f02_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_19/sim/bd_6f02_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_20/sim/bd_6f02_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_21/sim/bd_6f02_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_22/sim/bd_6f02_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_23/sim/bd_6f02_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_24/sim/bd_6f02_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_25/sim/bd_6f02_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_26/sim/bd_6f02_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1/bd_0/sim/bd_6f02.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1/sim/design_1_axi_smc_1.v" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/da1e/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../dma_loopback.gen/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_2/sim/bd_f60c_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_3/sim/bd_f60c_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_4/sim/bd_f60c_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_5/sim/bd_f60c_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_6/sim/bd_f60c_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

