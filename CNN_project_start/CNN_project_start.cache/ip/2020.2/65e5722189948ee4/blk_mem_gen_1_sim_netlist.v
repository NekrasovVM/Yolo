// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 15 15:54:31 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.163063 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
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
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
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
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26064)
`pragma protect data_block
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
Lv3aH75E4KYYpOqEi8bT
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
