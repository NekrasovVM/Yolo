----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2022 16:52:23
-- Design Name: 
-- Module Name: READ_WRITE - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity MAXPOOLv2 is
    Generic (maxpool_size: integer := 13);
    
    Port ( 
            m_data      : in STD_LOGIC;
            in_data     : in STD_LOGIC_VECTOR(15 downto 0);
            clk         : in STD_LOGIC;
--            R           : in STD_LOGIC;
            output      : out STD_LOGIC_VECTOR(15 downto 0);
            m_output    : out STD_LOGIC
            );
             
end MAXPOOLv2;

architecture Behavioral of MAXPOOLv2 is


component c_shift_ram_0
port(
    D : in STD_LOGIC_VECTOR(0 downto 0);
    clk : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR(0 downto 0)
);
end component;

component RAM
port (
    addra : in STD_LOGIC_VECTOR(7 downto 0);
    clka : in STD_LOGIC;
    dina : in STD_LOGIC_VECTOR(15 downto 0);
    wea : in STD_LOGIC_VECTOR(0 downto 0);
    addrb : in STD_LOGIC_VECTOR(7 downto 0);
    clkb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

component clk_wiz_1
port
 (
  clk_out          : out    std_logic;
  clk_in           : in     std_logic
 );
end component;


signal res_data : STD_LOGIC_VECTOR(15 downto 0) := (others=> '0');
signal mark_res_data : STD_LOGIC := '0';
signal even_pixel_and_row : std_logic := '0';
signal even_pixel_or_row : std_logic := '0';
signal enabled_odd_pr : std_logic := '0';

-- SE signals
signal cmp_res, m_data_rg : STD_LOGIC := '0';
signal in_data_rg : STD_LOGIC_VECTOR(15 downto 0):= (others => '0');

-- RAM
signal RAM_Q: STD_LOGIC_VECTOR(15 downto 0);
signal RAM_D: STD_LOGIC_VECTOR(15 downto 0);
signal RAM_aD: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal RAM_aQ: STD_LOGIC_VECTOR(7 downto 0);
signal RAM_en: STD_LOGIC_VECTOR(0 downto 0) := (others => '0');

-- counter
signal cnt_rst, cnt_rst_strob: STD_LOGIC := '0';
signal even_row : std_logic := '1';
signal cnt_out: STD_LOGIC_VECTOR(8 downto 0) := (others => '0');

attribute MARK_DEBUG : string;

begin

RAM_inst : RAM
port map(
    addra => RAM_aD,
    clka => clk,
    dina => RAM_D,
    wea => RAM_en,
    addrb => RAM_aQ,
    clkb => clk,
    doutb => RAM_Q
);

even_pixel_and_row <= even_row and (not cnt_out(0));

cmp_res <= '1' WHEN in_data_rg > RAM_Q ELSE '0';
RAM_D <= (others => '0') WHEN even_pixel_and_row = '1' ELSE in_data_rg;  

RAM_en(0) <= (enabled_odd_pr and cmp_res) or (even_pixel_and_row and m_data_rg);

enabled_odd_pr <= not even_pixel_and_row and m_data_rg;

process(clk)
begin  
    if rising_edge(clk) then
    
        if cmp_res = '1' then 
            output <= in_data_rg;
        else 
            output <= RAM_Q;      
        end if;
        
        m_output <= even_pixel_and_row and m_data_rg;
        in_data_rg <= in_data;
        m_data_rg <= m_data;
        
    end if;
end process;

--  counter
process (clk)
begin
    if clk='1' and clk'event then        
        
        if cnt_out = 0 and m_data = '1' then
            even_row <= not even_row;
        end if; 

        if cnt_out = (maxpool_size * 2 - 1) and m_data = '1' then
            cnt_out <= (others => '0');
        elsif m_data='1' then
            cnt_out <= cnt_out + 1;
        end if;
    end if;
end process;

RAM_aQ <= cnt_out (8 downto 1);

RAM_aD <= RAM_aQ when rising_edge(clk); 

end Behavioral;
