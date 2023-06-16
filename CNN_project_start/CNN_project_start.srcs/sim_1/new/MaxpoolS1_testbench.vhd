----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.12.2022 10:58:15
-- Design Name: 
-- Module Name: MaxpoolS1_testbench - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MaxpoolS1_testbench is
--  Port ( );
end MaxpoolS1_testbench;

architecture Behavioral of MaxpoolS1_testbench is

-- clock settings
signal   clk : std_logic := '0'; 
constant PERIOD : time := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET : time := 1.5 ns;

--  test signals to ports
signal in_data_test         : std_logic_vector(15 downto 0) :=  (others => '0');
signal m_data_test          : std_logic := '0';
signal clk_test             : std_logic := '0';
signal reset_Nfilter_test   : std_logic := '0';
signal global_reset_test    : std_logic := '0';

signal output_test          : std_logic_vector(15 downto 0) :=  (others => '0');
signal m_output_test        : std_logic := '0';

-- signals to ports registered
signal in_data_rg         : std_logic_vector(15 downto 0) :=  (others => '0');
signal m_data_rg          : std_logic := '0';
signal reset_Nfilter_rg   : std_logic := '0';
signal global_reset_rg    : std_logic := '0';

type test_data_row is array (1 to 14) of std_logic_vector(15 downto 0);
type test_data is array (1 to 14) of test_data_row;

