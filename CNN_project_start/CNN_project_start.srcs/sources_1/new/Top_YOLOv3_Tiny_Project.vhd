library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity Top_YOLOv3_Tiny_Project is
    Port (  key_start   : in STD_LOGIC;
            key_reset   : in STD_LOGIC;
            key_rezerv  : in STD_LOGIC_VECTOR(1 downto 0);
--            clk         : in STD_LOGIC;
            led         : out STD_LOGIC_VECTOR(3 downto 0));
end Top_YOLOv3_Tiny_Project;

architecture Behavioral of Top_YOLOv3_Tiny_Project is

--ps port
signal axi_ps_araddr_pl     : std_logic_vector(31 downto 0);
signal axi_ps_arburst_pl    : std_logic_vector(1 downto 0);
signal axi_ps_arcache_pl    : std_logic_vector(3 downto 0);
signal axi_ps_arid_pl       : std_logic_vector(0 downto 0);
signal axi_ps_arlen_pl      : std_logic_vector(7 downto 0);
signal axi_ps_arlock_pl     : std_logic_vector(1 downto 0);
signal axi_ps_arprot_pl     : std_logic_vector(2 downto 0);
signal axi_ps_arqos_pl_pl   : std_logic_vector(3 downto 0);
signal axi_ps_arready_pl    : std_logic;
signal axi_ps_arsize_pl     : std_logic_vector(2 downto 0);
signal axi_ps_aruser_pl     : std_logic;
signal axi_ps_arvalid_pl    : std_logic;
signal axi_ps_awaddr_pl     : std_logic_vector(31 downto 0);
signal axi_ps_awburst_pl    : std_logic_vector(1 downto 0);
signal axi_ps_awcache_pl    : std_logic_vector(3 downto 0);
signal axi_ps_awid_pl       : std_logic_vector(0 downto 0);
signal axi_ps_awlen_pl      : std_logic_vector(7 downto 0);
signal axi_ps_awlock_pl     : std_logic;
signal axi_ps_awprot_pl     : std_logic_vector(2 downto 0);
signal axi_ps_awqos_pl      : std_logic_vector(3 downto 0);
signal axi_ps_awready_pl    : std_logic;
signal axi_ps_awsize_pl     : std_logic_vector(2 downto 0);
signal axi_ps_awuser_pl     : std_logic;
signal axi_ps_awvalid_pl    : std_logic;
signal axi_ps_bid_pl        : std_logic_vector(0 downto 0);
signal axi_ps_bready_pl     : std_logic;
signal axi_ps_bresp_pl      : std_logic_vector(1 downto 0);
signal axi_ps_buser_pl      : std_logic_vector(0 downto 0);
signal axi_ps_bvalid_pl     : std_logic;
signal axi_ps_rdata_pl      : std_logic_vector(31 downto 0);
signal axi_ps_rid_pl        : std_logic_vector(0 downto 0);
signal axi_ps_rlast_pl      : std_logic;
signal axi_ps_ruser_pl      : std_logic_vector(0 downto 0);
signal axi_ps_rready_pl     : std_logic;
signal axi_ps_rresp_pl      : std_logic_vector(1 downto 0);
signal axi_ps_rvalid_pl     : std_logic;
signal axi_ps_wdata_pl      : std_logic_vector(31 downto 0);
signal axi_ps_wlast_pl      : std_logic;
signal axi_ps_wready        : std_logic;
signal axi_ps_wstrb_pl      : std_logic_vector(3 downto 0);
signal axi_ps_wvalid_pl     : std_logic;

signal clk                  : std_logic;
signal rst                  : std_logic;
signal inverted_rst         : std_logic;

--debug signals
signal wr_burst_data_req    : std_logic;
signal wr_burst_finish      : std_logic;
signal rd_burst_finish      : std_logic;
signal wr_burst_req         : std_logic;
signal rd_burst_req         : std_logic;
signal rd_burst_req_rg         : std_logic;
signal rd_wr_burst_len      : std_logic_vector(31 downto 0);
signal rd_burst_addr        : std_logic_vector(31 downto 0);
signal wr_burst_addr        : std_logic_vector(31 downto 0);
signal rd_burst_data_valid  : std_logic;
signal rd_burst_data        : std_logic_vector(31 downto 0);
signal wr_burst_data        : std_logic_vector(31 downto 0);
    --vectors
