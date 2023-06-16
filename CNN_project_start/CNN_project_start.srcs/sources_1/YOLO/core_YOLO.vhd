----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.05.2022 16:08:35
-- Design Name: 
-- Module Name: core_YOLO - Behavioral
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
use work.vector_alex.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity core_YOLO is
  Port (
    from_DDR                : in std_logic_vector(WideIO-1 downto 0);
    m_in_data               : in std_logic;
    reset_Npixel            : in std_logic;
    reset_Nfilter           : in std_logic;
    reset                   : in std_logic;
    clk                     : in std_logic;
    string_length           : in std_logic_vector(15 downto 0);
    weight_en               : in std_logic;
    rd_wr_en                : in std_logic;
    mux_maxpool_conv_ctrl   : in std_logic;
    
    to_DDR                  : out std_logic_vector(WideIO-1 downto 0);
    m_out_data              : out std_logic
  );
end core_YOLO;

architecture Behavioral of core_YOLO is

signal next_chan_strob          : std_logic;
signal weights, pixels          : pixels_weights_buses_type;
signal m_global_shift_conv3x3   : std_logic;
signal conv_data_out            : std_logic_vector(WideIO-1 downto 0);
signal conv_mark_out            : std_logic;

signal maxpool_data_out         : std_logic_vector(WideIO-1 downto 0);
signal maxpool_mark_out         : std_logic;

--signal mux_maxpool_conv_out     : std_logic_vector(WideIO-1 downto 0);

--from Conv
signal from_conv_marker         : std_logic;
signal from_conv_data           : std_logic_vector(WideIO-1 downto 0);

--from Maxpool
signal from_maxpool_marker      : std_logic;
signal from_maxpool_data        : std_logic_vector(WideIO-1 downto 0);

--from MaxpoolS1
signal from_maxpoolS1_marker      : std_logic;
signal from_maxpoolS1_data        : std_logic_vector(WideIO-1 downto 0);

begin

    Global_shift : entity work.global_shift_reg(Behavioral)
    port map(
        reset_Npixel    => reset_Npixel,
        m_in_data       => m_in_data,
        clk             => clk,
        from_DDR        => from_DDR,
        string_length   => string_length(13 downto 0),
        
        weight_en       => weight_en,
        rd_wr_en        => rd_wr_en,
        next_chan_strob => next_chan_strob,
        
        weights         => weights,
        pixels          => pixels,
        m_out_data      => m_global_shift_conv3x3
    );
    
    Conv3x3 : entity work.conv_core(Behavioral)
    port map(
        weight      => weights,
        pixel       => pixels,
                     
        bias        => x"404dae70",
        clk         => clk, 
        rst         => reset_Npixel,
        m_in_pixel  => m_global_shift_conv3x3,
                    
        out_pixel   => conv_data_out,
        m_out       => conv_mark_out
    );
    
    Maxpool : entity work.MAXPOOLv2(Behavioral)
    port map(
        m_data      => from_conv_marker,
        in_data     => from_conv_data,
        clk         => clk,    
        output      => from_maxpool_data,
        m_output    => from_maxpool_marker
    );
    
    MaxpoolS1 : entity work.MaxpoolS1(Behavioral)
    port map(
            in_data         => from_conv_data,
            m_data          => from_conv_marker,
            clk             => clk,
            reset_Nfilter   => reset_Nfilter,
            global_reset    => reset,

            output          => from_maxpoolS1_data,
            m_output        => from_maxpoolS1_marker
    );
    
    

----------------------------------------------------------------------------------------------------
-- MaxPool works ONLY in fixed point 16 and have clock modulation!!!
-- Needs to change logic!!!

--    Maxpool : entity work.MAXPOOLv2(Behavioral)
--    port map(
--        m_data      => conv_mark_out,
--        in_data     => conv_data_out,
--        clk_ex      => clk,
----        R           => STD_LOGIC;
--        output      => maxpool_data_out,
--        m_output    => maxpool_mark_out
--    );

--    to_DDR      <= maxpool_data_out when mux_maxpool_conv_ctrl = '1' else conv_data_out;
--    m_out_data  <= maxpool_mark_out when mux_maxpool_conv_ctrl = '1' else conv_mark_out;
-----------------------------------------------------------------------------------------------------
    
to_DDR      <= conv_data_out;
m_out_data  <= conv_mark_out;
    
end Behavioral;
