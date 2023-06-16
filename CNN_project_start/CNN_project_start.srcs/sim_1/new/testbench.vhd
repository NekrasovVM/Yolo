----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
use work. all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

--entity MAXPOOLv2 is
--    Port (  key : in STD_LOGIC_VECTOR(3 downto 0);
--            clk_ex : in STD_LOGIC;
--            led : out STD_LOGIC_VECTOR(3 downto 0));
--end MAXPOOLv2;

architecture Behavioral of MAXPOOLv2 is

component dist_rom_ip
port (
   a : in STD_LOGIC_VECTOR(3 downto 0);
   clk : in STD_LOGIC;
   qspo : out STD_LOGIC_VECTOR (15 downto 0)
);
end component;


component FIFO
port (
   din : in STD_LOGIC_VECTOR(15 downto 0);
   wr_en : in STD_LOGIC;
   dout : out STD_LOGIC_VECTOR (15 downto 0);
   rd_en : in STD_LOGIC;
   clk : in STD_LOGIC;
   srst : in  STD_LOGIC;
   empty : out STD_LOGIC;
   full : out STD_LOGIC
);
end component;

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

component clk_wiz_0
port
 (
  clk_out_1          : out    std_logic;
--  clk_out_2          : out    std_logic;
  clk_in1            : in     std_logic
 );
end component;

signal ctrl_data_write : STD_LOGIC := '0';
signal data_bus : STD_LOGIC_VECTOR(15 downto 0);
signal addr_bus : STD_LOGIC_VECTOR(3 downto 0) := (others=> '0') ;
signal out_v : STD_LOGIC_VECTOR(15 downto 0);
signal rst : STD_LOGIC;
signal not_key_1 : STD_LOGIC;
signal reg_key : STD_LOGIC;
signal out_strob : STD_LOGIC := '0';
signal empty, full : STD_LOGIC;
signal second_out_strob : STD_LOGIC := '0';
signal shift_reg_1, shift_reg_2, shift_reg_3, shift_reg_4, shift_reg_5, shift_reg_6, shift_reg_7, shift_reg_8, shift_reg_9, shift_reg_10, shift_reg_11, shift_reg_12, shift_reg_13, shift_reg_14, shift_reg_15, shift_reg_16 : STD_LOGIC := '0'; 
signal wr_en_1 : STD_LOGIC;
signal wr_en_2 : STD_LOGIC;
signal wr_en_3 : STD_LOGIC;
signal wr_en_4 : STD_LOGIC;
signal out_fifo_1, out_fifo_2, out_fifo_3, out_fifo_4  : STD_LOGIC_VECTOR(15 downto 0);
signal rd_fifo_1, rd_fifo_2, rd_fifo_3, rd_fifo_4 : STD_LOGIC;
signal delay2_out_strob : STD_LOGIC := '0';

signal res_data : STD_LOGIC_VECTOR(15 downto 0) := (others=> '0');
signal mark_res_data : STD_LOGIC;
signal or_rst : STD_LOGIC;
signal enabled_or_rst : STD_LOGIC;

--FIFO
signal data_in_FIFO : STD_LOGIC_VECTOR(15 downto 0);
signal wr_en_FIFO : STD_LOGIC;

-- SE signals
signal trigger_of_SE1: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal cmp_res : STD_LOGIC;
signal trigger_of_SE1_rst : STD_LOGIC;
signal trigger_of_SE2: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--signal cmp_res2 : STD_LOGIC;
signal trigger_of_SE2_rst : STD_LOGIC;

-- RAM
signal RAM_Q: STD_LOGIC_VECTOR(15 downto 0);
signal RAM_D: STD_LOGIC_VECTOR(15 downto 0);
signal RAM_aD: STD_LOGIC_VECTOR(7 downto 0);
signal RAM_aQ: STD_LOGIC_VECTOR(7 downto 0);
signal RAM_en: STD_LOGIC_VECTOR(0 downto 0);

-- counter
signal cnt_rst: STD_LOGIC;
signal cnt_out: STD_LOGIC_VECTOR(8 downto 0);
constant cnt_max: integer := 2;

signal FIFO_read_en : STD_LOGIC;
signal mult : STD_LOGIC;

attribute MARK_DEBUG : string;
attribute MARK_DEBUG of out_v, data_bus, ctrl_data_write, key, addr_bus, empty, full: signal is "TRUE";
attribute MARK_DEBUG of shift_reg_1, shift_reg_2, shift_reg_3, shift_reg_4, shift_reg_5, shift_reg_6, shift_reg_7, shift_reg_8, shift_reg_9, shift_reg_10, shift_reg_11, shift_reg_12, shift_reg_13, shift_reg_14, shift_reg_15, shift_reg_16 : signal is "TRUE";
attribute MARK_DEBUG of wr_en_1, wr_en_2 : signal is "TRUE";
attribute MARK_DEBUG of trigger_of_SE1, trigger_of_SE2, trigger_of_SE1_rst, trigger_of_SE2_rst, wr_en_FIFO, data_in_FIFO: signal is "TRUE";
--attribute MARK_DEBUG of RAM_D, RAM_Q, RAM_aD, RAM_D, RAM_aQ, RAM_en, res_data, mark_res_data : signal is "TRUE";

--clk_wiz_0
signal clk_out_250 : STD_LOGIC;
signal clk, clk_ex_buf : STD_LOGIC;				

begin

not_key_1 <= not key(1);

