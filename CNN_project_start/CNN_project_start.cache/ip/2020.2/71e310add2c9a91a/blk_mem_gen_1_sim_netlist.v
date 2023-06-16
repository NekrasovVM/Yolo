// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan 24 15:31:07 2023
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [23:0]douta;
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
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.62537 mW" *) 
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
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
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
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20576)
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
