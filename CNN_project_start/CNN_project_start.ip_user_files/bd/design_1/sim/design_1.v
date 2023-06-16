//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Jun  9 20:20:07 2023
//Host        : 007-03 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_ps, ADDR_WIDTH 32, ARUSER_WIDTH 1, AWUSER_WIDTH 1, BUSER_WIDTH 0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_1_pl_clk0, DATA_WIDTH 32, FREQ_HZ 149998505, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [48:0]axi_ps_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARBURST" *) input [1:0]axi_ps_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARCACHE" *) input [3:0]axi_ps_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARID" *) input [5:0]axi_ps_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARLEN" *) input [7:0]axi_ps_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARLOCK" *) input axi_ps_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARPROT" *) input [2:0]axi_ps_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARQOS" *) input [3:0]axi_ps_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARREADY" *) output axi_ps_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARSIZE" *) input [2:0]axi_ps_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARUSER" *) input axi_ps_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps ARVALID" *) input axi_ps_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWADDR" *) input [48:0]axi_ps_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWBURST" *) input [1:0]axi_ps_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWCACHE" *) input [3:0]axi_ps_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWID" *) input [5:0]axi_ps_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWLEN" *) input [7:0]axi_ps_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWLOCK" *) input axi_ps_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWPROT" *) input [2:0]axi_ps_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWQOS" *) input [3:0]axi_ps_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWREADY" *) output axi_ps_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWSIZE" *) input [2:0]axi_ps_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWUSER" *) input axi_ps_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps AWVALID" *) input axi_ps_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps BID" *) output [5:0]axi_ps_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps BREADY" *) input axi_ps_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps BRESP" *) output [1:0]axi_ps_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps BVALID" *) output axi_ps_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps RDATA" *) output [31:0]axi_ps_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps RID" *) output [5:0]axi_ps_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps RLAST" *) output axi_ps_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps RREADY" *) input axi_ps_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps RRESP" *) output [1:0]axi_ps_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps RVALID" *) output axi_ps_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps WDATA" *) input [31:0]axi_ps_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps WLAST" *) input axi_ps_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps WREADY" *) output axi_ps_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps WSTRB" *) input [3:0]axi_ps_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_ps WVALID" *) input axi_ps_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK, ASSOCIATED_BUSIF axi_ps, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_1_pl_clk0, FREQ_HZ 149998505, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output pl_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_PS RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_PS, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]rst_ps;

  wire [48:0]S_AXI_HP0_FPD_0_1_ARADDR;
  wire [1:0]S_AXI_HP0_FPD_0_1_ARBURST;
  wire [3:0]S_AXI_HP0_FPD_0_1_ARCACHE;
  wire [5:0]S_AXI_HP0_FPD_0_1_ARID;
  wire [7:0]S_AXI_HP0_FPD_0_1_ARLEN;
  wire S_AXI_HP0_FPD_0_1_ARLOCK;
  wire [2:0]S_AXI_HP0_FPD_0_1_ARPROT;
  wire [3:0]S_AXI_HP0_FPD_0_1_ARQOS;
  wire S_AXI_HP0_FPD_0_1_ARREADY;
  wire [2:0]S_AXI_HP0_FPD_0_1_ARSIZE;
  wire S_AXI_HP0_FPD_0_1_ARUSER;
  wire S_AXI_HP0_FPD_0_1_ARVALID;
  wire [48:0]S_AXI_HP0_FPD_0_1_AWADDR;
  wire [1:0]S_AXI_HP0_FPD_0_1_AWBURST;
  wire [3:0]S_AXI_HP0_FPD_0_1_AWCACHE;
  wire [5:0]S_AXI_HP0_FPD_0_1_AWID;
  wire [7:0]S_AXI_HP0_FPD_0_1_AWLEN;
  wire S_AXI_HP0_FPD_0_1_AWLOCK;
  wire [2:0]S_AXI_HP0_FPD_0_1_AWPROT;
  wire [3:0]S_AXI_HP0_FPD_0_1_AWQOS;
  wire S_AXI_HP0_FPD_0_1_AWREADY;
  wire [2:0]S_AXI_HP0_FPD_0_1_AWSIZE;
  wire S_AXI_HP0_FPD_0_1_AWUSER;
  wire S_AXI_HP0_FPD_0_1_AWVALID;
  wire [5:0]S_AXI_HP0_FPD_0_1_BID;
  wire S_AXI_HP0_FPD_0_1_BREADY;
  wire [1:0]S_AXI_HP0_FPD_0_1_BRESP;
  wire S_AXI_HP0_FPD_0_1_BVALID;
  wire [31:0]S_AXI_HP0_FPD_0_1_RDATA;
  wire [5:0]S_AXI_HP0_FPD_0_1_RID;
  wire S_AXI_HP0_FPD_0_1_RLAST;
  wire S_AXI_HP0_FPD_0_1_RREADY;
  wire [1:0]S_AXI_HP0_FPD_0_1_RRESP;
  wire S_AXI_HP0_FPD_0_1_RVALID;
  wire [31:0]S_AXI_HP0_FPD_0_1_WDATA;
  wire S_AXI_HP0_FPD_0_1_WLAST;
  wire S_AXI_HP0_FPD_0_1_WREADY;
  wire [3:0]S_AXI_HP0_FPD_0_1_WSTRB;
  wire S_AXI_HP0_FPD_0_1_WVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign S_AXI_HP0_FPD_0_1_ARADDR = axi_ps_araddr[48:0];
  assign S_AXI_HP0_FPD_0_1_ARBURST = axi_ps_arburst[1:0];
  assign S_AXI_HP0_FPD_0_1_ARCACHE = axi_ps_arcache[3:0];
  assign S_AXI_HP0_FPD_0_1_ARID = axi_ps_arid[5:0];
  assign S_AXI_HP0_FPD_0_1_ARLEN = axi_ps_arlen[7:0];
  assign S_AXI_HP0_FPD_0_1_ARLOCK = axi_ps_arlock;
  assign S_AXI_HP0_FPD_0_1_ARPROT = axi_ps_arprot[2:0];
  assign S_AXI_HP0_FPD_0_1_ARQOS = axi_ps_arqos[3:0];
  assign S_AXI_HP0_FPD_0_1_ARSIZE = axi_ps_arsize[2:0];
  assign S_AXI_HP0_FPD_0_1_ARUSER = axi_ps_aruser;
  assign S_AXI_HP0_FPD_0_1_ARVALID = axi_ps_arvalid;
  assign S_AXI_HP0_FPD_0_1_AWADDR = axi_ps_awaddr[48:0];
  assign S_AXI_HP0_FPD_0_1_AWBURST = axi_ps_awburst[1:0];
  assign S_AXI_HP0_FPD_0_1_AWCACHE = axi_ps_awcache[3:0];
  assign S_AXI_HP0_FPD_0_1_AWID = axi_ps_awid[5:0];
  assign S_AXI_HP0_FPD_0_1_AWLEN = axi_ps_awlen[7:0];
  assign S_AXI_HP0_FPD_0_1_AWLOCK = axi_ps_awlock;
  assign S_AXI_HP0_FPD_0_1_AWPROT = axi_ps_awprot[2:0];
  assign S_AXI_HP0_FPD_0_1_AWQOS = axi_ps_awqos[3:0];
  assign S_AXI_HP0_FPD_0_1_AWSIZE = axi_ps_awsize[2:0];
  assign S_AXI_HP0_FPD_0_1_AWUSER = axi_ps_awuser;
  assign S_AXI_HP0_FPD_0_1_AWVALID = axi_ps_awvalid;
  assign S_AXI_HP0_FPD_0_1_BREADY = axi_ps_bready;
  assign S_AXI_HP0_FPD_0_1_RREADY = axi_ps_rready;
  assign S_AXI_HP0_FPD_0_1_WDATA = axi_ps_wdata[31:0];
  assign S_AXI_HP0_FPD_0_1_WLAST = axi_ps_wlast;
  assign S_AXI_HP0_FPD_0_1_WSTRB = axi_ps_wstrb[3:0];
  assign S_AXI_HP0_FPD_0_1_WVALID = axi_ps_wvalid;
  assign axi_ps_arready = S_AXI_HP0_FPD_0_1_ARREADY;
  assign axi_ps_awready = S_AXI_HP0_FPD_0_1_AWREADY;
  assign axi_ps_bid[5:0] = S_AXI_HP0_FPD_0_1_BID;
  assign axi_ps_bresp[1:0] = S_AXI_HP0_FPD_0_1_BRESP;
  assign axi_ps_bvalid = S_AXI_HP0_FPD_0_1_BVALID;
  assign axi_ps_rdata[31:0] = S_AXI_HP0_FPD_0_1_RDATA;
  assign axi_ps_rid[5:0] = S_AXI_HP0_FPD_0_1_RID;
  assign axi_ps_rlast = S_AXI_HP0_FPD_0_1_RLAST;
  assign axi_ps_rresp[1:0] = S_AXI_HP0_FPD_0_1_RRESP;
  assign axi_ps_rvalid = S_AXI_HP0_FPD_0_1_RVALID;
  assign axi_ps_wready = S_AXI_HP0_FPD_0_1_WREADY;
  assign pl_clk = zynq_ultra_ps_e_0_pl_clk0;
  assign rst_ps[0] = proc_sys_reset_0_peripheral_aresetn;
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_zynq_ultra_ps_e_0_1 zynq_ultra_ps_e_0
       (.pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp2_araddr(S_AXI_HP0_FPD_0_1_ARADDR),
        .saxigp2_arburst(S_AXI_HP0_FPD_0_1_ARBURST),
        .saxigp2_arcache(S_AXI_HP0_FPD_0_1_ARCACHE),
        .saxigp2_arid(S_AXI_HP0_FPD_0_1_ARID),
        .saxigp2_arlen(S_AXI_HP0_FPD_0_1_ARLEN),
        .saxigp2_arlock(S_AXI_HP0_FPD_0_1_ARLOCK),
        .saxigp2_arprot(S_AXI_HP0_FPD_0_1_ARPROT),
        .saxigp2_arqos(S_AXI_HP0_FPD_0_1_ARQOS),
        .saxigp2_arready(S_AXI_HP0_FPD_0_1_ARREADY),
        .saxigp2_arsize(S_AXI_HP0_FPD_0_1_ARSIZE),
        .saxigp2_aruser(S_AXI_HP0_FPD_0_1_ARUSER),
        .saxigp2_arvalid(S_AXI_HP0_FPD_0_1_ARVALID),
        .saxigp2_awaddr(S_AXI_HP0_FPD_0_1_AWADDR),
        .saxigp2_awburst(S_AXI_HP0_FPD_0_1_AWBURST),
        .saxigp2_awcache(S_AXI_HP0_FPD_0_1_AWCACHE),
        .saxigp2_awid(S_AXI_HP0_FPD_0_1_AWID),
        .saxigp2_awlen(S_AXI_HP0_FPD_0_1_AWLEN),
        .saxigp2_awlock(S_AXI_HP0_FPD_0_1_AWLOCK),
        .saxigp2_awprot(S_AXI_HP0_FPD_0_1_AWPROT),
        .saxigp2_awqos(S_AXI_HP0_FPD_0_1_AWQOS),
        .saxigp2_awready(S_AXI_HP0_FPD_0_1_AWREADY),
        .saxigp2_awsize(S_AXI_HP0_FPD_0_1_AWSIZE),
        .saxigp2_awuser(S_AXI_HP0_FPD_0_1_AWUSER),
        .saxigp2_awvalid(S_AXI_HP0_FPD_0_1_AWVALID),
        .saxigp2_bid(S_AXI_HP0_FPD_0_1_BID),
        .saxigp2_bready(S_AXI_HP0_FPD_0_1_BREADY),
        .saxigp2_bresp(S_AXI_HP0_FPD_0_1_BRESP),
        .saxigp2_bvalid(S_AXI_HP0_FPD_0_1_BVALID),
        .saxigp2_rdata(S_AXI_HP0_FPD_0_1_RDATA),
        .saxigp2_rid(S_AXI_HP0_FPD_0_1_RID),
        .saxigp2_rlast(S_AXI_HP0_FPD_0_1_RLAST),
        .saxigp2_rready(S_AXI_HP0_FPD_0_1_RREADY),
        .saxigp2_rresp(S_AXI_HP0_FPD_0_1_RRESP),
        .saxigp2_rvalid(S_AXI_HP0_FPD_0_1_RVALID),
        .saxigp2_wdata(S_AXI_HP0_FPD_0_1_WDATA),
        .saxigp2_wlast(S_AXI_HP0_FPD_0_1_WLAST),
        .saxigp2_wready(S_AXI_HP0_FPD_0_1_WREADY),
        .saxigp2_wstrb(S_AXI_HP0_FPD_0_1_WSTRB),
        .saxigp2_wvalid(S_AXI_HP0_FPD_0_1_WVALID),
        .saxihp0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
