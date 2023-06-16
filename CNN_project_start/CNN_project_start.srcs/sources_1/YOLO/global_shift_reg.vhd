----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2022 18:08:16
-- Design Name: 
-- Module Name: global_shift_reg - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity global_shift_reg is
Generic(
    data_width : integer := 32  
);

Port ( 
    reset_Npixel    : in STD_LOGIC;
    m_in_data       : in STD_LOGIC;
    clk             : in STD_LOGIC;
    from_DDR        : in STD_LOGIC_VECTOR(data_width-1 downto 0);
    string_length   : in STD_LOGIC_VECTOR(13 downto 0);
    
    weight_en       : in std_logic;
    rd_wr_en        : in std_logic;
    next_chan_strob : in std_logic;
    
    weights         : out pixels_weights_buses_type;
    pixels          : out pixels_weights_buses_type;
    m_out_data      : out std_logic
);

end global_shift_reg;

architecture Behavioral of global_shift_reg is

signal from_FIFO1       : std_logic_vector(data_width-1 downto 0);
signal data_count_FIFO1 : std_logic_vector(13 downto 0);
signal valid_FIFO1, empty_FIFO1 : std_logic := '0';

signal from_FIFO2, to_FIFO2     : std_logic_vector(data_width-1 downto 0) := (others => '0');
signal data_count_FIFO2         : std_logic_vector(13 downto 0);
signal valid_FIFO2, empty_FIFO2 : std_logic := '0';

signal cmp_out : std_logic;

signal latch, latch_enabled : std_logic := '0';

signal m_in_data_rg1, m_in_data_rg2, m_in_data_rg3 : std_logic := '0';

signal pixel_counter    : std_logic_vector(9 downto 0) := (others => '0');
signal cmp_pixel_out    : std_logic;

signal vectorization    : pixels_weights_buses_type := (others => (others => '0'));

signal m_shift_reg      : std_logic_vector (4 downto 0);

signal incrementor      : STD_LOGIC_VECTOR(13 downto 0) := "00000000000011";

----------------------------------------------------- weights -----------------------------------------------------

signal shift_ce         : std_logic;

signal wr_en            : std_logic_vector(9 downto 0) := "0000000010";

signal wr_en_bram       : std_logic_vector(9 downto 1);
signal addr_wr_weights  : std_logic_vector(9 downto 0);
signal addr_rd_weights  : std_logic_vector(9 downto 0) := (others => '0');


component FIFO_for_SHIFT_reg
port(
    din         : in STD_LOGIC_VECTOR(data_width-1 downto 0);
    wr_en       : in STD_LOGIC;
    
    dout        : out STD_LOGIC_VECTOR(data_width-1 downto 0);
    rd_en       : in STD_LOGIC;
    empty       : out STD_LOGIC;
    
    clk         : in STD_LOGIC;
    rst         : in STD_LOGIC;
    
--    valid       : out STD_LOGIC;
    data_count  : out STD_LOGIC_VECTOR(13 downto 0)
);
end component;

----------------------------------------------------- weights -----------------------------------------------------

component bram_for_weights
port(
    addra       : in std_logic_vector(9 downto 0);
    clka        : in std_logic;
    dina        : in std_logic_vector(data_width-1 downto 0);
--    ena         : in std_logic;
    wea         : in std_logic;
    
    addrb       : in std_logic_vector(9 downto 0);
    clkb        : in std_logic;
    doutb        : out std_logic_vector(data_width-1 downto 0)
);
end component;

begin

    FIFO_for_SHIFT_reg_inst_1 : FIFO_for_SHIFT_reg
    port map(
        din         => from_DDR,
        wr_en       => m_in_data,
        
        dout        => from_FIFO1,
        rd_en       => latch_enabled,
        empty       => empty_FIFO1,
        
        clk         => clk,
        rst         => reset_Npixel,
        
--          valid       => valid_FIFO1,
        data_count  => data_count_FIFO1
    );
    
    FIFO_for_SHIFT_reg_inst_2 : FIFO_for_SHIFT_reg
    port map(
        din         => to_FIFO2,
        wr_en       => m_in_data_rg3,
        
        dout        => from_FIFO2,
        rd_en       => latch_enabled,
        empty       => empty_FIFO2,
        
        clk         => clk,
        rst         => reset_Npixel,
        
--          valid       => valid_FIFO1,
        data_count  => data_count_FIFO2
    );  