signal wr_burst_data_req_v  : std_logic_vector(0 downto 0);
signal wr_burst_finish_v    : std_logic_vector(0 downto 0);
signal rd_burst_finish_v    : std_logic_vector(0 downto 0);
signal wr_burst_req_v       : std_logic_vector(0 downto 0);
signal rd_burst_req_v       : std_logic_vector(0 downto 0);
signal rd_burst_data_valid_v: std_logic_vector(0 downto 0);


--extended signals to ps
signal axi_ps_araddr_pl_ext : std_logic_vector(48 downto 0);
signal axi_ps_arburst_pl_ext: std_logic_vector(5 downto 0);  
signal axi_ps_arid_pl_ext   : std_logic_vector(5 downto 0);

signal axi_ps_awaddr_pl_ext : std_logic_vector(48 downto 0);
signal axi_ps_awid_pl_ext   : std_logic_vector(5 downto 0);

signal axi_ps_bid_pl_ext    : std_logic_vector(5 downto 0);

signal axi_ps_rid_pl_ext    : std_logic_vector(5 downto 0);

--cutted signals to ps     
signal axi_ps_arlock_pl_cut : std_logic;

--test signals
signal state                : std_logic_vector(2 downto 0) := (others => '0');
signal key_start_rg         : std_logic := '0';
signal start_strob          : std_logic := '0';


attribute MARK_DEBUG : string;
attribute MARK_DEBUG of wr_burst_data_req, wr_burst_finish, rd_burst_finish, wr_burst_req, rd_burst_req, rd_wr_burst_len : signal is "TRUE";
attribute MARK_DEBUG of rd_burst_addr, wr_burst_addr, rd_burst_data_valid, rd_burst_data, wr_burst_data : signal is "TRUE";

attribute MARK_DEBUG of key_start_rg, state : signal is "TRUE";

------------------------------------- PS <-> AXI Interconnect ----------------------------------------
--signal M_AXI_ARADDR       : STD_LOGIC_VECTOR(48 downto 0) := (others=>'0');
--signal M_AXI_ARADDR_1     : STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');
--signal M_AXI_ARBURST      : STD_LOGIC_VECTOR(1 downto 0) := (others=>'0');
--signal M_AXI_ARCACHE      : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
--signal M_AXI_ARID         : STD_LOGIC_VECTOR(5 downto 0) := (others=>'0');
--signal M_AXI_ARLEN        : STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
--signal M_AXI_ARLOCK       : STD_LOGIC_VECTOR(1 downto 0) := (others=>'0');
--signal M_AXI_ARPROT       : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');
--signal M_AXI_ARQOS        : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
--signal M_AXI_ARREADY      : STD_LOGIC := '0';
--signal M_AXI_ARSIZE       : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');
--signal M_AXI_ARVALID      : STD_LOGIC := '0';
--signal M_AXI_AWADDR       : STD_LOGIC_VECTOR(48 downto 0) := (others=>'0');
--signal M_AXI_AWADDR_1     : STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');
--signal M_AXI_AWBURST      : STD_LOGIC_VECTOR(1 downto 0) := (others=>'0');
--signal M_AXI_AWCACHE      : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
--signal M_AXI_AWID         : STD_LOGIC_VECTOR(5 downto 0) := (others=>'0');
--signal M_AXI_AWLEN        : STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
--signal M_AXI_AWLOCK       : STD_LOGIC := '0';
--signal M_AXI_AWPROT       : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');
--signal M_AXI_AWQOS        : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
--signal M_AXI_AWREADY      : STD_LOGIC := '0';
--signal M_AXI_AWSIZE       : STD_LOGIC_VECTOR(2 downto 0) := (others=>'0');
--signal M_AXI_AWVALID      : STD_LOGIC := '0';
--signal M_AXI_BID          : STD_LOGIC_VECTOR(5 downto 0) := (others=>'0');
--signal M_AXI_BREADY       : STD_LOGIC := '0';
--signal M_AXI_BRESP        : STD_LOGIC_VECTOR(1 downto 0) := (others=>'0');
--signal M_AXI_BVALID       : STD_LOGIC := '0';
--signal M_AXI_RDATA        : STD_LOGIC_VECTOR(63 downto 0) := (others=>'0');
--signal M_AXI_RID          : STD_LOGIC_VECTOR(5 downto 0) := (others=>'0');
--signal M_AXI_RLAST        : STD_LOGIC := '0';
--signal M_AXI_RREADY       : STD_LOGIC := '0';
--signal M_AXI_RRESP        : STD_LOGIC_VECTOR(1 downto 0) := (others=>'0');
--signal M_AXI_RVALID       : STD_LOGIC := '0';
--signal M_AXI_WDATA        : STD_LOGIC_VECTOR(63 downto 0) := (others=>'0');
--signal M_AXI_WLAST        : STD_LOGIC := '0';
--signal M_AXI_WREADY       : STD_LOGIC := '0';
--signal M_AXI_WSTRB        : STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
--signal M_AXI_WVALID       : STD_LOGIC := '0';
--signal M_AXI_ACLK         : STD_LOGIC := '0';

