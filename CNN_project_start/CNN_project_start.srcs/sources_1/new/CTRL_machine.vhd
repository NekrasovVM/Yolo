library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CTRL_machine is
  Generic (
        Nlayer_const            : integer := 13;
        Nframe_const            : integer := 1;
        addr_bus_width          : integer := 32;
        Frame_const             : std_logic_vector(31 downto 0) := x"00B4ECFC";
        addr_first_feature_map  : std_logic_vector(31 downto 0) := x"00080E56" 
        );
  Port   (
         -------------- PORT TO AXI --------------
         data_to_ddr                      : in std_logic_vector(63 downto 0);
         data_to_ddr_valid                : in STD_LOGIC;
         
         rd_addr_out                      : out std_logic_vector(31 downto 0);
         wr_addr_out                      : out std_logic_vector(31 downto 0);
         rd_wr_len_out                    : out std_logic_vector(31 downto 0);
         rd_burst_req                     : out STD_LOGIC; 
         wr_burst_data                    : out std_logic_vector(63 downto 0);
         wr_burst_req                     : out STD_LOGIC;

         -------------- PORT FROM AXI -------------
         
         rd_burst_finish                  : in STD_LOGIC;
         wr_burst_finish                  : in STD_LOGIC;
         wr_burst_data_req                : in STD_LOGIC;

         -------------- control PORT --------------
         
         start_machine                    : in STD_LOGIC;
         clk                              : in STD_LOGIC;
         reset_global                     : in STD_LOGIC;
         end_frame_out                    : out STD_LOGIC;
         end_work_out                     : out STD_LOGIC;  
         
         -------------- PORT TO YOLO --------------
         
         weight_en_out                    : out STD_LOGIC;
         reset_Npixel_out                 : out STD_LOGIC;
         rd_wr_en_out                     : out STD_LOGIC;
         ROM_Npixel_to_YOLO               : out STD_LOGIC_VECTOR(15 downto 0);                 
         ROM_Nchannels_to_YOLO            : out STD_LOGIC_VECTOR(15 downto 0);   
         ROM_Nfilter_to_YOLO              : out STD_LOGIC_VECTOR(15 downto 0);   
         maxpool_en_to_YOLO               : out STD_LOGIC
         
         );
end CTRL_machine;

architecture Behavioral of CTRL_machine is
signal FF_work_pot          : STD_LOGIC := '0';
signal rd_or_wr_finish      : STD_LOGIC;
signal en_count             : STD_LOGIC := '0';
signal FF_work_pot_reg      : STD_LOGIC := '0';
signal work_strob           : STD_LOGIC;

signal end_work             : STD_LOGIC := '0';

--shift_reg
signal to_shift_reg         : STD_LOGIC;
signal SHIFT_reg            : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
signal query_1rg            : STD_LOGIC;
signal query_2rg            : STD_LOGIC;
signal query_5rg            : STD_LOGIC;
signal query_6rg            : STD_LOGIC;
signal query_8rg            : STD_LOGIC; 

--Counter_signals
signal Npixel               : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal reset_Npixel         : STD_LOGIC := '0';
signal reset_Nfilter        : STD_LOGIC := '0';
signal Nfilter              : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal reset_Nlayer         : STD_LOGIC := '0';
signal reset_Nframe         : STD_LOGIC := '0';
signal end_frame_pot        : STD_LOGIC := '0';
signal Nlayer               : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal Nframe               : STD_LOGIC_VECTOR(31 downto 0) := (others => '0'); 

-- cmp_signals 
signal Npixel_cmp_out       : STD_LOGIC := '0';
signal Nfilter_cmp_out      : STD_LOGIC := '0';
signal Nlayer_cmp_out       : STD_LOGIC := '0';
signal Nframe_cmp_out       : STD_LOGIC := '0';