constant test_data_values : test_data := (
	1  => (
		1 => x"c733",
		2 => x"d66c",
		3 => x"723e",
		4 => x"0cf6",
		5 => x"8aeb",
		6 => x"0ef2",
		7 => x"3feb",
		8 => x"6758",
		9 => x"92bf",
		10 => x"4df5",
		11 => x"f415",
		12 => x"782c",
		13 => x"1f0f",
		14 => x"0000"),

	2  => (
		1 => x"adda",
		2 => x"39fc",
		3 => x"7a17",
		4 => x"1b17",
		5 => x"1950",
		6 => x"e67c",
		7 => x"da19",
		8 => x"26ad",
		9 => x"d36d",
		10 => x"5b62",
		11 => x"fede",
		12 => x"19a5",
		13 => x"3af0",
		14 => x"0000"),

	3  => (
		1 => x"31be",
		2 => x"d0bc",
		3 => x"5136",
		4 => x"c072",
		5 => x"a284",
		6 => x"e694",
		7 => x"857f",
		8 => x"436c",
		9 => x"7347",
		10 => x"dd59",
		11 => x"4efa",
		12 => x"dfd9",
		13 => x"eb8f",
		14 => x"0000"),

	4  => (
		1 => x"008e",
		2 => x"dbb5",
		3 => x"d41f",
		4 => x"bac7",
		5 => x"6b06",
		6 => x"1dff",
		7 => x"5143",
		8 => x"8763",
		9 => x"b5f7",
		10 => x"a22f",
		11 => x"f67a",
		12 => x"6b2b",
		13 => x"dabc",
		14 => x"0000"),

	5  => (
		1 => x"1a5e",
		2 => x"9858",
		3 => x"51fa",
		4 => x"2341",
		5 => x"e857",
		6 => x"15fb",
		7 => x"5c1d",
		8 => x"6c84",
		9 => x"ecab",
		10 => x"ec89",
		11 => x"f433",
		12 => x"39fb",
		13 => x"a11a",
		14 => x"0000"),

	6  => (
		1 => x"fd3f",
		2 => x"acb7",
		3 => x"03c9",
		4 => x"b48f",
		5 => x"69be",
		6 => x"de13",
		7 => x"78fa",
		8 => x"29d1",
		9 => x"c69b",
		10 => x"b66c",
		11 => x"e1ca",
		12 => x"5084",
		13 => x"e7a5",
		14 => x"0000"),

	7  => (
		1 => x"f481",
		2 => x"ac1d",
		3 => x"1671",
		4 => x"e30e",
		5 => x"e733",
		6 => x"c1c4",
		7 => x"f71f",
		8 => x"9325",
		9 => x"2b88",
		10 => x"c3f0",
		11 => x"01db",
		12 => x"8339",
		13 => x"2fcb",
		14 => x"0000"),

	8  => (
		1 => x"a994",
		2 => x"ee2d",
		3 => x"977d",
		4 => x"e4f4",
		5 => x"38fe",
		6 => x"8fca",
		7 => x"7d07",
		8 => x"1da0",
		9 => x"c97a",
		10 => x"d2cb",
		11 => x"b338",
		12 => x"0c5d",
		13 => x"7359",
		14 => x"0000"),

	9  => (
		1 => x"07e8",
		2 => x"d97a",
		3 => x"302a",
		4 => x"7578",
		5 => x"a455",
		6 => x"f44d",
		7 => x"d3c6",
		8 => x"2f49",
		9 => x"198d",
		10 => x"adc8",
		11 => x"ee82",
		12 => x"e8d7",
		13 => x"f5c8",
		14 => x"0000"),

	10  => (
		1 => x"82da",
		2 => x"4825",
		3 => x"c68c",
		4 => x"1fef",
		5 => x"42b0",
		6 => x"ae6e",
		7 => x"ce03",
		8 => x"d3d2",
		9 => x"e6ed",
		10 => x"2371",
		11 => x"8815",
		12 => x"74f8",
		13 => x"21f3",
		14 => x"0000"),

	11  => (
		1 => x"ecb3",
		2 => x"8503",
		3 => x"6752",
		4 => x"9f28",
		5 => x"08ce",
		6 => x"664f",
		7 => x"0c24",
		8 => x"4886",
		9 => x"a846",
		10 => x"248b",
		11 => x"d291",
		12 => x"d656",
		13 => x"da62",
		14 => x"0000"),

	12  => (
		1 => x"aee3",
		2 => x"333f",
		3 => x"f5bf",
		4 => x"efbf",
		5 => x"f74e",
		6 => x"f97f",
		7 => x"6b4b",
		8 => x"4a9b",
		9 => x"bf72",
		10 => x"e33d",
		11 => x"9dee",
		12 => x"2ec8",
		13 => x"caaa",
		14 => x"0000"),

	13  => (
		1 => x"d71a",
		2 => x"50b3",
		3 => x"9908",
		4 => x"9c0b",
		5 => x"21be",
		6 => x"4e22",
		7 => x"dc31",
		8 => x"de79",
		9 => x"16ec",
		10 => x"fe6e",
		11 => x"d7f3",
		12 => x"4511",
		13 => x"19a0",
		14 => x"0000"),

	14  => (
		1 => x"0000",
		2 => x"0000",
		3 => x"0000",
		4 => x"0000",
		5 => x"0000",
		6 => x"0000",
		7 => x"0000",
		8 => x"0000",
		9 => x"0000",
		10 => x"0000",
		11 => x"0000",
		12 => x"0000",
		13 => x"0000",
		14 => x"0000")
);


begin


    MaxpoolS1_inst : entity work.MaxpoolS1(Behavioral)
    port map(
        in_data         => in_data_rg,      
        m_data          => m_data_rg,       
        clk             => clk_test,          
        reset_Nfilter   => reset_Nfilter_rg,
        global_reset    => global_reset_rg, 
                         
        output          => output_test,  
        m_output        => m_output_test    
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
        
        for i in 1 to 14 loop
            for j in 1 to 14 loop
                in_data_test <= test_data_values(i)(j);
                m_data_test <= '1';
                wait for period;
            end loop;
            m_data_test <= '0';
            wait for period * 10;
        end loop;
    
    end process;    
    
    process(clk_test)
    begin
    
        if rising_edge(clk_test) then
            in_data_rg        <= in_data_test;            
            m_data_rg         <= m_data_test;                   
            reset_Nfilter_rg  <= reset_Nfilter_test;
            global_reset_rg   <= global_reset_test;        
        end if;
     
    end process;
    
end Behavioral;