------------------------------------- AXI <-> YOLO Interconnect ----------------------------------------
--signal wr_burst_req       : STD_LOGIC := '0';
--signal wr_burst_addr      : STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');
--signal wr_burst_data_req  : STD_LOGIC := '0';
--signal wr_burst_data      : STD_LOGIC_VECTOR(63 downto 0) := (others=>'0');
--signal wr_burst_finish    : STD_LOGIC := '0';

--signal rd_burst_req       : STD_LOGIC := '0';
--signal rd_burst_addr      : STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');
--signal rd_burst_finish    : STD_LOGIC := '0';      

--signal rd_wr_burst_len    : STD_LOGIC_VECTOR(31 downto 0) := (others=>'0');

--signal rd_burst_addr_shl3   : STD_LOGIC_VECTOR(31 downto 0);
--signal wr_burst_addr_shl3   : STD_LOGIC_VECTOR(31 downto 0);
--signal rd_wr_burst_len_shl3 : STD_LOGIC_VECTOR(31 downto 0);

-------------------------------------------------------------------------------------------
--signal data_to_yolo       : STD_LOGIC_VECTOR(63 downto 0) := (others=>'0');
--signal data_to_yolo_valid : STD_LOGIC := '0';

--signal data_to_ddr        : STD_LOGIC_VECTOR(63 downto 0) := (others=>'0');
--signal data_to_ddr_valid  : STD_LOGIC := '0';  

-------------------------------- CTRL_mashine <-> YOLO Interconnect ------------------------------------
--signal weight_en_to_yolo  : STD_LOGIC := '0';
--signal Npixel_to_YOLO     : STD_LOGIC_VECTOR(15 downto 0);
--signal Nchannels_to_YOLO  : STD_LOGIC_VECTOR(15 downto 0);
--signal Nfilter_to_YOLO    : STD_LOGIC_VECTOR(15 downto 0);
--signal maxpool_en_to_YOLO : STD_LOGIC; 
--signal reset_Npixel       : STD_LOGIC; 
--signal reset_Nfilter      : STD_LOGIC; 
--signal rd_wr_en           : STD_LOGIC; 

--------------------------------------- Global Control Signals -----------------------------------------
--signal global_reset       : STD_LOGIC := '0';
--signal not_global_reset   : STD_LOGIC := '0';
--signal key_start_rg       : STD_LOGIC := '0';  

--signal end_frame          : std_logic;
--signal end_work           : std_logic;
--signal one_const          : STD_LOGIC := '1'; 
--signal nul_const          : STD_LOGIC := '0'; 

--attribute MARK_DEBUG : string;
--attribute MARK_DEBUG of data_to_yolo, data_to_yolo_valid : signal is "TRUE";
--attribute MARK_DEBUG of reset_Npixel, weight_en_to_yolo, maxpool_en_to_YOLO, rd_wr_en, Npixel_to_YOLO, data_to_ddr, data_to_ddr_valid : signal is "TRUE";

--attribute MARK_DEBUG of global_reset, key_start_rg, end_frame, end_work : signal is "TRUE";

--attribute MARK_DEBUG of rd_burst_addr, wr_burst_addr, rd_wr_burst_len, rd_burst_req, wr_burst_data, wr_burst_req : signal is "TRUE";
--attribute MARK_DEBUG of rd_burst_finish, wr_burst_finish, wr_burst_data_req : signal is "TRUE";

--begin

--led(0) <= not key_start when rising_edge(clk); -- output indikation START
--led(1) <= not key_reset when rising_edge(clk); -- output indikation RESET
--led(2) <= not end_frame when rising_edge(clk); -- output indikation end_frame
--led(3) <= not end_work  when rising_edge(clk); -- output indikation end_work