-- ROM const
signal ROM_Npixel               : STD_LOGIC_VECTOR(15 downto 0);
signal ROM_Npixel_next          : STD_LOGIC_VECTOR(15 downto 0);
signal ROM_Nfilter_decrement    : STD_LOGIC_VECTOR(15 downto 0);
signal ROM_Nchannels            : STD_LOGIC_VECTOR(15 downto 0);
signal maxpool_en               : STD_LOGIC;

-- ROM mod
--signal ROM_mod_out              : std_logic_vector(23 downto 0);
signal modifier_wr              : std_logic_vector(31 downto 0);
signal modifier_rd              : std_logic_vector(31 downto 0);
signal modifier_wr_rg              : std_logic_vector(31 downto 0);

-- addr_manager 
signal addr_code                : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

--addr_rd_manager
signal addr_weight_rd           : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');
signal addr_pixel_rd            : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');
signal mux_addr_weight_out      : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');  
signal mux_addr_pixel_out       : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');   
signal weight_en                : STD_LOGIC;
signal addr_weight_rd_sum       : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');    
signal addr_pixel_rd_sum        : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');    
signal addr_weight_rd_mux       : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');   
signal addr_pixel_rd_mux        : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0'); 
signal addr_init_const          : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0'); 
signal length                   : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');
signal rd_addr_out_mux          : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');
signal rd_addr                  : STD_LOGIC_VECTOR(addr_bus_width-1 downto 0)  := (others => '0');
signal mux_ff_ctrl              : STD_LOGIC := '0';
signal mux_pixel_ctrl           : STD_LOGIC := '0';
signal ROM_mod_rd               : std_logic_vector(15 downto 0) := (others => '0');
signal ROM_mod_wr               : std_logic_vector(15 downto 0) := (others => '0');

--Npixel_next multiplication    
--signal multiplication_res       : std_logic_vector(addr_bus_width-1 downto 0);
--signal multiplication_res_rg    : std_logic_vector(addr_bus_width-1 downto 0);
--signal multiplier               : std_logic_vector(2 downto 0);


--- addr_wr
signal mux_ctrl_offset          : STD_LOGIC := '0';
signal mux_ctrl_wr_addr         : STD_LOGIC := '0';
signal offset                   : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0'); 
signal addr_wr_mux              : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0'); 
signal addr_wr_sum              : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0'); 
signal offset_sum               : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0');
signal Frame_const_sum          : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0'); 
signal offset_mux               : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0'); 
signal Nframe_begin             : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := addr_first_feature_map; 
signal addr_wr                  : STD_LOGIC_VECTOR (addr_bus_width-1 downto 0) := (others => '0'); 
signal rd_wr_en                 : STD_LOGIC;
signal cycle_en_next            : STD_LOGIC;
signal latch                    : std_logic := '1';
signal to_offset_ce             : std_logic := '0';
signal to_and                   : std_logic := '0';
signal addr_wr_ff_ce            : std_logic := '0';


attribute MARK_DEBUG : string;
--attribute MARK_DEBUG of out_v, data_bus, ctrl_data_write, key, addr_bus, empty, full: signal is "TRUE";

-- ROM_CONST
component dist_mem_gen_0
port (       
            a       : in STD_LOGIC_VECTOR(3 downto 0);
            clk     : in STD_LOGIC;        
            qspo    : out STD_LOGIC_VECTOR(67 downto 0));
 end component;
 
signal out_ROM_CONST : STD_LOGIC_VECTOR (67 downto 0); 
 
-- ROM_ADDRESS
component blk_mem_gen_0
port (       
            addra   : in STD_LOGIC_VECTOR(5 downto 0);
            clka    : in STD_LOGIC;        
            douta   : out STD_LOGIC_VECTOR(83 downto 0));
 end component;

-- ROM_MOD 
component blk_mem_gen_1
port (       
            addra    : in STD_LOGIC_VECTOR(3 downto 0);
            clka     : in STD_LOGIC;        
            douta    : out STD_LOGIC_VECTOR(15 downto 0));
 end component;

