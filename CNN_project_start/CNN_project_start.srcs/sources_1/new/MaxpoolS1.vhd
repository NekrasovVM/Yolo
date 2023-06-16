----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2022 12:23:59
-- Design Name: 
-- Module Name: MaxpoolS1 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MaxpoolS1 is

    Port ( 
            in_data         : in std_logic_vector(15 downto 0);
            m_data          : in std_logic;
            clk             : in std_logic;
            reset_Nfilter   : in std_logic;
            global_reset    : in std_logic;
            
            output          : out std_logic_vector(15 downto 0);
            m_output        : out std_logic
            );
             
end MaxpoolS1;

architecture Behavioral of MaxpoolS1 is

component FIFO_for_MaxpoolS1
port(
    din     : in std_logic_vector(15 downto 0);
    wr_en   : in std_logic;
    dout    : out std_logic_vector(15 downto 0);
    rd_en   : in std_logic;
    clk     : in std_logic;
    srst    : in std_logic   
);
end component;

signal in_data_rg, FIFO_data, FIFO_out: std_logic_vector(15 downto 0) := (others => '0');
signal cmp1_res, cmp2_res, FIFO_wr_en, FIFO_rd_en: std_logic := '0';

signal not_first_value, not_first_row, rst, cnt_max, not_first_row_marked: std_logic := '0';
signal cnt_out: std_logic_vector(3 downto 0) := (others => '0');

begin

FIFO : FIFO_for_MaxpoolS1
port map(
   din  => FIFO_data,
   wr_en=> FIFO_wr_en,
   dout => FIFO_out,
   clk  => clk,
   srst => global_reset,
   rd_en=> FIFO_rd_en
);

FIFO_data <= in_data when in_data > in_data_rg else in_data_rg;

output <= FIFO_data when FIFO_data > FIFO_out else FIFO_out;

FIFO_wr_en <= not_first_value and m_data;

not_first_row_marked  <= m_data and not_first_row;

m_output <= not_first_row_marked and not_first_value;

FIFO_rd_en <= not_first_row_marked and not rst;

cnt_max <= '1' when cnt_out = 13 else '0';

rst <= m_data and cnt_max;

process(clk)
begin
    if rising_edge(clk) then
        in_data_rg <= in_data;
        
        if rst = '1' then
            not_first_value <= '0';
        elsif m_data = '1' then
            not_first_value <= '1';
        end if;  
        
        if reset_Nfilter = '1' then
            not_first_row <= '0';
        elsif rst = '1' then
            not_first_row <= '1';
        end if;   
        
        if rst = '1' then
            cnt_out <= (others => '0');
        elsif m_data = '1' then
            cnt_out <= cnt_out + 1;
        end if;
        
    end if;
end process;

end Behavioral;
