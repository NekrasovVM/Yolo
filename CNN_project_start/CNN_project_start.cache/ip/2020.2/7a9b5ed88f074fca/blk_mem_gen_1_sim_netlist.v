// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 15 16:08:52 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20208)
`pragma protect data_block
wePMkG8wA08fYzIqfUPqss5PzPdfK4us89sd2/ijV2RjeJ9YbaHRCGzyn5KisRh2U08+qCCuwihs
JIKtcCU9oHcZpRCH4DI9lb33POk/GpKi0J6bCYjqxP7LZBcf5Nqsl+JVxZkWPHOH81r6iugwLCsL
PjAxzdu0aORrL8qCxgyakvS13qVRu3eYKHwowzxlVJMfslTkLK5ea0C5t+9tC50+w8+VgzIqAaKC
6bek/8Z0IyrK5UUNGrNo4FqH6pcB2VnRyoJv5AluxFLlpu5Trc1LPL7fhxsGgjSByVZaoPmwJF89
ojseo/aa+YVN4WRn2yEC4YFYfYPM6a6PqueAQFRqs9g4zTLXv785MOBaSZSXUGVu6haa32NUwDIM
61fClxYT5BrRK3RSZN0TkkHZfgfmhhCzcKmqIjZb5blIFiSs3/s4A60nUXRIQLibV/PXU5mw/WAB
dUnhSk8up6k9ttFCEulrlGxqDWey962HwtAmyRxypbMCiyDbJ7Ke6iwTHIPcUPUw9spvy84RhJgw
Cl6aWcHSh4UwqPgMzTIeXWVb7TxYXcIyTxAuPIhTTENvjDyaadnmlGspd8ieIxxQ2TLhnMjQWvj7
dBTWXUUdTlTKfX+aoZJGIdHlfWRBUf6HB47eAHuhn0OA/s6WDiPfp0wzHSAIbHLMetCsCPS522Dl
tu+sYDXbodX+kvbpoCDUvF6sL1SjR42EnN4zc+nKeSCGE2pt5qzQ1U6WiYAvWXQzmJq+HcZas+F3
Qqp/yp3gDCO8GFALOWLRS+fhxyx0n3Jd1HqhCgGuxHo14nQHgxTNwX+ZoZLd/LWpveluniIu2c2m
LNS5wOxPa3Yr36iEkDg/aIw38NnBa01EXX9X6Ja9PfNrjAhoaxU+zHuUW0fLbbpumfq3bxuMAzCM
9IE252sPVVIQycs2u2N/vVgNv58V7U/w3AAuR84CT5BXZTiReVKdXlO1HcHDQSIVIM5B1Tt7jvkB
h/7QzaoKZ4UIxSEac9V4YDcOZuq1PtWjhC4JdjInNJM/VmJIMcyL/ySq2rhmkN2eJGN7Qnpoe+dr
tPic2gI8Bh9yyfEFSjpO+QZ2/JIy7NRAJIDttKjfxhnFliRoAc5R7Dgxb+mFqP2+bP/u2mcD1v4z
iIbHARo/M/237zuqVYdWkRzF2ZBpBfJnqFPlUGww5p5gEV+uYwQf55wIBuiIEYL2075uNWYgKbA8
KJ4Q996mccqcempoWjQC7/FYSzoxGAPsnJK/Dz/ZPpnIxIKVPhWSMvB8nNwe1bRog//t7pvkQkMP
emeSSVBxdvCtBv6VRPV+xgiNANWvLszHlIoya72s9XdzH7+184NeY/Y7r1Z+sG7D0rRJpabJaxIL
2tS2LL54AIrnXPL91kjkXb6d7xvSuFshFOGD3oAGj2KXKBSIpIjRAwSqrMsgXu02XW+lGmtqOTg/
O+qSd2WlS88UCWnQIu0+MVXfAeytJG62bzBtPUEFWJdy2cYiY2k0BrOGsbnqO4CIeOgXo4dXOUY9
l2u3LlXv9CjGOpO9x1HWTFZUFzJDhyfZ1uScT+OqAYBz0EX0MRRcrtQlgM4DfgczCRAJ4genojeV
KPS/xiFH/RA4Dj535NEOJFnqQqVPzHmPJ8jlUWjma2BnPkfBwU5gH0fCa3mRKNLT92pqMWjD3wrg
jE6diYDKMPzDwJT5DkwYtauE2usgIv12+WU4Z1Klq3DeJ3vzTgQXmlAb3LmK7yZoC60zm5mT7XDA
/IyrZqQbrYvGNacAaZRdn2xJ5VkiZ/DQCME4av5/dvNMeMb9jRVPmXK2LBBEmzwpFnDpznawmo8q
nNo0U6LE/iiT7D6XuzBzkt6iTx4mfj0ivMzBRn2nTol51FMpPSz7Q2tsU6DyZ+a6A2ISpUlpe6Dg
G5jZzb1TyuZLtCCpJHzP2+DDnWaW6G5Pk7pL/VFqLJaYnujoNqii+1ic/NXG+PwT/MI0uUf/wScT
uUh0P5HlfxByxkvWgKSTwlNEvCOp3rixAMCXMsXs+47zJddqGX/Jcn8n4RSSdOlfVXYK9oosknhz
oicE7TfydezY3CT6MfcR3O6hEcpDSTUEzeNxde6tTwG9LqBER2ac9MXleGexEabHVkQ07LyddnmE
OfE51YCQShjEqwR0WhnLJv/ad3HBfe2E4HTL8pfr5qR5Cs1GFyxx1Z4xfiOL8IA00AIqTrP/6aZf
CABfQFBZAHm/GUsPBV+DLORmn+0qbehYt3Fu3EGGEHB69BBZyU3Ig6yeNjeIps1oo/Tw6zTqotui
ypIRBjcYw2PONeGvId3yuM3sfrGx9X8o97PBx1762URPUgMHDVyAXLm9rwHAnJKhtscRA1evc74G
aefsICko2g8OmjNReVsK2sVzr4UeZxrBrbBuzUohPgOmZzLIaLja17O9YKuxYzg7mf49Q+udzqoY
tuTxST0EU7RBVgRwdONyn1dmCbzb6A//RYLOvO3fdqbIhDtwg1+EkzTIgwlqdFK3371Mf2Wp/7NB
r+b4tQunypHbrtywzguW5dnffu2FnDPk8xPzVrAhLlUILzThchKmIgjoWvn7/LdFstZLkjCcCvff
ifbi91grxurIUa9tqzO/GyZXBxnL+qRWH/M0JHXkjaHvrDkoOEo4WIzRoNJ99CXherskB6SMI/59
XdxYhfM2qf2LiH/UXrNCU5KJ6xIW17USjjhxtFgaPkUPyfJuzHJr2wqNk3KV6iyDJXY2v6E2i/Lk
TSkGGmFIgHTtCKmtgXrjFOagy6rCv+C7gH5ja5SOqppC9reROo/FEMxGs7nxnD6j1/9NIO6pT/SN
Zr/3/6ul1ViM3BKM68WMc8BqJUvfMB5dyE0Lo5Xl4T8dMKaaPrClCvvH0MLQi8sSQqsxzUr5xIiW
kmu3mamoLTW59CBsWDJloPJVnD9315S2JlyxWb4NktaOLwVBkAVLNLohkxPY4pLhoVIbw7aLjALo
eCgZ0ZW3ypQkdpUPTOOF9GUwK0eZwQhyoKmpqhQdTMWKIsGV3Q5zuhULXVoZn2sMByfiKkgI9ifK
+pUGfGfb42pWotZ2sVxGYiIgMxob3meqpaLbc2eIK4hqo7rEnPJGJtv/qNLYSM87UwX3LjTJRVLH
vWyrTZxIG2S/lfocvEHKFsbXv027aD54kvxNHOOoVehwuSxLOXfbm+1x2TGX1peVZf9ZG6D9o4Om
AWNWzsDiEAMb39YXrFUvogBFvu3VU0e6qQz7xqgpP+mamia3fcn8a6A1g6TMkzYFSnuy/9Jw4kU7
pkj8sIScLOLbDloalJpzm1rQT2I8j5u6zHfm7PGddQVzB9719btnBFqevWNhTebXmmmmvridl/js
smtasFq2L5HG3wNO5jq/qzAhIyhIqRXy0GfgZqjvcrIT5suF21FYJx168QALEVcdIiZjtrJiM+3+
NWnliOkiV//NnwD89+S9ta3M5zGUoB8y0CxNL8CIS4DmkTZx+tuuIbf5ycxvzyvR3dSZRjhUA9CB
NgkBBEUg3OYOdUfTDgH0OEPbh0t6eSjvYiuvy0GRwcqjNNa4v8eKNZNlqv5vPv64250tEsJr6WPe
KBEK++jkHOzbgVpZWY4ZWJ5Vk7tG16QrT/zZoMP4yE5fTdm2vT9Eetmun+DprM/yDedjkFbQdmbX
tzcjN77NK9EaF+l4H6Y3WyvNELvgbmpt9Xi7kuL140AeHa34kP5Eqp5UTjIWkTuk/DopmyX+ZLcq
WT3thOqhE6VSOGD5AXm8D0T0gh5JKF0G8bsNifcySt18usVaMe17qTvmqQI9tWkA0nEvZOoyVt0t
juHulEycUhFGU8QBhT/1cFLa+6qJNBXvdRdp494OcIAvsU/o3sBbVrMkDmRaetG3e6+v08fJm0e3
jDuEd6QYth0ytY8Llrn5hrtaD6VuAd0e5jA1vC0kKUQJZFKZcL37jV3K176yl5fYV5jJRElXj5gA
ru6RpYTEPgcwVepx/A3yYaxo+02iSiK3dBQdWbR77WWVOQgaLBJmvDQLeTADhIo20Sl8s0Q3rnGI
/POnE+XEuYW8k62q4tahGNm72KibvX53Cw7r3qclu8+/TX7+dR1A4neu+1AnBVY4KTA+Qigc6TJc
knL3oYb+8b8yk59Sal2wQWgRBSRUfR5qT0lLUCaoa6Ez3lJWdeOo0q1J/e1pjMBPhka36E3qIGId
zvn54QncECGIrXI9e9hptYfPz9ndQRYLCVtMU0s5n9pFKHQ6v3CR5YRljgNWd/5npFifuGc/HUe7
JW2jvdp17Jq+azf0Vzqtqt85NckWkIDRQ09kfnM3ncXQqQ9rUC2LKzKosmN61P8MjMunHqP2XMyD
8ZzLxZ/dCE6RC3cjvfjw3duXfC+iHe/4l5mdX2sQIg3WgE7UeyTLosCRuo/rwQ4OOKFMlRQ2LJzN
M93V5YA05zZM5uErVq6HYey+yA9iNef75cwbnSulzwLE2NlDTN+1UVgI1r0cdxhQ8cmVI6u1H1wt
EJiCz0IKo7WGHCcGnksufgvGMeDFMduAWZJVkJlmh00XJ+B0W+H2jQdANdQmzBs0EzE4GiWggRmE
nSeGnU4oWg1Z27T6vXrIWz/1tUtcLBvR7pCsWAJsOx5ciCEGyRIcOSn19W0FHwW/SSyIvyH5hJNQ
YMbl5e4Rhnq+/2bm6RNABABDORPAfOwinkwGAfaT6QtP+IwXmhbYMH91FlQN8w7SlhITeZJdtaH/
4tpV5fPaXZ+byQOrkePfMTjtcMWusMtY12LKJ1qIgGR8JdGG9lUzWuen0I3GDbRFNTHcjZn5+tYA
EiUfPmxLka0OGM+zaIUCMOyBMps+5Tv+JHkErJxU6d0OG7k1AvEqOhYiJdeuI5VszbABeJijAFFF
zBi1OnmtlfiiEvaOBbPWSS6Dcny/LcAaKAN2Dh2tq6sWnb6+c1juq17Hf60G83tgAARSPnKnmZOq
k1aWxXJ68d/9ceRMiJi5m8vC3nMy6YgxkPb2orik3wNpsrA/7e5LzIW4N64Tg0E3p8h9DHE/rDSY
Y+444SayyqDJG23IA6mDttbU8QvQI6a1YPt8lVGzeOIvi/N/6AG7+x1olQEMwbjDWy+yDJAdl3gf
7fC2JBM7VEfigC4Ch4CcyDLle69ZvmrQ8TfVDf7reykGZnz7AqiHLwmr6AKpiAD6aX0sSP0r8QpA
nZnKFzosW3qxFgGhda04eyV7/XkoZhSPDiLMk9k55USLRPs5LrjJLKYdFWu3OOie/sV2HpEmpn1H
/S5e8Ufy6OhTTzT2fZFro2ZgNqT4U6QwMY6D/O0ugjBKddI2S5DLE0WBInOLMIIC1erTF1KDuQzD
EzLFK8rgkGQ6O7V3R8/WQw3t4cSVLhJS59kgFr/wNOIYUG3BaRuPDBBvDZ5Vjqk3MlL30vXrHc7W
Z5lGU9Wr2sAXFRJls+FCAmUzgcJfXJJ6h4FXdhov5I/i/9//+dhT3BrkPFWxuVUTcc0Qc0P9kcb8
7nWq1JtNQ4FgtzkF97oGUchhWHToqnhyNJw098VAy225c9xInt/qMP51PXOs3mm4VJCWRrvR1U0O
0UWbwS77InlLHag8oMv/DdiAgtlJPVc43K+35RcEmjIaHB9t+msZDRPeUnv3l865qJpXoWwVn8FU
zIIcpszaY9B1T+E4z53ioOz/Ef2moAtPFfYQmU8erZvUsXWkSnwr+hCcwYFOZzQ2lyw5RefEWRtG
3fT/0/3UDt9bfZveTAQQ7UwXEqgqB5wIYosQ6Y/GfCJb1YnvrtC9JV0D8OD8ei5D7Fqefa41zuFf
/TGM0rUSSox2NWplgVRsrTC7j0X9BLNcZLatj2eGafbvaaxZaYgFCwcR0v1rDutAOt/xU/luyHkO
YVSPe64GVExCOH+sAqQvo0ubaw6ieJGtg0jYJb36sSXAt89V2cHmoN7LrFBL2LgP2+pbMwX7JKx0
4YMZt2ReZ7ZEUM2UewVRwHOWuo8xcZqwG+IDBWhTEdOv6joYyv54AMRAJ0Hyto0ApNSfJAveQpOF
0Y3Rk6OQc5OnG6XZAWr8tPaMi129BYVRRjdW9wTXwt9Cofj+rfjrZNJtVyauY/rLU1lwKZoxD4x4
ibTqwOm28EsAlw6lHwptNNRiL2G/zvBQMaRIsTtVRV4Q/OBnU0TQLCEHfj17PJmdBUUx3QfVMqFG
HuKZKnkQ9Xwqk6dRpsU9820sguiClczXjfE5DqeZa4md+AJw8k+VHNFEgTz1IUrtQdUyNByEtZ+5
LOi8xW72uZQpcfYj4B+KO3NUQUpSusYazoSWtS4+8S9QCkOE0NR99vaD5h8IuRaFUcb20MXWEGjC
IAOWLCz+pUDKCTICtAr529Py+JVjCtMxqjysc/N7jats2xNl7QquhwAwM5PXuLGxTN/CbN/Veq+0
nrepZhFMVWGSvMUq6r7sIxBShpcnkhR8RqJYC1Tn40yvlbEI7MPx8dNJeuGHy1c0kG41yj4ZuvS5
rsapQ5G2SddbRNk/w4i2YwpojOJKKEEdFhIk3IHgrtOJYcUfCbF3JB4dBmbv+s671zyc8R4Mnp8r
Rq6irGMmk2e76qZ66492Ue/5TRcODw4ih4hRhQNxs6j3OV0B/wDUn0d+tmN/GU8VanfMzQjScFU9
PEFzdQ0ZFb3NxxByMm2+hkddMoEUGWRPZ4MsO8PZ7o4k/CNGjpzeIXJ35kzNDm3do70WRRorv4lj
bA/9kKXVif2YeBMgZuu+4vxH5b7GoBGV84zH/APoKQO++37gegHrIIwOz55mSPvUux2ytU9k7u9s
6sIepbWU7it7RTKhMsVVUYlPidP7aMMAHmE+ZyTxitBRxZWfZQWoXyW3wyPVuao8S4wkdlzqODCP
RjBCEqH7W8j/L/zG/i8HkH39xxM963rfJtK4rQofFZsoplXX+07SLlPfUL6/9OrSyVYloTmVXKhR
g9zka5vjKQAEUvtzZqdMS62bM4qVuMZtXBhOnQstdoY2nyYXP3KngCSLrFjzyoq1SRMM9qQ0acRH
KCM3/0yVxi00/xETop2prITMxo+8qLVQ4d15Qr4oTg68aX1ULEvngDpdQk1SLeCmFRCb3Y/OTKnh
inQV39UUzviHuQ4jqptdOdYVOpvHCmo9jNgOcGBwO2aMhlQXcjA1IYQsnO/HboIXOIydoFFzxkNJ
sQW/TqrJIjnmEUEyXdIWiL7+bgI0hvqij8EXZ5eaGz0SW6yHhInwOp4bCI5+FUAFD3lsnRoIQTSg
Vlyok3M5/GOWj7w8UbynunF5tdZ7kdKdVotrHbBoIA/hKVWb2vJFggnmUOimKUjcQ7yx6AWRoaAl
BPeF6oHxwLCbi5S/k5FXPXlUGufIOv58CYFl4BCquB6vwv7BTLU4KPPsIpwHnik+cQlTcGpV0qwU
BVS2UvEj3rqUAEFrp9pMiPC/PBDJ/7zuHkExk/Ed3MJfzrVnd2Yr+LvD1SY/n/mg+k8Ja6mN1EH2
8GOUYfP52mTPC8eixClTtHJARoDVsjPNFLdqP10u61DceLcS+mA3ViSbWWg9RqdAsI+207n3kxos
HfLrrFfyV7Ws617HzsGZI6/wrPdxmNuDVZwBQQUQf7ohxq3gqs+Aibeau/bVC5fMfVB+KhnUonir
FgKdiv2BlVoutDWWhGemC4wn7OARkgoRsppjbZ5WomsOZGEk+NKK14hlBzmBsVKz0kat4egQf/l3
kQK3awgI0STcq7cdlVR0KkrNpoLox5oWpQ8bC5gCU4/UH/nw6VMQNEp0caPbZxoVxAEw/Wr1zLg0
sMnBs0s1otYIznug4CkAVnl7Av8nhbZcg+o0HiK1e0u9I1m0JPQjfLMCHmnF4Fo4HblCzAKt5+TF
1/e0tnzp+ysIgohoTDYZYdxOkKdHZCM9JXy2iaXgegAcmwspzDtVOWaeoUfpF5P88Fkf4ZavSRec
HYy9bSwMkwkE5Ms2pHwtpcBPkf5a/Epo1RklZLQGM7BjUmnPhxk2cH8sM7jeM3CZlfva93El/I1T
2jJSNdRMfXBAnYjxVvdsfqVZ5o0n0IAG20KKOde4RNNz0dJdZs1DP0EEknXqJzlER0MT5ryda51H
cxe7e5YTB3ITIUJpvhyz5Fqpfbrz8cfpQMRtEza+gnAgpG/AFHRp3ktIvldpgrYbGCXeWD6qAE97
K+nOKBX2gbjyr2jbNNRu0NdHRY5NBps8Iilx9ulbctrWVavP5lYSYMac7uMZ0sDIFa2M7CDcBveQ
Txewpa1rqqB2CIq1n6ggpH9IrOQbQPg4YVQZLu0tu3yrrhQoygWyEOre8ABZTH+vDD/eimELu/Df
TpUjLU5FfFU5FfrWNuu3/BpeZmI20c6GEg4AL/ERZYgPr51kiwhuGEY/6rnO4pTMcfSlIqpcIu6T
GOdotDbSeTZBDSXuFJX6nwklge7ME7iJclQYht6fLrrxj2IF+Q///eFbdLwRkZpwjfWcERkueVR/
a7vG3mbyhX8yDLpj9RCK+YSNBZNZzv5yCo8g4TaQDT7adUhtDW61aItt4qGjNj98XAWOGorESqU8
birpyQe6L5vrB7CkVW5oTmWgr+e/VxOKM6beyGHkwTmMbpL/QmHazf77NyjKnoLyQ4hAe240NHKf
GvUpC5rh2sNtE/E/3meUcr9RrotnAb/Y5wpjdqXAfPBWRbzq5lvl8IZxLaASqbG0/KB5tqwXxy9u
1WYULtofCdpe8FQYo0j+8KsJpumvbFqDuCiqbtW3rJP+b6wVmJ2qhg58C9YYKJuV4dXJzkS7eAOq
+PS4y26iNSePav3qrUOrVkkWZLf2wypaS8G7ETxB6oDg35Z0SFWWK85ut1yXQaTv+hqPEGjW9X+s
iRhbL8A+axsMBLVxS/GOCu9egUK1cDbou2qtWg+1Ej6lqXBcQqrr4bLDLL762u4cNyy4GKkLZVJb
i27Z8P1cyuMAr1D8/6NTH3PW7ybF5085JVEkcTQwEDd9sgaWoY7C8QLez8hWPn7WRduWcuJfrELD
Nqp+j0fVyOn9O1HKehdi4iPay7tGu2PGJhjyuZrDsMqWSqIBvizmvzmOLNsqvdt7HtUjYvAruMCl
QTOYlMWp0ac7nCot7NUtUtF32GoanH30Two1k38FpVGRnhebZvqlheS8CBzRhgTDKn6Du7PwBFcd
tvQp/3d+/kS0k1/1JeGXAr00l7d1Etu7RqmFMP0661pAjPyK2/hMjCLiqRU5zNJGHs4nxtbmmAI6
s0SNKEIWcEaAPiJFWkXng3wM0d9MFRl40cVjxBX0ChhosNK9f5RQwfh/vEaZfXjaSdqlo5m8ji/R
lO8GFEPX+tLEIengTJl0WswqVZFD4eZyR5s5UzH+a6Cs7767eTBvV3ZRrbEsAGoNEJhZ27WQM2qr
Uv61Th80SbUO4ZTm9a1bwOPDWV3p82nQ3OHGVVmWafLUORrxnIYLaoXJOJ8NUErkudRx7oPOYdVg
4r1L5pDW4vE+2aROfitvuqg9+sTRmXNP5JKoogGbOBl5ZeVtWh42nDD1WXIr9fQUrBGDlKEyoPA9
qlUd8WeJfn2x5bkh8xJWFK/AGAMkPUj47TUnsz91FozHwf02JvQN6uETbtocEoVZcuFrjcX97KSP
LG5nagxM5G4mgXAOdJmb7zQP0J3XYhi2HP0kgFkCvPUZriULXrWo7n9t8fsKVUvZPvTCPR1HRJnd
4T7zvUPR7F85uxvRsZoXi4Iqidm+0TJumZMo8Od+GN7EQkYUZ4ihc5KyDKrHdM4CaKxpD2dBFNfx
n5kv7CDnPkxXPEgY4Jhpimf7KcPOiMjpMPBtT/B7wh5Hicvw2HrJNxukKjsytRhLauAS1V4klaNc
JFYC32JM9bNtiJJAEVh1JUlgJsH2E8tIt5WlKCMoZnZlggnuyR6soGGTnLPAC9M+bwcvHTcVprQ5
oiJRpJyW8MtpIkGecvOj33Qzv0inwhl7BzBmpmEgIKGzH5TaAZamd5j7uSL1Z1izFTh509YQE1Mc
HL6m3JXJ7Wnpr3IwjQP8j4nT4WB8x6Oxh+rlg65oHMhPhv4Vp+pUoe27Asmq41u7p+CGs0NMVd3N
JzV8TqFn3UGWBYm7xmC9vFo5UsdprlS5IxfnTcW/zDP+mS2oGT+ovW4pN0J208Vd37BplJpdU5Hi
/lOqEDtTJasIevJuZKjB2ySeru9EX5sGggPxLiTQ5GzPmzetzfkWFOTe2HEVTgFa9nP7PKjNcT3N
69TC3sUUEwebUkFt5vgUyvQI+fTUNG6tfYPAKJAY8fQb3O5k7Pdp575T5pCob8bCExQHxoF4EW3G
Rqmj34Ht3TdF2nuxAZPiiuhfKJQ4AiOyqtG/knLyMjaRQJH8Rbk0zfr1xP3datIq3cc9YpKGtn1n
YWEUvTtPnVEloOAbMZbZb6kU3EZonyhKWjM9BOEzfDLuDLXp/83+jB2ro8FwyvA7VIwFog/tMBXU
0OP7Ay0bQioNSgUlVLe0TR/Su433GbFvGTUV9k1rKUX2aqDTSMz7N1K7Q0/eZBCDDRB1cpdFERCO
tcKy4O9gCjV0tPjrg2Hlbw53/18hf4hKhhTLN7gA1ykELBN3yNtUz6Wbox08AjvcD13fn2dv/ioK
a1w/uHW9W/ztLHtpOF7PDtku0TeKmJdxRHAwh2wg6vf/QtfcaxJRHQsPw8C9E9j8OG4aBfOAb/ig
Uf+Xf8vPon2GMGir/zEEdI3Tq9U5QrfeqQ5GtHH1KozNCKRLarVvr1bwLA/dGFKeLWFG65A9wVzN
rEKkYztrjHOfLe6w3yUu74rELS5IILJEpw2+elgQR2w2p2dx/qQIZzaTx6kKMw1KE+S1kf4AXyaM
Zm/mA0aOZ4ABUPr7h6TsOYCJ81cKNVuQvV2Xxs7nwH70Jt1Csm4A9fyPhVWoo6vBRJW87HzC6Yx+
q9Zi7t+xLdDmEYhm6y8LqmAHpxcIwxJbdYgJXP/OvUOmMQta3N484mLkjoNiCa5KIUgiS6WUySJy
qdEY9jQ/wr2LEZQnKL2DwAzRo0tWhzPetoQdslvL28YgfNC6wSF+ZA6PfWjnIzuno9+FlNvat1Jj
GuGEkLOn+EZXxWPfPslQBzrPdmJB13zP108HmIrIKh2TTbCT54UFnn+iVc3ybaq+NHlQtZfm7jMi
ipz9cxLQc5/PKUtcm2uawdfONF3d7hTY0xJoMgOduS6BnyGJecFFa9bkecoVi2GgHkOpIC50zYL8
/P4zXwShTdh0R3AwbyzPmtIRyMfguMNgnnzthFFbtkBsIB3tVEDtuILHcjwR1o/wZNqvgY1eck/C
1TJ4rHkJuZ0sAW4qd14x6BztFbfPEZuqYFJPdtYbKrTu3XlDGi14BCYSMUyhS/UTL9yQizaL6JK+
D+GGr68vVsRSbWMSg9u9/c0IIKxz72cYmgS01DrK2YRnlpWnsAep71OaI5uCxh0n9aHa3vfjZL06
QJQR4lO6fzCih2wPV6eboy3xZ8+Ax02qPs0rLUIp14xIUQMa9YrCabyATFvsidYTdH9OokgEeblu
BOlabK3nWLP07fswm5OyzFheamXbSDV5gBEYQew9pnaoQ1eBa3RTPJMmYCyXjkGkddigJZe3lt+p
jI+jTscAqdoa3gJDkqdUVTjH4h3izEHFJN+mG0nt00JHUT4fA7ZVnfoyFHxuuWFhgxGxkxCOVIbu
g91EvSYHEx1yoT86l+Jk6CCxnar54kBHFUw3sdxBtOVoQbGpApb8EDF6Lx4VlcEKFIclKF1t4/hp
/t+25Ry1JTpZTn1lxLjGLE+avsX7mJNSC2H35ffiO7BKrpMVJ1tMacShT65RTo/cQr/R1uVGy/W7
riG70AHCjDT9ZaRdQl9ve6uhjPxYqX84z7757kXHBety2ns+JB7NphaxkoEBl4u+C0kkHzHY/0FI
gHS7fc00N5jpd66kR+BONZmo2tiAhW0X4ZduPjSknd/DW0CSZlBa49wa13T19M2F2z1jxCDzW15T
I0yRwYVqHglKmeyd3oYJdNYNjOuj6mz1yQwD5wWV40kzQgvXbEWgAgCT9C5Rvcy59UGkksgT1ng0
jSLDhWaer8uBmvaczsObiiVplnx0NOgC+7oyDJzKOzL9QLZKj7R8A1YiEQUQz7IW6cCt1svb4OVp
b3TKzq6ThoR4uZKgESGkIuJO2XF4fWSgSyafAGkMjXjO3YSfPLy6AXdk095ANfvky2ollfIyjZEg
dx9vR9XK4ThzX0kefzAjIdk5jgHa+USlYCTQEYEwEjalc745et9n8zhB0mDXNjdfNKFBKxZkq6Xj
fQgIzBrGFkZNJ2fgzOcdwEqBp/du8Er8zU7jNp/3OUChK1JPLZgupB07ci/P51k6MEedOawQ/2bP
I+jrK7kbqeB+YAQIoVjU6PoeLM9Z8XTYPG5PC8VDynz/E2dMCeKkIAc3VVl9mAcP29wboB3DKFtq
7ECHs1yFNN6bVNDW3VaK0DVwhk/t8PMKGE3ljtm02LYzTlhXIOy1VOR4aRuOGv9t6hyZIy98x7Pd
S4457g/XddF8VwtOmxn2fuEBlGzR6Df+CgQRsb6yCJN8cf2XZIVrEiZX73UiNaqT4wI9cmNlC1qX
ITI8EKx9UWocgeOHJuYbGm1IeVMMsHOUwrno+h6KiguVPTMy3DehjOJ2zXmmwWJ6ZmePLzA7Vhq/
xfv3I/pZjEkFM0m1u+CdADA4qP2ksRcaTih1REdMQqJLHbCga5zMCQKaJWFTYLzhq8W0ZEouwo8S
SThSuGNxhj70KvCF038zO0eQiqvJAXZ/wV9T+4063qqDqygJqjDjToYdYPe/LZM9KFXOBnoxRM+b
Dl1h78jIy+/aggUbTheRbnzBd+nmjLcjmc9elOezI6kmfHML3zu8PBW//j4VKJ1GCLcD83SfyjMn
5Y/i2YudEHzxyNWtbATjis1g5uA+LQYOXPwivvLmMtAlhNmIe2RmBzW/1PHtsevcPIrtB0NN0RDN
US4JfVF52qlhzRfFDkEAljObOZuuEH961BB5w4yK+g0XDLSO4EebT9RDL2LDAygxkOhz5jFrvP44
AUjqu7RgW23rJuprpZph4f1AZdlVz2ke8nnlt4lyc1IeVEsg8+tPAZgOgTUoA2zgxkRtkNqA5unY
pK8Ew5koaOqvHm4b1tlsv8UNiMItlFlwA4M/hHfXuitboiZsyMIhXYtP5fPRlt8GsZ5rKJm2DXDj
N6BhGZ/qOn5a+uXZ7A9yf5IAjlbjzzfHPt2Ar6ANlFNxcYRuAc/zrhX77kbJ+/naL9OEEMdtKwN1
U3YcGQJvBUnZ4uIU1bAbPeDtbgIhPViao1iYtVve8br6uYOkviBvmy/aoUFkJ791g3W041ryLWcX
7RELfcaaPQzounszfeja4ceg67BJ+h7xxUWEXD0oB479jqQZ5SwLTItL6wiaOfiGvLV9b1A/1qHS
swtZkI2KpD626UBMDgP5FASYrEpi3nZxfKaLaOvMLerqoL3G+DYJSjaySx3QsBrw3B8Ok03zzWmR
fJXXfPOQt9/3q+jB62ecuta0OJh3fIXXV/ixlArqLVPzX9PTKbBrOwXyTyWPmRRvnTXKL7iAA2Ux
wqcYd9FPA0x5hm/IfnxeIZRCjo7+GoLHVg3MS8bSTELyEUrsjS9OOxTRtaG5qEFFfs436yP56FVx
Xgh6CMRkl426TjhI2ZkVKmvCmm08ch25HA1O7jU7lQYQMtR7MO01/BBCAzXlD/bjmpKvtcdBkZsU
hJR3siqqzsNat1ZYWS8tZ8GqpZXVip4gRE1kDLALt05q0KhiCj5ronnzPFTjbIoW6WEt8fNjndsK
kNgSaqmT4m91lfSISpVyec602zQz7S2Kh8L/UqOckggr4hR/qiyxiLZHBeWqI4oX/V2gTuZkwchj
bpIWT0TSiFeBlPm/7tuF2S0DftWp+7DFl5Hq0ykDHs5RqhjLiEMJ2J0dJIVs9uICCIZNeByr7w4w
4RI9GOdaWdQRZyaoFB3x8A81qNcKlt5wwepaSpeeTssaNKGF30xm2Yj48eMxQYkP9NZ3N58pSzoO
nQ2MdcgvYKXWLyL36yOdU6+oc7YDIdYi/ZemjILaGZ8cf3FmYvrUOAcC3yrBWi8WME0ZQKtjw44U
vQT8kMLJJYh4MLTnUkCcKatRu/3uSfJAntC61aknhyHzxWhsweY8yabVKSib/Q+h8SJ9DU/Eo3Lv
ldkzH0xp6bX9t+NmLsPvCmET1qVvCDV78u3325k26KqxZugHf7hsGOtp9bnbmH9rcsdWzCV94jLI
tge7ccTHOyJIICbL8jL4+CwTVz56v43VIoybX6v81zgQgNvj76B19Rl6ooOU9kRCMyGJY1n8ieZa
RZ0HP0OSRG8R7umaQJi1sORuyKq4eenz6UfySgO5unguaSQlcYUGKYPE/Rw5Zgs7KqONoXQmQUAN
n+/PRrJarlaNXVPkHZ29OTcsjA0jZfxCrizdISaiXj2dogUDCJDFTYgnKafgUwVmpzqisCOfvy42
176IqVTR8soxIAmma1Fuux24jKHuwgbq96nTXFvkAKMmD+kXSmWMWz4qAWgS7uh2hfLJuzqKa6GS
zIqEMyzwUKVbkzXiNbOWQgFUSkubPCDkOxGJUb4Slb3paskuE/3iZ9v3uSu5ScY8rqF6GUCCGnRS
XDQMlhWKD2/lWH4UcbJW7gDhmE6eWiV+sc7wjeNSDFoixolZ5YIkCztDyHYjCCfjV/GwUL/ptXYV
KqnjH9SR1OJEGFM6TFQFgMDvjx0Vy2mwgoOn/g3wfGA+5VAZhW1feL2lV1Rx6yXNHEzFEfF+im6Y
aSqW8mfkLf8zvD1UcW6h41XRPQJ/jz5T822J20eUdKR8fzW2oyUcyO2VCYGP73Gd+CCq2rZza8t7
XE++dbHSK71huro3fXnGZKT9bQGpC7dc5Pho8qLNFnK7Fyojlu02J60oInTWCxXEteF97w8oMhuB
ghBhx6rg9qd/Qw/3MSXOK86wKa/pISrj+rHK0m0dq2TBLvFn4zyvA3774pIEzJIPW/RzeBtm6c0j
6zHBJyJYYYP+IPUaAZKktaVr4lguFIrkWqCW7QagmRWKB3TZvmjfY3ocmx424G+ns0gcZBVluH7a
55rD5/ZBSvDoh56NNXy7VEDxwvGyBKLQcGjvQHK11VKB3oLAf2Qu2iL1SWvcGGLv/PvfQC9HsKGt
IDJidQZZSnPjNEGaYeXs5sEN95Wq8TWYb9ztTs8nZLIoliz2S0UKzbC3M1lkoTA61tG7dsl4SQ8m
Yi4p2q4RG/8sIKyda0uYWj/weC73qQps3vhM/8Xn4Aw/vPGSxnF1XlyVRlTYFdOF30n2IIR4gvPC
CTSDf2fAHR9rUskFgflJcNIPZxdF61j011GCLYqAchVniRfSv1HTuH991UPjcpeKH5v1K/xnYHq0
BAzg/VncwBRgX5b8HdoEp3TizctBpib7hqDYchZABQFAFlqJrZru8lKlUSvwlSKy6vKjiubX6p22
n1g1I090mjXUeS9PD1ezDVwjcj4IwEPKj6qxi3Lx9XWMs8Z36WXr7yLNIVKAOMJQT3ojt0bam3Kj
MPMU5lIeYhv8RHPS02ur6Hud/4dS3rALDPbDvqbXJL3QpRoNMCFQtn0FhK2Dgu7tbMsUcpa48KpZ
x8eL3LG0IZoekdut4ctO8UfBoVnas3A8E7bIdrQeD6kCIcwLL6+vB/HmHSDnsaYkeK4DUMmVu9Kv
eO5dXEjZpJAD4kDl1h9CSBnVLbcR0nQXqhJeaPVY6IsE+pdgRrVWGX47VrvpbAqbLWGV7C8xby1d
GPFqAA6eoTgsvPi3H6wOCb1e3Wx16aMQ4/XfIsYFKxMSK0Paq7XLNHwjKLRg+xtwUTv95a1kwsBe
2tkY6tCMaaSJ9dGrO6sUMGQl12NffoHp7+Dt6LTRn2OA1z2JgWpimu6bAoTCrJ5XeLItFNWCEYVB
zM1vKQRSpH+BUXmoG8dvpP3lz5evX/IqeC1IMsPsR8Wb1JS+ChRMV4lWZKcCenTbfgP8+7pDRCxB
Z5CM8PYdsyHCnRX4zDPyMA/zDQNeNBFUxSi8J4PWVU5LnmAO0Iwcb3GT9qVCSog8EHrf2jennHNV
fhg0rEfz4SCdnGGbUOJAIA0PBPOZGB/LdblkWrbGSiSiMYW5rtSkqOVnNGXQ0slcJRLMhCp2/u7e
8APSiIn2aH2hnSGL/kN4meBs+Y3xElsuGMOXLqB+81whMJ9ccMJ5LUl3nm8ycb2P44CKIrEhgDcB
ZxccPKPDgSxjGQK0BgdjuZ7aWDRC4kR1PCGEXzuQIieQTCvFbhEKrbWr8Z9nOhXpM/EKMzB3O2lk
q9lmYZkzFz4KwYHsvUl5y9EcSLCvHFkkYtt8E4iIx7BDSPkOwnq2a6sF4XVUnRptuUZF3r42J3f0
DN9xM4I0xgS2KIVcvSi6psygpXCjM1sq89CyC0nNBhB2OL7o+xZmmSFLS3R3ujzx3GW+2TFAu5Np
vNV7dHFAQXDXWww63AS6bkxl7kmJGf4yVEseHqU46hapQfk60OuKowtL23h565FVebvaGHelHFS0
+1POZLLGq2nA1pFruVFfNocbL1JCQVlv8oUhDar7qhr0dNkUoF+7ivcRLpwoEgRdDTsQsfPZwbLz
nv8a7b1bW8qQe4AL8vjkm+RJXTjS03JPbNUdRQ8F/NMhIy5zAQ/jz0gt7e9btQfCyQXfYC4n6lpR
ze8TO322ReV7kH/dUMKeXuHNccRxPdGwOCUAMPUBZzfKHwPd6jLR5gTsxMhJllUfC+w99DXEoC8e
vj+B5O0Fmx/ptYL5YxwCRZk3uWwKueek5GVDHg2JU4QCHhrR+pKmNZY1oB1sZFEvq+CDPMdXCB+h
ro32EeV20wKzOMXXpKng+QdjkfysyUgKFzDHTBvuWkOWtnleB4hqlf7SdQ7fDIkvMFNjtS/o0VzM
MAohCZ3t0dQQakFOPaGm6Ie7oDdR+Y+8UtDcjqPdEXp5z85XPreirpcY2iMhPxjyBz46eUwg+qWL
QZp6gBj4OZGk5OVHJheiXk0oCogxo5tCFnemErS/6a7ZwT8FWeS+uCCU4nqQkXOAYIk84TYI2fqa
Qs2zEZxr4Xg/Dm4By7e3hO83wJt/5PtCBAOz8yiN4eP0mjbC/jC/87vxrvp/mkdqs+ksa9mIUSTG
5zp4Iqd6tnv9J8QgeC639hAzqQAEjS+NCCCImLH+TFRzkYdCMYXJPNI7pYHTvIeyK+MeHKlvA21v
u0T82E6OKxZUK3SLI2wuJiUjy8eb0n+vMHfM3LGMsUKHIrBt+BDR8Q+5Zc8gLd71uskf2r8x4qUM
YTRMWC8S1HKwHJbWADGRAUomgLjhYtjlqHoWtHgb3xvI8WOgVh/RRleQOOMcjORP2WtIwaTIMVbo
eQdaAESH1X5rq4TpI89TPXah96FzpbLXU4mZ+v6SqS5G8+YSBuWzcXdQM0m7unAdLLOZ5pVlfpPx
EBUzgjX9v7p5QdE9FVFWLdeERS7NvCXSlPuX+R/0mCCZ59nCoxVFDFuqF5obYCqXGtx30y5YF9J7
GtEqZxP+RTJBMhylc+3bqDnmU5UYLCOREzkGr2D5rW3AmDzwM8TxuVzYTUwkeGJV2ueCXkcviWkb
75pt8RYUbh1eCV1weSJt1CJ7RiC87sJhcaWbnAjm636C+aw9wosd2aFj4aPBqaUj3JAvCsZSE3g7
b2+FSRfSUniWT/hV4QgMHFQFFNImpNY+hEJC9KKwaO16qzWTSNSuAzW4Dd9NzhIi3nkz/DqKLSQF
EDsHkIICrMAOeABB1PNbGuXA01K1MJzko3/NEuHHu+USxvXnHY3Sgz0cd+B5LpYThUZUaVILqnWn
8A+lhpZNlWAM6+lhAWcyw/eDiXeno/OdKCZD/JzUE+CTukJDd2yb8mq3dkNji/5+xanJSsGinBHl
PmDX4hv61cZzS/hrS9fFq5ijVifim7WEh7q4GxZCDMBRAMsAtjdVj/j06qqlWImXvUNbXWh+GGmT
NDPFDSvTP6QeHqBnkldO1VGZsotZ3gayU8L2dbLWcv9EkkBWQTvBamY0KZR1Gvj9slN7XzRcfNq0
SnhSFuMStWESBQAYnNo6ciHkaq3W0ZkKeZ2AyUH/wrCEK1Ay2DNG+eBkN1H/hLRiB6lNDarq/k7G
/9VTB1b6VUe+9tTMkNHVQecJ8l1hYCqUBCHPVr5WYDT49ghiine5Qgfxowbs1XJuZlQNyjnos4do
W6J7zJViaYYdswti+TTjG5MD8Hrq0A7Cf1Y4qlImIjE03uDqQbgY7jVJkKgwfw6LVRBAPr/XadR6
IXMc+bA0q5cvf3Y2DCPsjUvSMkQfixmDwOwUw6/WlD/oJM65j4CAaEg5M9keiC8GspWWliqkEa2g
9zb4U/Eaq5522fA60TpVya+6UootSZlt6kmcdCOoqPfC3o0t89Z1j6OpZOtAhewZmI1mCBNRuGh9
NuuYlmfssqRIlNXy/TJM7M7hnyeW2EBubjcPMU7GS9PzxDj5JiePr+Uo5nNZCgGijjJFjm7y6/Kb
BmSG7YTMPMd9xJjVqQBcfc9XjXmc7kZmEm1AKDQp5wLN8k8iAhB5+QfbP1979nRyMsLzfQDRtDwo
qwRqitLX+LCPOzFAz6QiJ9kvj9IX7vmBB3HA+JShXtab8yNjAIz+clNO0WLm7dV9YWVioWiv3RLf
NwMjfQk7OD/tmU4GTlKuoTYtiF4OHiADsl5qd3Q3PPPSVxaQA0fXNsMtbTjaFk+QotjyrRVdx8tm
L5rY0UEY5MlxEPFX22F+tqysZ2VMMd//3JCbT+xWA/2xK9uYQRdiX0OXNi8vkR9t/2yU2kCiNC/Q
Hw/v3Y5JsZzBfr+/ZIARgjGetGWtLdsoh0PBvSlGju/tdmkhzu54xSiBM2uuPZB9kbSNASbcpYax
zXFQSd9dhZ+HsLzLEdsapKsoQ5VQhMiUtKETTKioJgTvk8BSd/Im5HjxGjgkHPyzdIQEnWtLPxXH
eatmUOgbJ2dFzn8LRuUxDb1d9OjEG6Z4B6CcjXt/juGFjUWpa1IXjg26M5MvlNgLRMB0P75L9MQc
a2/9vps1n0bhqSlC9gT4aL7ACua8c496o5FS5J38z2SHYCnr4yxrHkyMvdgZNRXky5utg6OBBt63
qNOvHW9vcWLnIvlTOvIZGZG65PFGo+WODYU3CLe/Jg6G9H9azIYl13rM1W83N75UfeE9ysoOzGhy
slH1xInrM+E7zjqZIebJJfd3Pe0VcB78R9sd7vhFIR9KY6QLBL2D4nEbGimnL/0Ea0dn/qB4FJoo
Nks93mvbcrOKzTBL0lFbkGzIaimRB4Z7wlkvFOOg2UYi6ZXeeNbxcoCGZG3NDJo9UHIbRytnXISG
D25LZ/NjPnjrGwmz13bN+Z4ez+poz2VfnXysm0400QYW2TjAg/Obb3bqdjsEwHqKMOytzMvI4Aqn
NkZ9o0sp1l3A6W1MVN0E3fqygXqMQMY9ioGJppnHnBDVA99J8DwtgfvT/w2eKPB31vWKpm8JgbYg
DtjIRmcCs/3kOAAi6zkdBPB96NaIKMFdECr6jBG6nNW5Qd5He+w27pu/ObDnoFecH2O19skHZdzN
pdEcjtEDD+KPKUCq4IpCMcIr1KIQAv1pk8sbJZDFI6tLdfVgjlgPvBprAjYvyngaszRa9U/yRMW9
HFm75z/MqoT8OngqvK2qzkf4mcqDAAlf/8VJq9SgRCQyt7k2fxBjXCipwDDkazmJGsbrPFaWDqbO
oSjsnYxrYibKZKBVIzFyDdD66CkQ1at9TXf/So2dStpOSc5YLA4sm3k3CStOmMNx9VPqQgtEd99G
bSduAO1vmsR+slL6W4Odbw7Sfp6YgT8401+vxTPdVY2qMi/komBLw32t5vQDathIiddzl/QC+wOi
O0kQwxtocXmOgmBuuDFGv+g3S8lGkvhcU6wX7ycZqit25+DFRpjiVDL2DzfL3miRU201ZhgG5UCd
tdWGL4tB5Tmi3UAE8PnsEVV/F5Q5yR87TwT8fFbKoxUW3cCK/+uXny8lQfU9c7ZYc1Ff6PGbkYL8
SegTcAPADIUrOvn+7Tp2QJi0DZi9n5MJ6TnCZQ3d4ik2FU0NYfYCHpzp14Hu357ZBzBvTHpDZLP1
McllIxk6j7i+SrhC1YKVvCj2Ger7+yfUmRruSzssGCQ3tfSSD20t+tOfGdlWa6TbPtRCpaAPtez9
8NG2nodHLhUNy2EhBgftPJNaspptIc4Bs5XkyehM0NluummF/OFEbtl5SoE4uhwJBTTFNhrK6bDh
Q4Ii2HHAe7ykwDyVJIgXIgqfFCKu49O4VRnsvruR6OGdbJkdudw8w20SazFVYHSuOuWFZpCi/jYy
yCgIMkywPLVk3m933ZUyteg2FeM1fgpgA27DTvheiX4ceOwMlceXCJP6yKoUIQ/13YV1HMlKJ2G6
LbFs+ha3ygwU8LNxxZbJtH3gdjUS1wufXHRh4PNxq6Z/LE86bNDag+tdI/4ZcUWCS2bf7+Zfm1X6
Jzg+RZsX29HVdCaUUa43Qkg6WLELzx2ZDHO7UyftgdavLVAHy5Q1tPxmSuuSpTw5MHCgcKalQMoC
Oy95diHZl33GKUmpP+7yJAbELy7nIjkchBTId9xwRBsT7egEn3SqDBIfEKkd6hM3uO8orYPEHVx9
lvYf/Tew274Hl8OcbBgdhQFvXREV1zsjCJSNYcqTRV1A0ap7PIV9DFKCy/AGldR7/mYwsBT2Llz9
XlRqE/n1dGpzy/SMaR86DF9f3RvULPz1t+fhujOhodPtUrr6WRVWnL62F2YTVpM3OoabWh7RbI1P
LHCdyXP5vMVLwSuphj5LAUQo8XGNPkmgc4vdmiIajmAEMrqsJIjbHlVu6my84JbleEJpGg4Gpre/
4zP9SkxN8BH6iwzlWQCVvcgLNViLTAM5hoI0LguhgoxbeVsgPj47eT0EHSNPyYQUyQEP/YXcYq2D
XsnwCx3lCiGXuJ5+TK/jdHCueAw7QNoxyU2mxFO2rIE0T0VmblHAvSX8dUIfF1CUyfOhKdfCI70l
d+UuClhINBwXtt6+QefRB1Ww212TSXOUeGWht7VaNAmWXN4smyOmDx6c6g7XIuaNIOfkBvSCGDxX
3hKyrbNI8+vaCacpDu+0ktAIeYVnJoFIwZxlQo3KFPj2UrTBNVulmDXkC5EB1NbKherot9N6XdS6
ECM9kOEJCPFWIqjtc9XJcmpZQYLpnou/wZ76ESXFoIZS19ZWsTMWP/9fPl1xDFgfpe7tVxBGzSqu
necVYm2Xk5lGqlS/ijO71xkmZNtivqhrdyUe83LoxnMVrOEch7RHJCceax7JZhzWwO7IvyUQ0IH0
M9l8qjLekdbvWWoQxczwBhKs0nTXdgvmOsuLhC+gn6A3V77/JN84J+WhXrw564obMDcNTY/0cDyg
TN5zr8/0iNPvuYrZSwQhr7k85QrKjkRFA5jQoNTKxd+OgVHL8iII53Q54LK+on89wmBoeEStv3dw
u8tP1QO9U3zPo78VAdpCUWrANXGMtcfq7cGUP/C4TfUEVobXRpKFnnHSokBBWwQM3RmMXkuvGuMw
rC+Viot69mJiAVCUbFjW0u1nBC76ptHAgAaqGSfjILwHMKWZBz3+K0KEqECsxQg+qKicpTHjF7d0
ubKJRRCKcH1kCydpHz+HzRqtHLM+qpQKEWwWoJHOHbPTXbiG918/WP7kZCRPCMocw0Xq2lAQZpwx
JYe29od+u/ll2tgD7rOdwLbNXLdU3jRgJ0lqirwIO29T3gv5Bex7QT8Dm9r0KDwTzqlU1craT+Ti
2pINIkNmDnnEJnB3k2apqCkaPwzdNioD8+69EkhfLTS95IsXZpNn9YQ9/d7xNCHkfWCqkFFvqfuU
JrvDXA22AioBTLK0Qq5a+Dx7xUBjEHWl9vyrt4EK5rOcadHz6EXOiBHmUSpxndwcwafPIlw9FFFR
d5HIGnsuN+68LvK7GtvhW/do+R/U8T1Nd4WMOi8A2Zc3LpcKaqpvPW0aALjhH/Sk7lyvhSvsGkkp
qZFmJNDgh7wVSyYuQhjewhnHQi9ELa8HbZQR6lybCtey/p1sTPGazGthocwUWPbWO/M42begHsqB
E094Lu/JnfWVY6qtQIVec/dLcbFOGfxdhruJ5mHv6DhPE54zc0wliRjXEa8JNmHiHq58K0huMFzy
nHHfKuDucDW/b6sM9tO2q5qQEVXjNC8NwagpB4B+zcEQUfhbCb83U7fZ+BmfInK9d0BODu5YapEC
7oFmOOEeIgRlPcN4i9bKqoySbZ3CtV+W/LAU2wAEWw23jxp0lMGVcU84X2fAIazQ44ReBrXhmFvF
20yPwvXJv7h+YyNth5G6iWVclW431KPk8TwtxQzpvgu9NodhSY06lggUVu6wjI2Cx5ohpHPuiyYa
no828q7+jQgx6aplrTBG+4L7H3IdNC5n3mQx+dhK/kmDlnYWWq3MCzNB/dKWaU2CgGytA1XEPkAm
/eAzPHlSzMOt/GhLbXPQ/QbxEAORVRjO4hazC+vGGs89pX25F80Bw0xfHD0akcuKMIFN9lC4+5+i
AF6n55LVfrtLM05Yz20WFnRdp6/1/UgCdF5X2QZZmY5acXemDtWG79s3Jxl4f0okLIgaaHYOKf9+
rwea6KLeb/VkkP8KDU4nKdQBVvCh6yfuMC0lMkQSAwf690835cFNlIrwAFe0JnetwDvdyoINl+Pi
pxR03LVoyKP3/kFQ9kWGUrk7FRjk0pTvv448mHRNgK7S+iaMLBLyaEWpJJYmWImCypVWkDEDlubj
o4GHcLfuAeZIfmgI+6+6ppDdWd1doJ2BqtS9DbAPm3wHjzXTfP+RV8kFSPaVpdNwtTePGfybGY+L
OqELt/ln1HuPbFIFZ/7QgYSDRcde6DPFp61kvCWZr0nEryVKe3Lei6Hf8dzQ+Uap8XZ145kY2Zfw
27wm1HaOuXyTo2W1ekxTHhiRcOfq1ag4lCxaYX6aPkCj2XzvzuWVacGLpfb7ZhkDu+u3S++uF1m+
yeEF/3L7r7jUbgIQDb5GazTnvllstrjO4tlGytuMvP2/s52ACO7zWjHfbPpGYk5XFmMU6A9u8gnO
fOTAbGg53avtwanw2/3XYX4kRebD9Wcq05HCjjv1/Q+ueuC8X9PerVAlD6IrhCXbAo0pyr3Qleqh
Q9a6zOFt1ZUFyZRTZqqKXwgxpEJ23Xo912ZaeqpmMqlmq8zbAAX/t6/y5nwIb9g1Pmien2aX7MM5
kjmb1Em919Gsx0ARp+wRIDSrhVaHP2r5RYaYbSVxXzN2QYkbv3kHqCrHAwOexGMEi0aH2BejAGLB
QgYuFi4WCLtHBfZv3mFwB1RqMLmDJYkSOv7P926AWnJENwLHybCvA6urBPRoINnMXpSGjkwLX5fX
BmLmX93tCjm0+IcmOR+/cEgOcpP5phfDIhpWgaiwR5/iEr9nIo12iRDDM5phCr8hdRDg0KVjpw4Z
3WvFDFXLUCXYi2I4Ln1ML3OnbmGTjkIEweq5Wj/93QgYkL5plckVuOL+HzvABtpiNiMGrOPgSerN
MghiHGpdm8fmoqN/k76hNAgxGKpYmYHBg5BZQmbwzWfJQDv+jA8XGqRN0F6BQBElkOcrQXGL5wSL
JKaBhXpFub6WRaF+gnWA8hn45LOjreiGFifOh9l7pv9Is1NLFyTPoL4jP4G1Zy4WJIEYqkgwd3Xj
CafHdA7DNsm9CxrkMR0KUlZT6RPhawBpqhVnoZx/QKLtWUiy239FUtscH4sfRdYuabrfYG/0dMkV
8bo9u5DCK03bvmKCqikuM5fNuPlnGntcwQlAHVp5xRCCZeZtc+/qHuAqtiUeMOZ17IzEqRn8RovO
r7fKNzkjbD2FYB0TLqkouWmefb3mfjocl/5cm3f0xRB7W+ZogEUrT6O/7qG3xSpzopnARv7DMo3s
CJ+PmCn5bBzxylTBuK/ncRqilHyMr4LjZ/+LLPuzj9SCYVeJCsPLUE4JKFcx0+VdPU3GlFc52uty
YBnNzhO4+DHZCnj/Kk2AYteNnSNBkspa5BW1g0m2DSS1xNvphsa0IS51FHbbSW5G91yIoR6vTL+F
VUG2UJL435LAKxz6u4nn+NmSV88UNblNXOpJkGgobhWFHka+kehVw/Ab5diVST7egXYAgCU0372M
UbQVPoB3V0Gsp73HDGnA+ejz1VbuSNV1KVz1kJKv12i4/gv81SMX5OllZcjrIN0mSaJnEwkCp6fu
VfSLy42jAtegYIQ7gsDTNcLI+wfRwmR/AFT4STXT9viquJ6V5186i22dqnxjroSFfMHlzo6bGu5F
wiY1ptMcDhrY/ML9qJVNouK52rNFfzyDf09n/6ADwFg6xbmDOA5QjikVtHA6VkU/OUpGdL+RRhvQ
4018N6MemrF2Gv66q1qJahl9Xb94cgNvXFa2QovqDk2xGCb570DTSAPgTQbzco8p+GLCJ6Jc7Y6O
83pERMxN/qfljqOfanW3rWVRhdefC8rkXw2hnjP/i/RlhPTWYbZBzxsAVgRoJP/+2QneqV7wRg/L
a2/tXgYkFcVizew/ktHXi/f8eybai/dNqF+H58Gquu2vW3rU/XbxIKvBLcwI5NGXWtXbEHqLK1WM
0oKaNRGjSm+ddQQro4Tq9wcrvznY45z+VqbFQ2B9Q26eKz9T95YNYIywbL8VzljOdcl4uqrVhyg4
K/ffuyjFYYDuUUoDh2IspoeUpsR+JfzBrDteCgnxVsNuMEUWuX+N6TvOnMwci/+rO0JVJeudLLum
awh1Jg2rVJxnfO9PlIvrRXVSVmcd/UKnkm+j1DVCD344z3Hbkdc1kOCsF28dAu6MY6ye2aq0xx9r
MolJmxjJTw0R/zvAUQLgdFvUFxv+OdzjRu1eEyLOrk662rpfOcXdZR/vNNuZTHv+9h5AbIxEcftJ
R059/iPVV/vujtSOIfrtQD1YhwmAhEt2EL+ddzJRsgvuspU2I4VVR0z6G46hR7wU5b/iSitG6EQu
D0HqImZGAlw5V/t6/lFpECGRQJjYz0Mev5+yc+hltFWL2LTrKAMQGrHL0VEG1t1s2wnUa8Zzv3Bh
cuUV1KKVbWO4B94zyOZj82mLlvt4r7x9WPMKcApaD1t5CraDag43hEHpx59WCuDH+jBIvdJEMlj4
3QiIF6+/+DAjzquBkjIBc2f/LRwhQJm0diJh3t9EUnz9fMBBTXU8SrGLYoymbPbLKVASMQHV9MSv
WZ3rAEFLiHD+yvd9JCQiayh5cFWbjCaiIRRQgL99r74bN8FhT4YD8UfQQ1Xrappd2y9cmdJ5mV/8
1s8fL7tAlOjk1qZ3Of/ByLvMAiw2u+8dZhp11JmgDgTuBrsGFAikyXrk/pXJxDVlKEaPM50MlCYv
tk5CW8D9h43AQtBe16nKD5KokebUld15xu0fwLmrS6DBBJJnqts29sb9JHVMdH2dFTb7CZeC8OcQ
Vj+HWw64xIIafJKcqZY8kleRWP1QRBdW+AMh36uk/uMUlFxSFByjwklMFbY1CHJW6MeXxXBoA+T8
PTEptv0BQmjDB/3N4pPJj6yLzXq+NJfZ28MOI5lBAkX9/aKoVKnSKTz+yXKDpva9JFZsYRAGPabQ
M8U7C7WsuAG3Cja6jyemXnVGpJKVqvmg7SB/8Di4vPTkSrntfNmzMJfYgQF7QM8BQLNvH9gpnKQG
0RPweGZBNsJj+wV10EjSgxCRL8eflJMTBkzTk0ugD3rIeHu4RKGCSomFIr8hz14apNsbuH+6wmv0
v+KgYmTkuQoVP0siD+Fed41C4uFpJ7dvUWrqviDRnL4BtUaXRcH/yeAZwcCVUis3md4kDwg3ExQg
LHtaE/CzmXmLKDEIZooHhki98IsxY1YVEju66hWHPKqKf9S0wobNOUbg/Ec7kHU6EerWB4chHYEM
2gz1WZ6umYkmG26BXoEL8pdyiXtwZWRWgvh/ozz6erd7pFR7ExRQSSjdskq8bnxh5sPrAsJP4Zhp
BV0SPHLxhyfTGTeg560yWCN5GCZzcboWnJQkymJb1cozOfC/mS2lYPkCi4EVsXc9OQbpw9L7JOUz
GqnZQeUUH3Z3GKS/6gBWtI3rmrt46CCl9zleuGWsl4Tla79cfeaqKOiaBtkZuFkYqRMdcxTZSBGS
MJgQbpF19lyiTE3l+yC9aWyFW6DzDxwikQWwatSN3U8RztFX0Rb60H1dzDSUE15CXynOjxhm3v3h
eZaebSrZ+PTHf59aqAxOP6NTafRagtPIee8blYFxxQSRVyfbcUcvNg2rvFJBaV+lphdzo+RTZfJP
7PNyHJX+noeKZYYAg+OAxwsuNF5Ds9yeUACSFvwOtPVyTPduIDOhglLaIoyCjWAWakEbAwUkmtDe
LmNpeP1Iulc224oDqYR8BI4FeTLTmiY4wKkTEARZ7CaRARyrUIwUGho3HD7cQkJxSzRQZeuxMm//
IX86kk/DjiHgoYWCESIGCz/PGIir7OZbD1W2arxssXsJNqAuJ47LN5ksriu5ZfAuzTjUxMsGb8Ya
Y/paO+PligHAn6tJzSdfRdVSwijgx1JukK2P4TdfJL4WU4NEr1ixvKCGVXWsrM/glebbdC0k0Rmj
akCNKPxtT+xhZ4DR5WiC9ZJmtlH9fAvAbQCdFLP9mKtahaoBoyYNkCKYBu3wakmFZn8I95aT+Haa
wOZCtrlliVV52+ihpbu40/quoJChsJX2obOyW9Oh17FPzKoDlpUNxUuvW8wkkAOIFVvw0Pr6IaSz
qoDdbla6ZzafG4AGxY6pKFj3fWLoikIC03lEUQ4awNX+cGfYGqn9MYiHuejx6Ufz4i7jPx0erIQK
pk84OPIhxg3meQyg2YXMVMJA2HdCGz713/GM4mghOhWQBOHSI1YYWO31g3QPWI2WbKqHOwZ2StLz
FoqhMpt3MZ7/gXjGcOlidbp4Xeh9Yp29Xg88NtspQW45os5vag7rT7cOcUJjwMvYRpfUNkgVFIeQ
szgbkNCyEb/aZ4wg/X+dyJc1LiASDyO2nN8Zvc18
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