signal addra_ROM_ADDRESS : STD_LOGIC_VECTOR (5 downto 0);  
signal out_ROM_ADDRESS : STD_LOGIC_VECTOR (83 downto 0); 

begin

rd_wr_len_out         <= length;
reset_Npixel_out      <= reset_Npixel;
rd_wr_en_out          <= rd_wr_en;
maxpool_en_to_YOLO    <= maxpool_en;
ROM_Nchannels_to_YOLO <= ROM_Nchannels;
ROM_Nfilter_to_YOLO   <= ROM_Nfilter_decrement;
ROM_Npixel_to_YOLO    <= ROM_Npixel;

ROM_const : dist_mem_gen_0
port map (
            a    => Nlayer,
            clk  => clk,
            qspo => out_ROM_CONST
);

maxpool_en              <= out_ROM_CONST(64);
ROM_Npixel              <= out_ROM_CONST(63 downto 48);
ROM_Npixel_next         <= out_ROM_CONST(47 downto 32);
ROM_Nchannels           <= out_ROM_CONST(31 downto 16);
ROM_Nfilter_decrement   <= out_ROM_CONST(15 downto 0);


--ROM_mod_wr              <= ROM_mod_out(15 downto 0);
--ROM_mod_rd              <= ROM_mod_out(23 downto 16); 

addra_ROM_ADDRESS(5 downto 2) <= Nlayer;
addra_ROM_ADDRESS(1 downto 0) <= addr_code;

ROM_addr : blk_mem_gen_0
port map (
            addra => addra_ROM_ADDRESS,
            clka  => clk,
            douta => out_ROM_ADDRESS
);

rd_wr_en         <= out_ROM_ADDRESS(82);
cycle_en_next    <= out_ROM_ADDRESS(81);
weight_en        <= out_ROM_ADDRESS(80);
addr_init_const  <= out_ROM_ADDRESS(79 downto 48);
length           <= out_ROM_ADDRESS(47 downto 16);
ROM_mod_rd       <= out_ROM_ADDRESS(15 downto 0);

ROM_mod : blk_mem_gen_1
port map(
    addra => Nlayer,
    clka  => clk,              
    douta => ROM_mod_wr     
);

control_AXI_inst : entity work.control_AXI(Behavioral)
      port map (
       data_to_ddr           => data_to_ddr,
       data_to_ddr_valid     => data_to_ddr_valid,
       query_strob           => query_8rg,
       rd_wr_en              => rd_wr_en,
       rd_burst_finish       => rd_burst_finish,
       wr_burst_data_req     => wr_burst_data_req,
       wr_burst_finish       => wr_burst_finish,
       clk                   => clk,
       reset_global          => reset_global,
       rd_burst_req          => rd_burst_req,
       wr_burst_data         => wr_burst_data,
       wr_burst_req          => wr_burst_req
);

---------------------------------------------------------------- PAGE 1 --------------------------------------------------------------
rd_or_wr_finish <= rd_burst_finish or wr_burst_finish;
work_strob <= FF_work_pot and not FF_work_pot_reg;
to_shift_reg <= work_strob or en_count;


--   Shift_reg_logic  

SHIFT_reg(0) <=  to_shift_reg;
SHIFT_reg(8 downto 1) <= SHIFT_reg(7 downto 0) when rising_edge(clk);
query_1rg <= SHIFT_reg(1);
query_2rg <= SHIFT_reg(2);
query_5rg <= SHIFT_reg(5);
query_6rg <= SHIFT_reg(6);
query_8rg <= SHIFT_reg(8);

--Manager_logic
process(clk)
begin

    if rising_edge(clk) then
    
        en_count <= rd_or_wr_finish and FF_work_pot;
        FF_work_pot_reg <= FF_work_pot;   
           
        if(end_work = '1' or reset_global = '1') then
            FF_work_pot <= '0'; 
        elsif ( start_machine = '1') then
            FF_work_pot <= '1'; 
        end if;   
        
        if reset_global = '1' then
            end_work <= '0';
        elsif reset_Nframe = '1' then
            end_work <= '1'; 
        end if; 
        
          if reset_global = '1' then
            end_frame_pot <= '0';
        elsif reset_Nlayer = '1' then
            end_frame_pot <= '1'; 
        end if; 
        
    end if;
       
