// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb 10 12:45:26 2023
// Host        : 007-03 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Nekrasov
//               Vladiimir/CNN_project_start/CNN_project_start.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v}
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.087676 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20896)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
