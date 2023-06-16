##################Compress Bitstream############################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property IOSTANDARD LVCMOS33 [get_ports {key_rezerv[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key_rezerv[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN AB13 [get_ports {led[3]}]
set_property PACKAGE_PIN AA12 [get_ports {led[2]}]
set_property PACKAGE_PIN Y12 [get_ports {led[1]}]
set_property PACKAGE_PIN W13 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports key_reset]
set_property IOSTANDARD LVCMOS33 [get_ports key_start]

set_property PACKAGE_PIN AA13 [get_ports key_start]
set_property PACKAGE_PIN AG14 [get_ports key_reset]
set_property PACKAGE_PIN AE14 [get_ports {key_rezerv[0]}]
set_property PACKAGE_PIN AE15 [get_ports {key_rezerv[1]}]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {wr_burst_data[0]} {wr_burst_data[1]} {wr_burst_data[2]} {wr_burst_data[3]} {wr_burst_data[4]} {wr_burst_data[5]} {wr_burst_data[6]} {wr_burst_data[7]} {wr_burst_data[8]} {wr_burst_data[9]} {wr_burst_data[10]} {wr_burst_data[11]} {wr_burst_data[12]} {wr_burst_data[13]} {wr_burst_data[14]} {wr_burst_data[15]} {wr_burst_data[16]} {wr_burst_data[17]} {wr_burst_data[18]} {wr_burst_data[19]} {wr_burst_data[20]} {wr_burst_data[21]} {wr_burst_data[22]} {wr_burst_data[23]} {wr_burst_data[24]} {wr_burst_data[25]} {wr_burst_data[26]} {wr_burst_data[27]} {wr_burst_data[28]} {wr_burst_data[29]} {wr_burst_data[30]} {wr_burst_data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {rd_burst_addr[0]} {rd_burst_addr[1]} {rd_burst_addr[2]} {rd_burst_addr[3]} {rd_burst_addr[4]} {rd_burst_addr[5]} {rd_burst_addr[6]} {rd_burst_addr[7]} {rd_burst_addr[8]} {rd_burst_addr[9]} {rd_burst_addr[10]} {rd_burst_addr[11]} {rd_burst_addr[12]} {rd_burst_addr[13]} {rd_burst_addr[14]} {rd_burst_addr[15]} {rd_burst_addr[16]} {rd_burst_addr[17]} {rd_burst_addr[18]} {rd_burst_addr[19]} {rd_burst_addr[20]} {rd_burst_addr[21]} {rd_burst_addr[22]} {rd_burst_addr[23]} {rd_burst_addr[24]} {rd_burst_addr[25]} {rd_burst_addr[26]} {rd_burst_addr[27]} {rd_burst_addr[28]} {rd_burst_addr[29]} {rd_burst_addr[30]} {rd_burst_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {rd_burst_data[0]} {rd_burst_data[1]} {rd_burst_data[2]} {rd_burst_data[3]} {rd_burst_data[4]} {rd_burst_data[5]} {rd_burst_data[6]} {rd_burst_data[7]} {rd_burst_data[8]} {rd_burst_data[9]} {rd_burst_data[10]} {rd_burst_data[11]} {rd_burst_data[12]} {rd_burst_data[13]} {rd_burst_data[14]} {rd_burst_data[15]} {rd_burst_data[16]} {rd_burst_data[17]} {rd_burst_data[18]} {rd_burst_data[19]} {rd_burst_data[20]} {rd_burst_data[21]} {rd_burst_data[22]} {rd_burst_data[23]} {rd_burst_data[24]} {rd_burst_data[25]} {rd_burst_data[26]} {rd_burst_data[27]} {rd_burst_data[28]} {rd_burst_data[29]} {rd_burst_data[30]} {rd_burst_data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {rd_wr_burst_len[0]} {rd_wr_burst_len[1]} {rd_wr_burst_len[2]} {rd_wr_burst_len[3]} {rd_wr_burst_len[4]} {rd_wr_burst_len[5]} {rd_wr_burst_len[6]} {rd_wr_burst_len[7]} {rd_wr_burst_len[8]} {rd_wr_burst_len[9]} {rd_wr_burst_len[10]} {rd_wr_burst_len[11]} {rd_wr_burst_len[12]} {rd_wr_burst_len[13]} {rd_wr_burst_len[14]} {rd_wr_burst_len[15]} {rd_wr_burst_len[16]} {rd_wr_burst_len[17]} {rd_wr_burst_len[18]} {rd_wr_burst_len[19]} {rd_wr_burst_len[20]} {rd_wr_burst_len[21]} {rd_wr_burst_len[22]} {rd_wr_burst_len[23]} {rd_wr_burst_len[24]} {rd_wr_burst_len[25]} {rd_wr_burst_len[26]} {rd_wr_burst_len[27]} {rd_wr_burst_len[28]} {rd_wr_burst_len[29]} {rd_wr_burst_len[30]} {rd_wr_burst_len[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 3 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {state[0]} {state[1]} {state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {wr_burst_addr[0]} {wr_burst_addr[1]} {wr_burst_addr[2]} {wr_burst_addr[3]} {wr_burst_addr[4]} {wr_burst_addr[5]} {wr_burst_addr[6]} {wr_burst_addr[7]} {wr_burst_addr[8]} {wr_burst_addr[9]} {wr_burst_addr[10]} {wr_burst_addr[11]} {wr_burst_addr[12]} {wr_burst_addr[13]} {wr_burst_addr[14]} {wr_burst_addr[15]} {wr_burst_addr[16]} {wr_burst_addr[17]} {wr_burst_addr[18]} {wr_burst_addr[19]} {wr_burst_addr[20]} {wr_burst_addr[21]} {wr_burst_addr[22]} {wr_burst_addr[23]} {wr_burst_addr[24]} {wr_burst_addr[25]} {wr_burst_addr[26]} {wr_burst_addr[27]} {wr_burst_addr[28]} {wr_burst_addr[29]} {wr_burst_addr[30]} {wr_burst_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list key_start_rg]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list rd_burst_data_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list rd_burst_finish]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list rd_burst_req]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list wr_burst_data_req]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list wr_burst_finish]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list wr_burst_req]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