end process;

end_frame_out <= end_frame_pot;
end_work_out  <= end_work;

--counter_logic
process(clk)
begin

    if rising_edge(clk) then
    
        if(reset_global or reset_Npixel) = '1' then
            Npixel <= (others => '0');
        elsif en_count = '1' then
            Npixel <= Npixel + 1;
        end if;  
        
        if(reset_global or reset_Nfilter) = '1' then
            Nfilter <= (others => '0');
        elsif reset_Npixel = '1' then
            Nfilter <= Nfilter + 1;
        end if;  
        
        if(reset_global or reset_Nlayer) = '1' then
            Nlayer <= (others => '0');
        elsif reset_Nfilter = '1' then
            Nlayer <= Nlayer + 1;
        end if;  
        
         if(reset_global or reset_Nframe) = '1' then
            Nframe <= (others => '0');
        elsif reset_Nlayer = '1' then
            Nframe <= Nframe + 1;
        end if;
    end if;
                
end process;

-- Cmp_logic
process(clk)
begin

    if rising_edge(clk) then
        if (Npixel = (ROM_Npixel -2 )) then
            Npixel_cmp_out <= '1' ;
        else 
            Npixel_cmp_out <= '0';
        end if;
    
        if (Nfilter = ROM_Nfilter_decrement) then
            Nfilter_cmp_out <= '1' ;
        else 
            Nfilter_cmp_out <= '0';
        end if;
    
        if (Nlayer = Nlayer_const) then
            Nlayer_cmp_out <= '1' ;
        else 
            Nlayer_cmp_out <= '0';
        end if;
    
        if (Nframe = Nframe_const) then
            Nframe_cmp_out <= '1' ;
        else 
            Nframe_cmp_out <= '0';
        end if;
    end if;
    
end process;

--Counter_reset_logic
process(clk)
begin

    if rising_edge(clk) then
        reset_Npixel    <= en_count and Npixel_cmp_out;
        reset_Nfilter   <= en_count and Npixel_cmp_out and Nfilter_cmp_out;
        reset_Nlayer    <= en_count and Npixel_cmp_out and Nfilter_cmp_out and Nlayer_cmp_out;
        reset_Nframe    <= en_count and Npixel_cmp_out and Nfilter_cmp_out and Nlayer_cmp_out and Nframe_cmp_out;   
    end if;
    
end process;

---------------------------------------------------------------- PAGE 2 -------------------------------------------------------------
--addr_manager

process(clk)
begin
    if rising_edge(clk) then
-- addr_code(0) generator
        if (reset_global or reset_Npixel) = '1' then
             addr_code(0) <= '0';   
        elsif en_count = '1' then
            addr_code(0) <= not addr_code(0);
        end if;
--addr_code(0) generator
      
        if (reset_global or reset_Npixel) = '1' then
             addr_code(1) <= '0';   
        elsif (en_count and cycle_en_next) = '1' then
            addr_code(1) <= '1';
        end if;    
    end if;
    
end process;
  
--mux controllers  
process(clk)
begin
  
    if rising_edge(clk) then
    --mux_ff_ctrl                         
        if (reset_global or reset_Nfilter) = '1' then
            mux_ff_ctrl <= '0';                      
        elsif addr_code(1) = '1' then                
            mux_ff_ctrl <= '1';                      
        end if; 
        
    --mux_pixel_ctrl
        if (reset_global or reset_Npixel) = '1' then
            mux_pixel_ctrl <= '0';                      
        elsif addr_code(1) = '1' then                
            mux_pixel_ctrl <= '1';                      
        end if; 
    end if;  
                                      
end process;

