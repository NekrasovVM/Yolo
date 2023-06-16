// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 20 12:24:14 2022
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
