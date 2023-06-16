library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_AXI is
    Port  (data_to_ddr              : in STD_LOGIC_VECTOR(63 downto 0);
           data_to_ddr_valid        : in STD_LOGIC;
           query_strob              : in STD_LOGIC;
           rd_wr_en                 : in STD_LOGIC;
           rd_burst_finish          : in STD_LOGIC;
           wr_burst_data_req        : in STD_LOGIC;
           wr_burst_finish          : in STD_LOGIC;
           clk                      : in  STD_LOGIC;
           reset_global             : in STD_LOGIC;
           ---------------------------------------
           rd_burst_req             : out STD_LOGIC;
           wr_burst_data            : out STD_LOGIC_VECTOR(63 downto 0);
           wr_burst_req             : out STD_LOGIC
           );
end control_AXI;

architecture Behavioral of control_AXI is

signal FF_wr_out, FF_rd_out : STD_LOGIC := '0';
signal FF_wr_req, FF_rd_req : STD_LOGIC := '0';

component FIFO_generator_0
port (
            full  : out STD_LOGIC;
            empty : out STD_LOGIC;
            valid : out STD_LOGIC;
            dout  : out STD_LOGIC_VECTOR(63 downto 0);
            
            din   : in STD_LOGIC_VECTOR(63 downto 0);
            wr_en : in STD_LOGIC;
            rd_en : in STD_LOGIC;
            clk   : in STD_LOGIC;
            rst   : in STD_LOGIC
      );
 end component;
     
 begin
      
      FIFO_AXI : fifo_generator_0
      port map (
      full  => open,
      empty => open,
      valid => open,
      dout  => wr_burst_data,
      din   => data_to_ddr,
      wr_en => data_to_ddr_valid,
      rd_en => wr_burst_data_req,
      clk   => clk,
      rst   => reset_global
    );
    
process(clk)
begin
    if rising_edge(clk) then
        FF_wr_out <= query_strob and rd_wr_en;      
        FF_rd_out <= query_strob and not rd_wr_en;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if(reset_global or wr_burst_finish) = '1' then
            FF_wr_req <= '0';
        elsif ( FF_wr_out = '1') then
            FF_wr_req <= '1';
        end if;
        
        if(reset_global or rd_burst_finish) = '1' then
            FF_rd_req <= '0';
        elsif ( FF_rd_out = '1') then
            FF_rd_req <= '1';
        end if;
    end if;
end process;

wr_burst_req <= FF_wr_req;
rd_burst_req <= FF_rd_req;

end Behavioral;