mux_addr_weight_out <= addr_weight_rd_sum WHEN mux_ff_ctrl = '1' ELSE addr_init_const;
addr_weight_rd_sum <= addr_weight_rd + length;


mux_addr_pixel_out <= addr_pixel_rd_sum WHEN mux_pixel_ctrl = '1' ELSE addr_init_const;
addr_pixel_rd_sum <= addr_pixel_rd + ROM_mod_rd;

rd_addr <= addr_weight_rd WHEN weight_en = '1' ELSE addr_pixel_rd;
rd_addr_out <= rd_addr when rising_edge(clk);

process(clk)
begin
    if rising_edge(clk) then
        if (query_5rg and weight_en) = '1' then
            addr_weight_rd <= mux_addr_weight_out;
        end if; 

        if ((not weight_en and query_2rg and not rd_wr_en) or (cycle_en_next and query_5rg)) = '1' then
            addr_pixel_rd <= mux_addr_pixel_out; 
        end if;
        
     end if;
end process;

weight_en_out <= weight_en;

modifier_rd <= "0000000000000000" & ROM_mod_rd;

---------------------------------------------------------------- PAGE 3 --------------------------------------------------------------
addr_wr_mux <= addr_wr_sum WHEN mux_ctrl_wr_addr = '1' ELSE offset;
--addr_wr_sum <= multiplication_res_rg + addr_wr;
modifier_wr <= "0000000000000000" & ROM_mod_wr;
addr_wr_sum <= modifier_wr_rg + addr_wr;

offset_mux <= offset_sum WHEN mux_ctrl_offset = '1' ELSE addr_init_const;
--offset_mux <= offset_sum WHEN mux_ctrl_offset = '1' ELSE addr_init_const_enabled;
offset_sum <= ROM_Npixel_next + offset;

Frame_const_sum <= Frame_const + Nframe_begin;

process(clk)
begin

    if rising_edge(clk) then
    
        if (reset_Npixel or reset_global) = '1' then
            mux_ctrl_wr_addr <= '0';
        elsif wr_burst_finish = '1' then
            mux_ctrl_wr_addr <= '1';
        end if;
        
        if (reset_Nfilter or reset_global) = '1' then
            mux_ctrl_offset <= '0';
        elsif (addr_code(1) and query_5rg) = '1' then
            mux_ctrl_offset <= '1';
        end if;
        
        if (reset_global or end_work) = '1' then
            Nframe_begin <= addr_first_feature_map;
        elsif reset_Nlayer = '1' then
            Nframe_begin <= Frame_const_sum;
        end if;
                
        if (to_offset_ce)= '1' then
            offset <= offset_mux;
        end if;    
        
        addr_wr_ff_ce <= to_offset_ce or wr_burst_finish;
        
        if addr_wr_ff_ce = '1' then
            addr_wr <= addr_wr_mux;
        end if;
         
        modifier_wr_rg <= modifier_wr;
        
        if (reset_Npixel or reset_global) = '1' then
            latch <= '1';
        elsif to_offset_ce = '1' then
            latch <= '0';
        end if;
        
    end if;
end process;

to_offset_ce <= latch and query_5rg and rd_wr_en;

wr_addr_out <= addr_wr;

--multiplier
--begin
--    case multiplier is
--        when "000" => multiplication_res <= "000000000000" & ROM_Npixel_next & "0000";
--        when "001" => multiplication_res <= "00000000000" & ROM_Npixel_next & "00000";
--        when "010" => multiplication_res <= "0000000000" & ROM_Npixel_next & "000000";
--        when "011" => multiplication_res <= "000000000" & ROM_Npixel_next & "0000000";
--        when "100" => multiplication_res <= "00000000" & ROM_Npixel_next & "00000000";
--        when "101" => multiplication_res <= "0000000" & ROM_Npixel_next & "000000000";
--        when "110" => multiplication_res <= "000000" & ROM_Npixel_next & "0000000000"; 
--       when others => multiplication_res <= (others => '0');
--     end case;
--end process;

end Behavioral;

