library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.math_real.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.vector_alex.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity conv_core is

Generic (
    WideIO : integer := 32;
    SHIFT_data_add : integer := 33;
    mul_delay : integer := 8;
    ctrl_delay : integer := 63;
    
    --inputs
    Num_of_Channels : integer := 3;
    HeightWidht : integer := 416
);

Port (
    weight : in pixels_weights_buses_type;
    pixel  : in pixels_weights_buses_type;

    bias : in STD_LOGIC_VECTOR (WideIO-1 downto 0);
    clk : in STD_LOGIC;
    rst: in STD_LOGIC;
    m_in_pixel : in STD_LOGIC;

    out_pixel : out STD_LOGIC_VECTOR (WideIO-1 downto 0);
    m_out : out STD_LOGIC 
);

end conv_core;

architecture Behavioral of conv_core is

--signal mul_1 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_2 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_3: STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_4 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_5 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_6 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_7 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_8 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal mul_9 : STD_LOGIC_VECTOR (WideIO-1 downto 0);

signal m_out_prev : STD_LOGIC;

type Mul_bus_type is array (8 downto 0) of std_logic_vector(WideIO-1 downto 0);
signal mul_bus : Mul_bus_type;

--signal sum_1_2 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal sum_3_4 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal sum_5_6 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal sum_7_8 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal sum_1_4 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal sum_5_8 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
signal sum_1_8 : STD_LOGIC_VECTOR (WideIO-1 downto 0);
signal sum_result : STD_LOGIC_VECTOR (WideIO-1 downto 0);

type Sum_1lvl_bus_type is array (3 downto 0) of std_logic_vector(WideIO-1 downto 0);
signal sum_1lvl_bus : Sum_1lvl_bus_type;

type Sum_2lvl_bus_type is array (1 downto 0) of std_logic_vector(WideIO-1 downto 0);
signal sum_2lvl_bus : Sum_2lvl_bus_type;

signal AX : STD_LOGIC_VECTOR (WideIO-1 downto 0);
signal MUX_OUT : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal activation : STD_LOGIC_VECTOR (WideIO-1 downto 0);
signal activation_result : STD_LOGIC_VECTOR (WideIO-1 downto 0);
--signal input : STD_LOGIC_VECTOR (0 downto 0);
signal mux_ctrl : STD_LOGIC;
signal mux_ctrl_prev : STD_LOGIC;


--BUF
signal FIFO_OUT : STD_LOGIC_VECTOR (WideIO-1 downto 0);
signal to_wr_en : STD_LOGIC := '0';
signal to_rd_en : STD_LOGIC;

--shift
signal shift_reg_out : STD_LOGIC := '0';

type SHIFT_bus_type is array (SHIFT_data_add downto 0) of std_logic_vector(WideIO-1 downto 0);
signal SHIFT_bus : SHIFT_bus_type;

signal SHIFT_ctrl_delay  : std_logic_vector(ctrl_delay downto 0) := (others => '0');

type SHIFT_bus_to_output_type is array (mul_delay downto 0) of std_logic_vector(WideIO-1 downto 0);
signal SHIFT_bus_to_output : SHIFT_bus_to_output_type;

signal SHIFT_m_delay  : std_logic_vector(mul_delay-1 downto 0) := (others => '0');

--counter 
signal counter_out : STD_LOGIC_VECTOR (10 downto 0);
signal counter_rst : STD_LOGIC;


component FIFO
port (
    din : in STD_LOGIC_VECTOR(WideIO-1 downto 0);
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rst  : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR(WideIO-1 downto 0)
);
end component;

component shift_reg
port(
    D : in STD_LOGIC_VECTOR(0 downto 0);
    Q : out STD_LOGIC_VECTOR(0 downto 0);
    CLK : in STD_LOGIC
);
end component;

component float_sum
port(
    s_axis_a_tdata : in STD_LOGIC_VECTOR(WideIO-1 downto 0);
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR(WideIO-1 downto 0);
    s_axis_b_tvalid : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR(WideIO-1 downto 0); 
    aclk : in STD_LOGIC
);
end component;

component float_mul
port(
    s_axis_a_tdata : in STD_LOGIC_VECTOR(WideIO-1 downto 0);
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR(WideIO-1 downto 0);
    s_axis_b_tvalid : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR(WideIO-1 downto 0);
    aclk : in STD_LOGIC
);
end component;
   
component c_counter_binary_0
port(
    clk : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR(10 downto 0)
);
end component; 
 
begin

FIFO_inst : FIFO
port map(
    din => AX,
    clk => clk,
    wr_en => to_wr_en,
    rd_en => to_rd_en,
    rst => rst,
    dout => FIFO_OUT
);


float_muls:
   for i in 0 to 8 generate
      begin
        mul : float_mul 
        port map(
            s_axis_a_tdata => pixel(i),
            s_axis_a_tvalid => '1',
            s_axis_b_tdata => weight(i),
            s_axis_b_tvalid => '1',
            m_axis_result_tdata => mul_bus(i),
            aclk => clk
        );
   end generate;

