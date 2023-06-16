// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Feb 10 12:45:25 2023
// Host        : 007-03 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20912)
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
