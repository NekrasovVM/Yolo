----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.08.2022 11:21:07
-- Design Name: 
-- Module Name: CTRL_machine_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.std_logic_unsigned.all;
					
					

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CTRL_machine_testbench is
--  Port ( );
end CTRL_machine_testbench;

architecture Behavioral of CTRL_machine_testbench is

constant amount_data: integer := 4;

-- clock settings
signal   clk : std_logic := '0'; 
constant PERIOD : time := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET : time := 1.5 ns;

--  test signals to ports
-------------- PORT TO AXI --------------
signal data_to_ddr_test                 : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
signal data_to_ddr_valid_test           : STD_LOGIC := '0';
 
signal rd_addr_out_test                 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal wr_addr_out_test                 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal rd_wr_len_out_test               : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal rd_burst_req_test                : STD_LOGIC := '0'; 
signal wr_burst_data_test               : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
signal wr_burst_req_test                : STD_LOGIC := '0';
signal clk_test                         : std_logic := '0';
 
-------------- PORT FROM AXI -------------
signal rd_burst_finish_test             : STD_LOGIC := '0';
signal wr_burst_finish_test             : STD_LOGIC := '0';
signal wr_burst_data_req_test           : STD_LOGIC := '0';

-------------- control PORT --------------
signal start_machine_test               : STD_LOGIC := '0';
signal reset_global_test                : STD_LOGIC := '0';
signal end_frame_out_test               : STD_LOGIC := '0';
signal end_work_out_test                : STD_LOGIC := '0';  

-------------- PORT TO YOLO --------------
signal weight_en_out_test               : STD_LOGIC := '0';
signal reset_Npixel_out_test            : STD_LOGIC := '0';
signal rd_wr_en_out_test                : STD_LOGIC := '0';
signal ROM_Npixel_to_YOLO_test          : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');                 
signal ROM_Nchannels_to_YOLO_test       : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');   
signal ROM_Nfilter_to_YOLO_test         : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');   
signal max_pool_en_to_YOLO_test         : STD_LOGIC := '0';

-- signals to ports registered
-------------- PORT TO AXI --------------
signal data_to_ddr_rg                   : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
signal data_to_ddr_valid_rg             : STD_LOGIC := '0';
 
signal rd_addr_out_rg                   : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal wr_addr_out_rg                   : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal rd_wr_len_out_rg                 : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
signal rd_burst_req_rg                  : STD_LOGIC := '0'; 
signal wr_burst_data_rg                 : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
signal wr_burst_req_rg                  : STD_LOGIC := '0';
 
-------------- PORT FROM AXI -------------
signal rd_burst_finish_rg               : STD_LOGIC := '0';
signal wr_burst_finish_rg               : STD_LOGIC := '0';
signal wr_burst_data_req_rg             : STD_LOGIC := '0';

-------------- control PORT --------------
signal start_machine_rg                 : STD_LOGIC := '0';
signal reset_global_rg                  : STD_LOGIC := '0';
signal end_frame_out_rg                 : STD_LOGIC := '0';
signal end_work_out_rg                  : STD_LOGIC := '0';  

-------------- PORT TO YOLO --------------
signal weight_en_out_rg                 : STD_LOGIC := '0';
signal reset_Npixel_out_rg              : STD_LOGIC := '0';
signal rd_wr_en_out_rg                  : STD_LOGIC := '0';
signal ROM_Npixel_to_YOLO_rg            : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');                 
signal ROM_Nchannels_to_YOLO_rg         : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');   
signal ROM_Nfilter_to_YOLO_rg           : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');   
signal maxpool_en_to_YOLO_rg           : STD_LOGIC := '0';    

type layers_parameters is array (1 to 14) of integer;

constant filter_number_values : layers_parameters := (
    1  => 16,
    2  => 32,
    3  => 64,
    4  => 128,
    5  => 256,
    6  => 512,
    7  => 1024,
    8  => 256,
    9  => 512,
    10 => 255,
    11 => 128,
    12 => 256,
    13 => 255,
    14 => 255
);

constant output_number_values : layers_parameters := (
    1  => 208,
    2  => 104,
    3  => 52,
    4  => 26,
    5  => 26,
    6  => 13,
    7  => 13,
    8  => 13,
    9  => 13,
    10 => 13,
    11 => 26,
    12 => 26,
    13 => 26,
    14 => 26
);

begin