dist_rom_ip_inst : dist_rom_ip
port map (
   a => addr_bus,
   clk => clk,
   qspo => data_bus
);

FIFO_inst : FIFO
port map (
   din => data_in_FIFO,
   wr_en => wr_en_FIFO,
   dout => out_v,
   rd_en => not_key_1,
   clk => clk,
   srst => rst,
   empty => empty,
   full => full
);

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

HZ_UP : clk_wiz_0
   port map ( 
   clk_in1 => clk_ex_buf,    
   clk_out_1 => clk
 );

   BUFG_inst : BUFG
   port map (
      O => clk_ex_buf, -- 1-bit output: Clock output.
      I => clk_ex  -- 1-bit input: Clock input.
   );

-- процесс формирования ctrl_data_write и add_bus
process(clk)
begin
    if rising_edge(clk) then
    
        ctrl_data_write <= out_strob;
    
        if out_strob = '1' then
            addr_bus <= addr_bus + 1;
        end if;
       
       led <= not key;
       
    end if;
end process;

--задерживам строб на 2 такта
process(clk)
begin
    if rising_edge(clk) then
        delay2_out_strob <= ctrl_data_write;
    end if;    

end process;

--вырезание строба
process(clk)
begin
    if rising_edge(clk) then
        out_strob <= reg_key and not key(0);
    end if;
end process;

shift_reg : c_shift_ram_0
port map(
    D(0) => key(0),
    clk => clk,
    Q(0) => reg_key
);

---------------------------------------------------------
process(clk)
begin
    if rising_edge(clk) then
        second_out_strob <= out_strob and not delay2_out_strob;    
        shift_reg_1 <= second_out_strob;
        shift_reg_2 <= shift_reg_1;
        shift_reg_3 <= shift_reg_2;
        shift_reg_4 <= shift_reg_3;
        shift_reg_5 <= shift_reg_4;
        shift_reg_6 <= shift_reg_5;
        shift_reg_7 <= shift_reg_6;
        shift_reg_8 <= shift_reg_7;
        shift_reg_9 <= shift_reg_8;
        shift_reg_10 <= shift_reg_9;
        shift_reg_11 <= shift_reg_10;
        shift_reg_12 <= shift_reg_11;
        shift_reg_13 <= shift_reg_12;
        shift_reg_14 <= shift_reg_13;
        shift_reg_15 <= shift_reg_14;
        shift_reg_16 <= shift_reg_15;
        
    end if;
end process;

--wr_en manager
wr_en_1 <= second_out_strob or shift_reg_4 or shift_reg_8 or shift_reg_12;
wr_en_2 <= shift_reg_2 or shift_reg_6 or shift_reg_10 or shift_reg_14;
mult <= shift_reg_6 or shift_reg_7 or shift_reg_8 or shift_reg_14 or shift_reg_15 or shift_reg_16;

--rst manager
--trigger_of_SE1_rst <= (shift_reg_6 and not shift_reg_5) or (shift_reg_13 and not shift_reg_12);
--trigger_of_SE2_rst <= (shift_reg_8 and not shift_reg_7) or (shift_reg_15 and not shift_reg_14);
or_rst <= (shift_reg_6 and not shift_reg_5) or (shift_reg_13 and not shift_reg_12) or 
          (shift_reg_8 and not shift_reg_7) or (shift_reg_15 and not shift_reg_14);
enabled_or_rst <= or_rst and ctrl_data_write;

wr_en_FIFO <= trigger_of_SE1_rst or trigger_of_SE2_rst;

----sort elements 1 and 2
--process(clk)
--begin
--     if rising_edge(clk) then 
--        if trigger_of_SE1_rst = '1' then
--           trigger_of_SE1 <= (others => '0');                
--        elsif data_bus > trigger_of_SE1 and wr_en_1 = '1' then
--           trigger_of_SE1 <= data_bus;
--        end if;
        
--        if trigger_of_SE2_rst = '1' then
--           trigger_of_SE2 <= (others => '0');                
--        elsif data_bus > trigger_of_SE2 and wr_en_2 = '1' then
--           trigger_of_SE2 <= data_bus;
--        end if;
--    end if;
--end process;

--single sort element
process(clk)
begin
    if data_bus > RAM_Q then
        cmp_res <= '1';
    end if;
    
    if enabled_or_rst = '1' then 
        RAM_D <= (others => '0');
    else
        RAM_D <= data_bus;
    end if;
    
    RAM_en(0) <= enabled_or_rst or cmp_res;
    
    if rising_edge(clk) then
    
        if cmp_res = '1' then 
            res_data <= data_bus;
        else 
            res_data <= RAM_Q;      
        end if;
        
        mark_res_data <= enabled_or_rst;
        
    end if;
end process;

--  counter
process (clk)
begin
   if RAM_aQ = cnt_max then
      cnt_rst <= '0';
   end if; 

   if clk='1' and clk'event then
      if cnt_rst = '1' then
         cnt_out <= (others => '0');
      elsif ctrl_data_write='1' then
         cnt_out <= cnt_out + 1;
      end if;
   end if;
end process;

RAM_aQ <= cnt_out (8 downto 1);

process (clk)
begin
    if rising_edge(clk) then
       RAM_aD <= RAM_aQ;
    end if;
end process;

--mux
data_in_FIFO <= trigger_of_SE1 WHEN trigger_of_SE1_rst = '1' ELSE trigger_of_SE2;


--design_1_wrapper_inst : entity work.design_1_wrapper(Behavioral);
----port map();

end Behavioral;
