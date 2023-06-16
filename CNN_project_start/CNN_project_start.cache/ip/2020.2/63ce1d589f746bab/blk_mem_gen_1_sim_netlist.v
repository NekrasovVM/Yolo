// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 20 12:28:12 2022
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