----------------------------------------------------- weights -----------------------------------------------------
brams_weights:
    for i in 1 to 9 generate
    begin
        bram : bram_for_weights
        port map(
            addra   => addr_wr_weights,
            clka    => clk,
            dina    => from_DDR,
--            ena     => wr_en_bram(i),
            wea     => wr_en_bram(i),
                 
            addrb   => addr_rd_weights,
            clkb    => clk,
            doutb   => weights(i-1)
        );
    end generate;
    
cmp_out <= '1' when incrementor = data_count_FIFO1 else '0';

process(clk)
begin
    if rising_edge(clk) then
    
        if empty_FIFO1 = '1' then 
            latch <= '0';
        elsif cmp_out = '1' then
            latch <= '1';
        end if;
        
        m_in_data_rg1 <= m_in_data;
        m_in_data_rg2 <= m_in_data_rg1;
        m_in_data_rg3 <= m_in_data_rg2;
        
        if cmp_pixel_out = '1' then
            pixel_counter <= (others => '0');
        elsif m_in_data_rg2 = '1' then
            pixel_counter <= pixel_counter + 1;
        end if;
        
        incrementor <= string_length + 3;
        
     end if;  
end process;



latch_enabled <= m_in_data_rg2 and latch;

to_FIFO2 <= from_FIFO1 when latch = '1' else (others => '0');     
    
cmp_pixel_out <= '1' when string_length = pixel_counter else '0';

vectorization(2) <= from_FIFO2;
vectorization(5) <= from_FIFO1;
vectorization(8) <= from_DDR;

vectorization(1 downto 0) <= vectorization(2 downto 1) when rising_edge(clk);
vectorization(4 downto 3) <= vectorization(5 downto 4) when rising_edge(clk);
vectorization(7 downto 6) <= vectorization(8 downto 7) when rising_edge(clk);

m_shift_reg(0) <= latch_enabled;
m_shift_reg(4 downto 1) <= m_shift_reg(3 downto 0) when rising_edge(clk);
m_out_data <= m_shift_reg(4); --!!!

pixels <= vectorization;  

----------------------------------------------------- weights ----------------------------------------------------- 

shift_ce <= m_in_data and weight_en;


wr_en(0) <= wr_en(9);

process(clk)
begin
    if rising_edge(clk) then
    
        if shift_ce = '1' then 
            wr_en(9 downto 1) <= wr_en(8 downto 0); 
        end if;
        
        if weight_en = '0' then
            addr_wr_weights <= (others => '0');
        elsif wr_en_bram(9) = '1' then
            addr_wr_weights <= addr_wr_weights + 1;
        end if;
        
        if rd_wr_en = '1' then
            addr_rd_weights <= (others => '0');
        elsif next_chan_strob = '1' then
            addr_rd_weights <= addr_rd_weights + 1;
        end if;
    end if;
end process;

wr_en_bram(1) <= weight_en and m_in_data and wr_en(1);
wr_en_bram(2) <= weight_en and m_in_data and wr_en(2);
wr_en_bram(3) <= weight_en and m_in_data and wr_en(3);
wr_en_bram(4) <= weight_en and m_in_data and wr_en(4);
wr_en_bram(5) <= weight_en and m_in_data and wr_en(5);
wr_en_bram(6) <= weight_en and m_in_data and wr_en(6);
wr_en_bram(7) <= weight_en and m_in_data and wr_en(7);
wr_en_bram(8) <= weight_en and m_in_data and wr_en(8);
wr_en_bram(9) <= weight_en and m_in_data and wr_en(9); 



end Behavioral;