--key_start_rg     <= key_start when rising_edge(clk);
--global_reset     <= key_reset when rising_edge(clk);
--not_global_reset <= not global_reset;






--core_YOLO_inst : entity work.core_YOLO(Behavioral) ------------------------ YOLO !!! --------------------------------
--port map(
--            from_DDR              => data_to_yolo(31 downto 0),
--            m_in_data             => data_to_yolo_valid,
            
--            reset                 => global_reset,
--            clk                   => clk,
            
--            reset_Npixel          => reset_Npixel,
--            reset_Nfilter         => reset_Nfilter,
            
--            weight_en             => weight_en_to_yolo,
--            mux_maxpool_conv_ctrl => maxpool_en_to_YOLO,
--            rd_wr_en              => rd_wr_en,
--            string_length         => Npixel_to_YOLO,

--            to_DDR                => data_to_ddr(31 downto 0),
--            m_out_data            => data_to_ddr_valid
--);








--CTRL_mashine_inst : entity work.CTRL_machine(Behavioral)
--generic map (
--            Nframe_const        => 1,  -- in model project compute only one picture   
--            Nlayer_const        => 13, -- YOLOv3_Tiny consists of 13 convolutional layers
--            addr_bus_width      => 32)
--port map (
--         -------------- PORT TO AXI --------------
--         data_to_ddr                     => data_to_ddr,
--         data_to_ddr_valid               => data_to_ddr_valid,
         
--         rd_addr_out                     => rd_burst_addr,
--         wr_addr_out                     => wr_burst_addr,
--         rd_wr_len_out                   => rd_wr_burst_len,
--         rd_burst_req                    => rd_burst_req,
--         wr_burst_data                   => wr_burst_data,
--         wr_burst_req                    => wr_burst_req,
         
--         -------------- PORT FROM AXI -------------
         
--         rd_burst_finish                 => rd_burst_finish,
--         wr_burst_finish                 => wr_burst_finish,
--         wr_burst_data_req               => wr_burst_data_req,
         
--         -------------- control PORT --------------
         
--         start_machine                   => key_start_rg,
--         clk                             => clk,
--         reset_global                    => global_reset,
--         end_frame_out                   => end_frame,
--         end_work_out                    => end_work,

--         -------------- PORT TO YOLO --------------

--         weight_en_out                   => weight_en_to_yolo,
--         reset_Npixel_out                => reset_Npixel,
--         rd_wr_en_out                    => rd_wr_en,
--         ROM_Npixel_to_YOLO              => Npixel_to_YOLO,                
--         ROM_Nchannels_to_YOLO           => Nchannels_to_YOLO,  
--         ROM_Nfilter_to_YOLO             => Nfilter_to_YOLO,  
--         maxpool_en_to_YOLO              => maxpool_en_to_YOLO
--         );

--rd_burst_addr_shl3   <= rd_burst_addr(28 downto 0) & "000";
--wr_burst_addr_shl3   <= wr_burst_addr(28 downto 0) & "000";
--rd_wr_burst_len_shl3 <= rd_wr_burst_len(28 downto 0) & "000";

--M_AXI_ARADDR(31 downto 0) <= M_AXI_ARADDR_1;
--M_AXI_AWADDR(31 downto 0) <= M_AXI_AWADDR_1;