CTRL_machine_inst : entity work.CTRL_machine(Behavioral)
port map(
-------------- PORT TO AXI --------------
         data_to_ddr            =>  data_to_ddr_rg,                       
         data_to_ddr_valid      =>  data_to_ddr_valid_rg,          
                               
         rd_addr_out            =>  rd_addr_out_rg,                  
         wr_addr_out            =>  wr_addr_out_rg,                  
         rd_wr_len_out          =>  rd_wr_len_out_rg,                
         rd_burst_req           =>  rd_burst_req_rg,                 
         wr_burst_data          =>  wr_burst_data_rg,                
         wr_burst_req           =>  wr_burst_req_rg,                 
                                
         -------------- PORT FROM AXI -------------
                                
         rd_burst_finish        =>  rd_burst_finish_rg,             
         wr_burst_finish        =>  wr_burst_finish_rg,             
         wr_burst_data_req      =>  wr_burst_data_req_rg,           
                                
         -------------- control PORT --------------
                                
         start_machine          =>  start_machine_rg,                
         clk                    =>  clk_test,                          
         reset_global           =>  reset_global_rg,                 
         end_frame_out          =>  end_frame_out_rg,                
         end_work_out           =>  end_work_out_rg,                 
                                
         -------------- PORT TO YOLO --------------
                                
         weight_en_out          =>  weight_en_out_rg,               
         reset_Npixel_out       =>  reset_Npixel_out_rg,            
         rd_wr_en_out           =>  rd_wr_en_out_rg,                
         ROM_Npixel_to_YOLO     =>  ROM_Npixel_to_YOLO_rg,                      
         ROM_Nchannels_to_YOLO  =>  ROM_Nchannels_to_YOLO_rg,          
         ROM_Nfilter_to_YOLO    =>  ROM_Nfilter_to_YOLO_rg,         
         maxpool_en_to_YOLO     =>  maxpool_en_to_YOLO_rg         

);

-- Clock process definitions ----------------------------------------------
    PROCESS    -- clock process for clk
    BEGIN
        WAIT for OFFSET;
        
        CLOCK_LOOP : LOOP
            clk_test <= '1';
            WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
            clk_test <= '0';
            WAIT FOR (PERIOD * DUTY_CYCLE);
        END LOOP CLOCK_LOOP;
    END PROCESS;

 -- Stimulus process -------------------------------------------------------
    stim_proc: process
    
    begin
    		
        wait for 100 ns;	
        
        start_machine_test <= '1';
        wait for (PERIOD * 10);
        start_machine_test <= '0';
        
        wait for (PERIOD * 5);

        for layer in 1 to 13 loop
------------------------------------------------------------ 1 layer n filters (correct)----------------------------------------------
            for k in 1 to filter_number_values(layer) loop
---------------------------------------------------------------- 1 layer 1 filter (correct)-------------------------------------------
                -- reading weights 
                rd_burst_finish_test <= '1';
                wait for PERIOD;
                rd_burst_finish_test <= '0';
                
                wait for (PERIOD * 20);
                
                for j in 1 to output_number_values(layer) loop
                    -- reading data 
                    rd_burst_finish_test <= '1';
                    wait for PERIOD;
                    rd_burst_finish_test <= '0';
                    
                    wait for (PERIOD * 20);
                    
                    -- getting result of 0 layer from YOLO 
                    data_to_ddr_valid_test <= '1';
                    
                    for i in 1 to amount_data loop
                        data_to_ddr_test <= data_to_ddr_test + 1;
                        wait for PERIOD;
                    end loop;
                    
                    data_to_ddr_valid_test <= '0';
                    
                    wait for (PERIOD * 5);
                    
                    -- writing result of 0 layer to AXI
                    wr_burst_data_req_test <= '1';
                    wait for (PERIOD);
                    
                    wr_burst_data_req_test <= '0';
                    wait for (PERIOD * 2);
                    
                    wr_burst_data_req_test <= '1';
                    wait for (PERIOD * (amount_data - 1));
                    wr_burst_data_req_test <= '0';
                    
                    wait for (PERIOD * 5);
                    
                    -- creating of finish signal
                    wr_burst_finish_test <= '1';
                    wait for (PERIOD);
                    wr_burst_finish_test <= '0';             
                    
                    wait for (PERIOD * 10);   
                end loop;
 --------------------------------------------------------------- 1 layer 1 filter (correct)-------------------------------------------
            end loop;  
------------------------------------------------------------ 1 layer n filters (correct)----------------------------------------------
        end loop;
        
        wait;
    end process;


process(clk_test)
begin
    if rising_edge(clk_test) then
        data_to_ddr_rg              <= data_to_ddr_test;      
        data_to_ddr_valid_rg        <= data_to_ddr_valid_test;    
                  
        wr_burst_data_rg            <= wr_burst_data_test;
                                    
        rd_burst_finish_rg          <= rd_burst_finish_test;
        wr_burst_finish_rg          <= wr_burst_finish_test;
        wr_burst_data_req_rg        <= wr_burst_data_req_test;
                                    
        start_machine_rg            <= start_machine_test;
        reset_global_rg             <= reset_global_test;
    end if;
 
end process;

end Behavioral;
