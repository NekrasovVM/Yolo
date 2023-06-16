//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Jun 11 20:31:00 2023
//Host        : 007-03 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (axi_ps_araddr,
    axi_ps_arburst,
    axi_ps_arcache,
    axi_ps_arid,
    axi_ps_arlen,
    axi_ps_arlock,
    axi_ps_arprot,
    axi_ps_arqos,
    axi_ps_arready,
    axi_ps_arsize,
    axi_ps_aruser,
    axi_ps_arvalid,
    axi_ps_awaddr,
    axi_ps_awburst,
    axi_ps_awcache,
    axi_ps_awid,
    axi_ps_awlen,
    axi_ps_awlock,
    axi_ps_awprot,
    axi_ps_awqos,
    axi_ps_awready,
    axi_ps_awsize,
    axi_ps_awuser,
    axi_ps_awvalid,
    axi_ps_bid,
    axi_ps_bready,
    axi_ps_bresp,
    axi_ps_bvalid,
    axi_ps_rdata,
    axi_ps_rid,
    axi_ps_rlast,
    axi_ps_rready,
    axi_ps_rresp,
    axi_ps_rvalid,
    axi_ps_wdata,
    axi_ps_wlast,
    axi_ps_wready,
    axi_ps_wstrb,
    axi_ps_wvalid,
    pl_clk,
    rst_ps);
  input [48:0]axi_ps_araddr;
  input [1:0]axi_ps_arburst;
  input [3:0]axi_ps_arcache;
  input [5:0]axi_ps_arid;
  input [7:0]axi_ps_arlen;
  input axi_ps_arlock;
  input [2:0]axi_ps_arprot;
  input [3:0]axi_ps_arqos;
  output axi_ps_arready;
  input [2:0]axi_ps_arsize;
  input axi_ps_aruser;
  input axi_ps_arvalid;
  input [48:0]axi_ps_awaddr;
  input [1:0]axi_ps_awburst;
  input [3:0]axi_ps_awcache;
  input [5:0]axi_ps_awid;
  input [7:0]axi_ps_awlen;
  input axi_ps_awlock;
  input [2:0]axi_ps_awprot;
  input [3:0]axi_ps_awqos;
  output axi_ps_awready;
  input [2:0]axi_ps_awsize;
  input axi_ps_awuser;
  input axi_ps_awvalid;
  output [5:0]axi_ps_bid;
  input axi_ps_bready;
  output [1:0]axi_ps_bresp;
  output axi_ps_bvalid;
  output [31:0]axi_ps_rdata;
  output [5:0]axi_ps_rid;
  output axi_ps_rlast;
  input axi_ps_rready;
  output [1:0]axi_ps_rresp;
  output axi_ps_rvalid;
  input [31:0]axi_ps_wdata;
  input axi_ps_wlast;
  output axi_ps_wready;
  input [3:0]axi_ps_wstrb;
  input axi_ps_wvalid;
  output pl_clk;
  output [0:0]rst_ps;

  wire [48:0]axi_ps_araddr;
  wire [1:0]axi_ps_arburst;
  wire [3:0]axi_ps_arcache;
  wire [5:0]axi_ps_arid;
  wire [7:0]axi_ps_arlen;
  wire axi_ps_arlock;
  wire [2:0]axi_ps_arprot;
  wire [3:0]axi_ps_arqos;
  wire axi_ps_arready;
  wire [2:0]axi_ps_arsize;
  wire axi_ps_aruser;
  wire axi_ps_arvalid;
  wire [48:0]axi_ps_awaddr;
  wire [1:0]axi_ps_awburst;
  wire [3:0]axi_ps_awcache;
  wire [5:0]axi_ps_awid;
  wire [7:0]axi_ps_awlen;
  wire axi_ps_awlock;
  wire [2:0]axi_ps_awprot;
  wire [3:0]axi_ps_awqos;
  wire axi_ps_awready;
  wire [2:0]axi_ps_awsize;
  wire axi_ps_awuser;
  wire axi_ps_awvalid;
  wire [5:0]axi_ps_bid;
  wire axi_ps_bready;
  wire [1:0]axi_ps_bresp;
  wire axi_ps_bvalid;
  wire [31:0]axi_ps_rdata;
  wire [5:0]axi_ps_rid;
  wire axi_ps_rlast;
  wire axi_ps_rready;
  wire [1:0]axi_ps_rresp;
  wire axi_ps_rvalid;
  wire [31:0]axi_ps_wdata;
  wire axi_ps_wlast;
  wire axi_ps_wready;
  wire [3:0]axi_ps_wstrb;
  wire axi_ps_wvalid;
  wire pl_clk;
  wire [0:0]rst_ps;

  design_1 design_1_i
       (.axi_ps_araddr(axi_ps_araddr),
        .axi_ps_arburst(axi_ps_arburst),
        .axi_ps_arcache(axi_ps_arcache),
        .axi_ps_arid(axi_ps_arid),
        .axi_ps_arlen(axi_ps_arlen),
        .axi_ps_arlock(axi_ps_arlock),
        .axi_ps_arprot(axi_ps_arprot),
        .axi_ps_arqos(axi_ps_arqos),
        .axi_ps_arready(axi_ps_arready),
        .axi_ps_arsize(axi_ps_arsize),
        .axi_ps_aruser(axi_ps_aruser),
        .axi_ps_arvalid(axi_ps_arvalid),
        .axi_ps_awaddr(axi_ps_awaddr),
        .axi_ps_awburst(axi_ps_awburst),
        .axi_ps_awcache(axi_ps_awcache),
        .axi_ps_awid(axi_ps_awid),
        .axi_ps_awlen(axi_ps_awlen),
        .axi_ps_awlock(axi_ps_awlock),
        .axi_ps_awprot(axi_ps_awprot),
        .axi_ps_awqos(axi_ps_awqos),
        .axi_ps_awready(axi_ps_awready),
        .axi_ps_awsize(axi_ps_awsize),
        .axi_ps_awuser(axi_ps_awuser),
        .axi_ps_awvalid(axi_ps_awvalid),
        .axi_ps_bid(axi_ps_bid),
        .axi_ps_bready(axi_ps_bready),
        .axi_ps_bresp(axi_ps_bresp),
        .axi_ps_bvalid(axi_ps_bvalid),
        .axi_ps_rdata(axi_ps_rdata),
        .axi_ps_rid(axi_ps_rid),
        .axi_ps_rlast(axi_ps_rlast),
        .axi_ps_rready(axi_ps_rready),
        .axi_ps_rresp(axi_ps_rresp),
        .axi_ps_rvalid(axi_ps_rvalid),
        .axi_ps_wdata(axi_ps_wdata),
        .axi_ps_wlast(axi_ps_wlast),
        .axi_ps_wready(axi_ps_wready),
        .axi_ps_wstrb(axi_ps_wstrb),
        .axi_ps_wvalid(axi_ps_wvalid),
        .pl_clk(pl_clk),
        .rst_ps(rst_ps));
endmodule