--ps_block_inst : entity work.design_1_wrapper(Behavioral) 
--port map (
------------- PS <-> AXI Interconnect ------------
--	S_AXI_HP0_araddr       => M_AXI_ARADDR         ,
--	S_AXI_HP0_arburst      => M_AXI_ARBURST        ,
--	S_AXI_HP0_arcache      => M_AXI_ARCACHE        ,
--	S_AXI_HP0_arid         => M_AXI_ARID           ,
--	S_AXI_HP0_arlen        => M_AXI_ARLEN          ,
--	S_AXI_HP0_arlock       => M_AXI_ARLOCK(0)      ,
--	S_AXI_HP0_arprot       => M_AXI_ARPROT         ,
--	S_AXI_HP0_arqos        => M_AXI_ARQOS          ,
--	S_AXI_HP0_arready      => M_AXI_ARREADY        ,
--	S_AXI_HP0_arsize       => M_AXI_ARSIZE         ,
--	S_AXI_HP0_arvalid      => M_AXI_ARVALID        ,
	
--	S_AXI_HP0_rdata        => M_AXI_RDATA          ,
--	S_AXI_HP0_rid          => M_AXI_RID            ,
--	S_AXI_HP0_rlast        => M_AXI_RLAST          ,
--	S_AXI_HP0_rready       => M_AXI_RREADY         ,
--	S_AXI_HP0_rresp        => M_AXI_RRESP          ,
--	S_AXI_HP0_rvalid       => M_AXI_RVALID         ,	
		
--	S_AXI_HP0_awaddr       => M_AXI_AWADDR         ,
--	S_AXI_HP0_awburst      => M_AXI_AWBURST        ,
--	S_AXI_HP0_awcache      => M_AXI_AWCACHE        ,
--	S_AXI_HP0_awid         => M_AXI_AWID           ,
--	S_AXI_HP0_awlen        => M_AXI_AWLEN          ,
--	S_AXI_HP0_awlock       => M_AXI_AWLOCK         ,
--	S_AXI_HP0_awprot       => M_AXI_AWPROT         ,
--	S_AXI_HP0_awqos        => M_AXI_AWQOS          ,
--	S_AXI_HP0_awready      => M_AXI_AWREADY        ,
--	S_AXI_HP0_awsize       => M_AXI_AWSIZE         ,
--	S_AXI_HP0_awvalid      => M_AXI_AWVALID        ,
	
--	S_AXI_HP0_bid          => M_AXI_BID            ,
--	S_AXI_HP0_bready       => M_AXI_BREADY         ,
--	S_AXI_HP0_bresp        => M_AXI_BRESP          ,
--	S_AXI_HP0_bvalid       => M_AXI_BVALID         ,
	
--	S_AXI_HP0_wdata        => M_AXI_WDATA          ,
--	S_AXI_HP0_wlast        => M_AXI_WLAST          ,
--	S_AXI_HP0_wready       => M_AXI_WREADY         ,
--	S_AXI_HP0_wstrb        => M_AXI_WSTRB          ,
--	S_AXI_HP0_wvalid       => M_AXI_WVALID         ,
	
--------------- control part ------------
--	S_AXI_HP0_aruser       => nul_const            ,
--	S_AXI_HP0_awuser       => nul_const            ,
	
--	axim_rst_n(0)          => global_reset         ,
--	pl_clk0                => M_AXI_ACLK           ,
--	axi_hp_clk             => M_AXI_ACLK
--);

--component ila_0
--    port(
--        clk     :   in std_logic;
--        probe0  :   in std_logic_vector(31 downto 0);
--        probe1  :   in std_logic
--    );
--end component;

--component ila_0
--port (       
--    clk     : in std_logic;
--    probe0  : in std_logic_vector (0 downto 0);
--    probe1  : in std_logic_vector (0 downto 0);
--    probe2  : in std_logic_vector (0 downto 0);
--    probe3  : in std_logic_vector (0 downto 0);
--    probe4  : in std_logic_vector (0 downto 0);
--    probe5  : in std_logic_vector (31 downto 0);
--    probe6  : in std_logic_vector (31 downto 0);
--    probe7  : in std_logic_vector (31 downto 0);
--    probe8  : in std_logic_vector (31 downto 0);
--    probe9  : in std_logic_vector (0 downto 0);
--    probe10 : in std_logic_vector (31 downto 0);
--    probe11 : in std_logic_vector (31 downto 0));  
--end component;



begin