float_mul_activation : float_mul
port map(
    s_axis_a_tdata => AX,
    s_axis_a_tvalid => '1',
    s_axis_b_tdata => x"3e000000",
    s_axis_b_tvalid => '1',
    m_axis_result_tdata => activation_result,
    aclk => clk
);

float_sums_1lvl:
   for i in 0 to 3 generate
      begin
      sum : float_sum 
      port map(
          s_axis_a_tdata => mul_bus(2*i),
          s_axis_a_tvalid => '1',
          s_axis_b_tdata => mul_bus(2*i+1),
          s_axis_b_tvalid => '1',
          m_axis_result_tdata => sum_1lvl_bus(i),
          aclk => clk
      );
   end generate;
   
float_sums_2lvl:
    for i in 0 to 1 generate
       begin
         sum : float_sum 
      port map(
          s_axis_a_tdata => sum_1lvl_bus(2*i),
          s_axis_a_tvalid => '1',
          s_axis_b_tdata => sum_1lvl_bus(2*i+1),
          s_axis_b_tvalid => '1',
          m_axis_result_tdata => sum_2lvl_bus(i),
          aclk => clk
      );
    end generate;

float_sum_1_8 : float_sum 
port map(
    s_axis_a_tdata => sum_2lvl_bus(0),
    s_axis_a_tvalid => '1',
    s_axis_b_tdata => sum_2lvl_bus(1),
    s_axis_b_tvalid => '1',
    m_axis_result_tdata => sum_1_8,
    aclk => clk
);

float_sum_1_9 : float_sum 
port map(
    s_axis_a_tdata => sum_1_8,
    s_axis_a_tvalid => '1',
    s_axis_b_tdata => SHIFT_bus(SHIFT_data_add),
    s_axis_b_tvalid => '1',
    m_axis_result_tdata => sum_result,
    aclk => clk
);

float_sum_AX : float_sum 
port map(
    s_axis_a_tdata => sum_result,
    s_axis_a_tvalid => '1',
    s_axis_b_tdata => mux_out,
    s_axis_b_tvalid => '1',
    m_axis_result_tdata => AX,
    aclk => clk
);

-- SHIFT_REGISTERS
SHIFT_bus(0)<= mul_bus(8); 
SHIFT_bus(SHIFT_data_add downto 1) <= SHIFT_bus(SHIFT_data_add-1 downto 0) when rising_edge(clk);

SHIFT_ctrl_delay(0)<= m_in_pixel; 
SHIFT_ctrl_delay(ctrl_delay downto 1) <= SHIFT_ctrl_delay(ctrl_delay-1 downto 0) when rising_edge(clk);
shift_reg_out <= SHIFT_ctrl_delay(ctrl_delay);

SHIFT_bus_to_output(0)<= AX;
SHIFT_bus_to_output(mul_delay downto 1) <= SHIFT_bus_to_output(mul_delay-1 downto 0) when rising_edge(clk);

SHIFT_m_delay(0)<= m_out_prev; 
SHIFT_m_delay(mul_delay-1 downto 1) <= SHIFT_m_delay(mul_delay-2 downto 0) when rising_edge(clk);
m_out<=SHIFT_m_delay(mul_delay-1);



--counter : c_counter_binary_0
--port map(
--    clk => clk,
--    Q => counter_out,
--    CE => shift_reg_out
--);

--COUNTER
process (clk)
begin
    if rising_edge(clk) then
        if (counter_rst or rst) = '1' then
            counter_out <= (others => '0');
        elsif shift_reg_out = '1' then
            counter_out <= counter_out + 1;
        end if;
    end if;
end process;

counter_rst <= '0' WHEN counter_out < HeightWidht*3 ELSE '1';

--input(0) <= m_in_pixel;

mux_out <= bias WHEN mux_ctrl = '1' ELSE FIFO_OUT; 

--out_pixel <= AX(WideIO-1 downto 0) WHEN AX(WideIO-1) = '0' ELSE "000"&AX(WideIO-1 downto 3);

out_pixel <= SHIFT_bus_to_output(mul_delay) WHEN SHIFT_bus_to_output(mul_delay)(WideIO-1) = '0' ELSE activation_result;

--mux_ctrl <= '1' WHEN counter_out < HeightWidht ELSE '0';

mux_ctrl <= mux_ctrl_prev WHEN rising_edge(clk);

mux_ctrl_prev <= '1' WHEN counter_out < HeightWidht-12 ELSE '0';


to_wr_en <= shift_reg_out;

to_rd_en <= not mux_ctrl_prev and shift_reg_out;
 
m_out_prev <= '1' WHEN counter_out > (HeightWidht * (Num_of_Channels-1)) ELSE '0';


 
--SUM <= (weight_1 * pixel_1) + (weight_2 * pixel_2) + (weight_3 * pixel_3)
--     + (weight_4 * pixel_4) + (weight_5 * pixel_5) + (weight_6 * pixel_6) 
--     + (weight_7 * pixel_7) + (weight_8 * pixel_8) + (weight_9 * pixel_9);

end Behavioral;