--    ila : ila_0
--    port map (
--        clk     => clk,
--        probe0  => wr_burst_data_req_v,
--        probe1  => wr_burst_finish_v,
--        probe2  => rd_burst_finish_v,
--        probe3  => rd_burst_req_v,
--        probe4  => wr_burst_req_v,
--        probe5  => rd_wr_burst_len,
--        probe6  => rd_wr_burst_len,
--        probe7  => rd_burst_addr,
--        probe8  => wr_burst_addr,
--        probe9  => rd_burst_data_valid_v,
--        probe10 => rd_burst_data,
--        probe11 => wr_burst_data     
--    );
    
    --vectorization
    wr_burst_data_req_v(0)  <= wr_burst_data_req;  
    wr_burst_finish_v(0)    <= wr_burst_finish;    
    rd_burst_finish_v(0)    <= rd_burst_finish;    
    wr_burst_req_v(0)       <= wr_burst_req;       
    rd_burst_req_v(0)       <= rd_burst_req;       
    rd_burst_data_valid_v(0)<= rd_burst_data_valid;
    
        
    --signal extention
    axi_ps_araddr_pl_ext    <= "00000000000000000" & axi_ps_araddr_pl;
    axi_ps_arburst_pl_ext   <= "0000" & axi_ps_arburst_pl;
    axi_ps_arid_pl_ext      <= "00000" & axi_ps_arid_pl;
    
    axi_ps_awaddr_pl_ext    <= "00000000000000000" & axi_ps_awaddr_pl;
    axi_ps_awid_pl_ext      <= "00000" & axi_ps_arid_pl;
    
    axi_ps_bid_pl_ext       <= "00000" & axi_ps_bid_pl;
    
    axi_ps_rid_pl_ext       <= "00000" & axi_ps_rid_pl;
    
    --signal cutting
    axi_ps_arlock_pl_cut    <= axi_ps_arlock_pl(0);
    
    inverted_rst            <= not rst;

    axi_master_inst : entity work.aq_axi_master(Behavioral)
    port map(
    ----------- PS <-> AXI Interconnect ------------
        M_AXI_ARADDR           => axi_ps_araddr_pl       ,
        M_AXI_ARBURST          => axi_ps_arburst_pl      ,
        M_AXI_ARCACHE          => axi_ps_arcache_pl      ,
        M_AXI_ARID             => axi_ps_arid_pl         ,
        M_AXI_ARLEN            => axi_ps_arlen_pl        ,
        M_AXI_ARLOCK           => axi_ps_arlock_pl       ,
        M_AXI_ARPROT           => axi_ps_arprot_pl       ,
        M_AXI_ARQOS            => axi_ps_arqos_pl_pl     ,
        M_AXI_ARREADY          => axi_ps_arready_pl      ,
        M_AXI_ARSIZE           => axi_ps_arsize_pl       ,
        M_AXI_ARVALID          => axi_ps_arvalid_pl      ,
                                  
        M_AXI_RDATA            => axi_ps_rdata_pl        ,
        M_AXI_RID              => axi_ps_rid_pl          ,
        M_AXI_RLAST            => axi_ps_rlast_pl        ,
        M_AXI_RUSER            => axi_ps_ruser_pl        ,
        M_AXI_RREADY           => axi_ps_rready_pl       ,
        M_AXI_RRESP            => axi_ps_rresp_pl        ,
        M_AXI_BUSER            => axi_ps_buser_pl        ,
        M_AXI_RVALID           => axi_ps_rvalid_pl       ,
    
        M_AXI_AWADDR           => axi_ps_awaddr_pl       ,
        M_AXI_AWBURST          => axi_ps_awburst_pl      ,
        M_AXI_AWCACHE          => axi_ps_awcache_pl      ,
        M_AXI_AWID             => axi_ps_awid_pl         ,
        M_AXI_AWLEN            => axi_ps_awlen_pl        ,
        M_AXI_AWLOCK           => axi_ps_awlock_pl       ,
        M_AXI_AWPROT           => axi_ps_awprot_pl       ,
        M_AXI_AWQOS            => axi_ps_awqos_pl        ,
        M_AXI_AWREADY          => axi_ps_awready_pl      ,
        M_AXI_AWSIZE           => axi_ps_awsize_pl       ,
        M_AXI_AWVALID          => axi_ps_awvalid_pl      ,
                                  
        M_AXI_BID              => axi_ps_bid_pl          ,
        M_AXI_BREADY           => axi_ps_bready_pl       ,
        M_AXI_BRESP            => axi_ps_bresp_pl        ,
        M_AXI_BVALID           => axi_ps_bvalid_pl       ,
                       
        M_AXI_WDATA            => axi_ps_wdata_pl        ,
        M_AXI_WLAST            => axi_ps_wlast_pl        ,
        M_AXI_WREADY           => axi_ps_wready          ,
        M_AXI_WSTRB            => axi_ps_wstrb_pl        ,
        M_AXI_WVALID           => axi_ps_wvalid_pl       ,
    
    ------------- control part ------------
        ARESETN                => rst                    ,        
        ACLK                   => clk                    ,
        MASTER_RST             => inverted_rst           ,
        
    ------------ AXI <-> YOLO Interconnect --------------	
        WR_START               => wr_burst_req,
        WR_ADRS                => wr_burst_addr,
        WR_LEN                 => rd_wr_burst_len,
        WR_FIFO_RE             => wr_burst_data_req,
        WR_FIFO_EMPTY          => std_logic'('0'),
        WR_FIFO_AEMPTY         => std_logic'('0'),
        WR_FIFO_DATA           => wr_burst_data,
        WR_DONE                => wr_burst_finish,
    
        RD_START               => rd_burst_req,
        RD_ADRS                => rd_burst_addr,
        RD_LEN                 => rd_wr_burst_len,
        RD_FIFO_WE             => rd_burst_data_valid,
        RD_FIFO_FULL           => std_logic'('0'),
        RD_FIFO_AFULL          => std_logic'('0'),
        RD_FIFO_DATA           => rd_burst_data,
        RD_DONE                => rd_burst_finish                                   
    );

    --portmap for block_design
    ps_block_inst : entity work.design_1_wrapper(Behavioral) 
    port map(
        --master read address
        axi_ps_araddr   => axi_ps_araddr_pl_ext,  
        axi_ps_arburst  => axi_ps_arburst_pl, 
        axi_ps_arcache  => axi_ps_arcache_pl,
        axi_ps_arid     => axi_ps_arid_pl_ext,   
        axi_ps_arlen    => axi_ps_arlen_pl,   
        axi_ps_arlock   => axi_ps_arlock_pl_cut,
        axi_ps_arprot   => axi_ps_arprot_pl,  
        axi_ps_arqos    => axi_ps_arqos_pl_pl,
        axi_ps_arready  => axi_ps_arready_pl, 
        axi_ps_arsize   => axi_ps_arsize_pl,  
        axi_ps_aruser   => axi_ps_aruser_pl,  
        axi_ps_arvalid  => axi_ps_arvalid_pl,
        
        --master write address 
        axi_ps_awaddr   => axi_ps_awaddr_pl_ext,  
        axi_ps_awburst  => axi_ps_awburst_pl, 
        axi_ps_awcache  => axi_ps_awcache_pl, 
        axi_ps_awid     => axi_ps_awid_pl_ext,    
        axi_ps_awlen    => axi_ps_awlen_pl,   
        axi_ps_awlock   => axi_ps_awlock_pl,  
        axi_ps_awprot   => axi_ps_awprot_pl,  
        axi_ps_awqos    => axi_ps_awqos_pl,  
        axi_ps_awready  => axi_ps_awready_pl, 
        axi_ps_awsize   => axi_ps_awsize_pl,  
        axi_ps_awuser   => axi_ps_awuser_pl,  
        axi_ps_awvalid  => axi_ps_awvalid_pl,
        
        --master write response 
        axi_ps_bid      => axi_ps_bid_pl_ext,     
        axi_ps_bready   => axi_ps_bready_pl,  
        axi_ps_bresp    => axi_ps_bresp_pl,   
        axi_ps_bvalid   => axi_ps_bvalid_pl,
        
        --master read data  
        axi_ps_rdata    => axi_ps_rdata_pl,   
        axi_ps_rid      => axi_ps_rid_pl_ext,     
        axi_ps_rlast    => axi_ps_rlast_pl, 
        axi_ps_rready   => axi_ps_rready_pl,  
        axi_ps_rresp    => axi_ps_rresp_pl,   
        axi_ps_rvalid   => axi_ps_rvalid_pl,  
        
        --master write data
        axi_ps_wdata    => axi_ps_wdata_pl,   
        axi_ps_wlast    => axi_ps_wlast_pl,
        axi_ps_wready   => axi_ps_wready,   
        axi_ps_wstrb    => axi_ps_wstrb_pl, 
        axi_ps_wvalid   => axi_ps_wvalid_pl,
        
        --clk
        pl_clk          => clk,
        rst_ps          => rst
    );
    
    process(clk)
    begin
    
        if rising_edge(clk) then
            
            rd_burst_addr   <= x"01000000";
            rd_wr_burst_len <= x"00000001";
        
            if (state = 0) and (start_strob = '1') then --start
                state <= state + 1;
                rd_burst_req <= '1';
            end if;
        
            if (state = 1) then --waiting
                if (rd_burst_finish = '1') then
                    state <= "000";
                    rd_burst_req <= '0';
                end if;
            end if;
            
            --start strob
            key_start_rg <= key_start;
            
        end if;
    
    end process; 
    
    start_strob <= key_start and not key_start_rg;
    
end Behavioral;
