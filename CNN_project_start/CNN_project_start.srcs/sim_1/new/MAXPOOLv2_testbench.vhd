----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2022 16:01:00
-- Design Name: 
-- Module Name: MAXPOOLv2_testbench - Behavioral
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

entity MAXPOOLv2_testbench is
--  Port ( );
end MAXPOOLv2_testbench;

architecture Behavioral of MAXPOOLv2_testbench is

-- clock settings
signal   clk : std_logic := '0'; 
constant PERIOD : time := 10 ns;
constant DUTY_CYCLE : real := 0.5;
constant OFFSET : time := 1.5 ns;

--  test signals to ports
signal m_data_test    : STD_LOGIC := '0';
signal in_data_test : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal clk_test     : STD_LOGIC := '0';
signal R_test         : STD_LOGIC := '0';
signal output_test    : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal m_output_test  : STD_LOGIC; 

-- signals to ports registered
signal m_data_rg    : STD_LOGIC := '0';
signal in_data_rg   : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal R_rg         : STD_LOGIC := '0';
signal output_rg    : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal m_output_rg  : STD_LOGIC := '0';

constant maxpool_size : integer := 26;

type test_data_row is array (1 to maxpool_size) of std_logic_vector(15 downto 0);
type test_data is array (1 to maxpool_size) of test_data_row;

constant test_data_values : test_data := (
	1  => (
		1 => x"848c",
		2 => x"e68e",
		3 => x"71eb",
		4 => x"63f1",
		5 => x"75a7",
		6 => x"b0d4",
		7 => x"9883",
		8 => x"fbd8",
		9 => x"7469",
		10 => x"4136",
		11 => x"267e",
		12 => x"78b6",
		13 => x"9b86",
		14 => x"51f1",
		15 => x"b0b7",
		16 => x"20c8",
		17 => x"2567",
		18 => x"79fb",
		19 => x"4000",
		20 => x"d5ef",
		21 => x"1e34",
		22 => x"4b50",
		23 => x"3d4a",
		24 => x"77c5",
		25 => x"5396",
		26 => x"77cd"),

	2  => (
		1 => x"f30f",
		2 => x"2ac0",
		3 => x"6046",
		4 => x"7132",
		5 => x"1b6c",
		6 => x"a7c5",
		7 => x"dcfc",
		8 => x"4896",
		9 => x"7ab9",
		10 => x"3d75",
		11 => x"bb55",
		12 => x"2fdc",
		13 => x"530d",
		14 => x"9c1e",
		15 => x"b08e",
		16 => x"25c3",
		17 => x"719d",
		18 => x"e400",
		19 => x"36de",
		20 => x"e043",
		21 => x"fc50",
		22 => x"517e",
		23 => x"d75f",
		24 => x"c397",
		25 => x"61bb",
		26 => x"fdff"),

	3  => (
		1 => x"bcff",
		2 => x"2499",
		3 => x"66c1",
		4 => x"c895",
		5 => x"0155",
		6 => x"7b24",
		7 => x"872f",
		8 => x"7227",
		9 => x"8f46",
		10 => x"d91e",
		11 => x"319a",
		12 => x"02ef",
		13 => x"68dd",
		14 => x"bdab",
		15 => x"aced",
		16 => x"a3ca",
		17 => x"01b5",
		18 => x"3916",
		19 => x"0010",
		20 => x"d82b",
		21 => x"c74d",
		22 => x"8bc9",
		23 => x"b4a7",
		24 => x"b090",
		25 => x"6fd1",
		26 => x"0805"),

	4  => (
		1 => x"317a",
		2 => x"8e60",
		3 => x"0ba2",
		4 => x"91af",
		5 => x"8828",
		6 => x"6bb5",
		7 => x"8fdc",
		8 => x"b85f",
		9 => x"18f7",
		10 => x"2908",
		11 => x"e35f",
		12 => x"cecb",
		13 => x"8250",
		14 => x"4315",
		15 => x"b1bc",
		16 => x"524e",
		17 => x"79eb",
		18 => x"73b3",
		19 => x"feb2",
		20 => x"0d96",
		21 => x"49ea",
		22 => x"0a5f",
		23 => x"31be",
		24 => x"a913",
		25 => x"18af",
		26 => x"6c3e"),

	5  => (
		1 => x"26d1",
		2 => x"52dd",
		3 => x"782b",
		4 => x"9f6a",
		5 => x"e859",
		6 => x"2e07",
		7 => x"c546",
		8 => x"ecd7",
		9 => x"85f5",
		10 => x"beff",
		11 => x"8111",
		12 => x"2170",
		13 => x"18e8",
		14 => x"73a8",
		15 => x"b86d",
		16 => x"b71b",
		17 => x"c4b0",
		18 => x"a3c5",
		19 => x"ce4f",
		20 => x"6388",
		21 => x"aaea",
		22 => x"e9a2",
		23 => x"7270",
		24 => x"0e22",
		25 => x"6bed",
		26 => x"d46a"),

	6  => (
		1 => x"2377",
		2 => x"99c5",
		3 => x"4e2c",
		4 => x"5474",
		5 => x"2640",
		6 => x"3097",
		7 => x"7fc3",
		8 => x"efed",
		9 => x"d277",
		10 => x"9d3c",
		11 => x"9d4c",
		12 => x"66a2",
		13 => x"426e",
		14 => x"3b35",
		15 => x"dd6c",
		16 => x"294d",
		17 => x"44b2",
		18 => x"254b",
		19 => x"d608",
		20 => x"f3ae",
		21 => x"9ad4",
		22 => x"2644",
		23 => x"6873",
		24 => x"f8cb",
		25 => x"10d9",
		26 => x"6b90"),

	7  => (
		1 => x"2ae9",
		2 => x"c5d8",
		3 => x"703a",
		4 => x"e5fd",
		5 => x"59e8",
		6 => x"9c79",
		7 => x"9dd2",
		8 => x"c256",
		9 => x"82d2",
		10 => x"16d1",
		11 => x"16f7",
		12 => x"1139",
		13 => x"baad",
		14 => x"6783",
		15 => x"d281",
		16 => x"07cc",
		17 => x"4110",
		18 => x"a43b",
		19 => x"42ae",
		20 => x"d94e",
		21 => x"fb2c",
		22 => x"c596",
		23 => x"e801",
		24 => x"f3aa",
		25 => x"5104",
		26 => x"e9fc"),

	8  => (
		1 => x"4a45",
		2 => x"3f08",
		3 => x"3548",
		4 => x"8866",
		5 => x"40a6",
		6 => x"3468",
		7 => x"5720",
		8 => x"34ce",
		9 => x"4ee6",
		10 => x"68ce",
		11 => x"76bd",
		12 => x"2c9c",
		13 => x"5269",
		14 => x"2316",
		15 => x"c716",
		16 => x"3da0",
		17 => x"d6c3",
		18 => x"b82d",
		19 => x"461b",
		20 => x"4184",
		21 => x"29d8",
		22 => x"7951",
		23 => x"25a4",
		24 => x"e8ea",
		25 => x"8be9",
		26 => x"921c"),

	9  => (
		1 => x"1714",
		2 => x"3b8a",
		3 => x"8c38",
		4 => x"db7d",
		5 => x"216b",
		6 => x"eab3",
		7 => x"659d",
		8 => x"8272",
		9 => x"d497",
		10 => x"d35b",
		11 => x"0e96",
		12 => x"a3f9",
		13 => x"3e85",
		14 => x"143c",
		15 => x"8b25",
		16 => x"087e",
		17 => x"b297",
		18 => x"7b8c",
		19 => x"d224",
		20 => x"d477",
		21 => x"4f9f",
		22 => x"a84d",
		23 => x"f692",
		24 => x"858e",
		25 => x"21b0",
		26 => x"be60"),

	10  => (
		1 => x"2b46",
		2 => x"7637",
		3 => x"f8da",
		4 => x"d108",
		5 => x"8856",
		6 => x"f605",
		7 => x"3a8c",
		8 => x"9769",
		9 => x"032d",
		10 => x"a9fb",
		11 => x"143b",
		12 => x"bb16",
		13 => x"b807",
		14 => x"c86c",
		15 => x"56e6",
		16 => x"e418",
		17 => x"4267",
		18 => x"0ea5",
		19 => x"247c",
		20 => x"4d82",
		21 => x"370d",
		22 => x"c28a",
		23 => x"e98d",
		24 => x"ba55",
		25 => x"eb2f",
		26 => x"7761"),

	11  => (
		1 => x"0c61",
		2 => x"7f13",
		3 => x"bc33",
		4 => x"0d10",
		5 => x"6b43",
		6 => x"671b",
		7 => x"f01d",
		8 => x"52ea",
		9 => x"fc89",
		10 => x"c201",
		11 => x"34fa",
		12 => x"8393",
		13 => x"5529",
		14 => x"41bb",
		15 => x"dbe9",
		16 => x"7e1e",
		17 => x"2ee6",
		18 => x"b766",
		19 => x"a9a0",
		20 => x"ad7f",
		21 => x"2e36",
		22 => x"96c8",
		23 => x"2ed9",
		24 => x"684b",
		25 => x"78d0",
		26 => x"7ea7"),

	12  => (
		1 => x"8d37",
		2 => x"c32c",
		3 => x"84d1",
		4 => x"dcc2",
		5 => x"1bed",
		6 => x"e05b",
		7 => x"7b10",
		8 => x"0f26",
		9 => x"9753",
		10 => x"e6d5",
		11 => x"e123",
		12 => x"c925",
		13 => x"2d32",
		14 => x"68eb",
		15 => x"a353",
		16 => x"a18b",
		17 => x"34fa",
		18 => x"6068",
		19 => x"72b1",
		20 => x"2aa2",
		21 => x"6aa4",
		22 => x"a117",
		23 => x"0d88",
		24 => x"8444",
		25 => x"bf6d",
		26 => x"3229"),

	13  => (
		1 => x"7b37",
		2 => x"9362",
		3 => x"9308",
		4 => x"9195",
		5 => x"7c88",
		6 => x"ed17",
		7 => x"cd0e",
		8 => x"355b",
		9 => x"f4c3",
		10 => x"ab10",
		11 => x"d601",
		12 => x"fbc7",
		13 => x"21f8",
		14 => x"68f7",
		15 => x"3e1a",
		16 => x"f3f8",
		17 => x"84d0",
		18 => x"30f5",
		19 => x"fd7f",
		20 => x"54b2",
		21 => x"d450",
		22 => x"ab6e",
		23 => x"0d1f",
		24 => x"42b9",
		25 => x"0de2",
		26 => x"eb9f"),

	14  => (
		1 => x"0bdb",
		2 => x"7e56",
		3 => x"ab8f",
		4 => x"abbd",
		5 => x"b460",
		6 => x"36ae",
		7 => x"e31c",
		8 => x"3f98",
		9 => x"7896",
		10 => x"985e",
		11 => x"bae0",
		12 => x"4aed",
		13 => x"7ff2",
		14 => x"9e79",
		15 => x"5d59",
		16 => x"2688",
		17 => x"74ca",
		18 => x"b00b",
		19 => x"42b2",
		20 => x"e2f4",
		21 => x"859d",
		22 => x"ece5",
		23 => x"8613",
		24 => x"c7c1",
		25 => x"54ad",
		26 => x"1f87"),

	15  => (
		1 => x"e2de",
		2 => x"9317",
		3 => x"3b01",
		4 => x"8654",
		5 => x"a4a6",
		6 => x"f9be",
		7 => x"7557",
		8 => x"82f5",
		9 => x"3343",
		10 => x"3d7e",
		11 => x"41e6",
		12 => x"493f",
		13 => x"a0f1",
		14 => x"8bbd",
		15 => x"1f93",
		16 => x"6c5b",
		17 => x"0094",
		18 => x"214f",
		19 => x"bae9",
		20 => x"bfc2",
		21 => x"0fbd",
		22 => x"96a6",
		23 => x"dc54",
		24 => x"dbb2",
		25 => x"ccc2",
		26 => x"5c4b"),

	16  => (
		1 => x"a1e5",
		2 => x"2136",
		3 => x"9652",
		4 => x"33a9",
		5 => x"58c3",
		6 => x"096d",
		7 => x"7f16",
		8 => x"5850",
		9 => x"150c",
		10 => x"c2e7",
		11 => x"4fc5",
		12 => x"8cd2",
		13 => x"aeb8",
		14 => x"c092",
		15 => x"a56b",
		16 => x"7e15",
		17 => x"f870",
		18 => x"70ff",
		19 => x"f28c",
		20 => x"5a22",
		21 => x"c30a",
		22 => x"6f38",
		23 => x"1d7f",
		24 => x"bc89",
		25 => x"b24a",
		26 => x"965f"),

	17  => (
		1 => x"81ab",
		2 => x"485f",
		3 => x"6b16",
		4 => x"1091",
		5 => x"8dc6",
		6 => x"bf01",
		7 => x"69d7",
		8 => x"df07",
		9 => x"f9eb",
		10 => x"cd44",
		11 => x"5fc8",
		12 => x"a026",
		13 => x"5b11",
		14 => x"5c14",
		15 => x"d6dc",
		16 => x"64f1",
		17 => x"5b07",
		18 => x"63b4",
		19 => x"a5d5",
		20 => x"56ad",
		21 => x"1f0d",
		22 => x"0290",
		23 => x"a569",
		24 => x"32d1",
		25 => x"fcc8",
		26 => x"5b6b"),

	18  => (
		1 => x"f69d",
		2 => x"2312",
		3 => x"bcc5",
		4 => x"69a4",
		5 => x"9cd3",
		6 => x"7672",
		7 => x"18b6",
		8 => x"4664",
		9 => x"2160",
		10 => x"440a",
		11 => x"85dc",
		12 => x"60da",
		13 => x"8b4f",
		14 => x"4b19",
		15 => x"468b",
		16 => x"2e97",
		17 => x"b95c",
		18 => x"69ef",
		19 => x"a2d2",
		20 => x"652c",
		21 => x"c9ad",
		22 => x"b472",
		23 => x"ff67",
		24 => x"7422",
		25 => x"60ae",
		26 => x"9ae3"),

	19  => (
		1 => x"5070",
		2 => x"aaa2",
		3 => x"afd9",
		4 => x"3858",
		5 => x"2a15",
		6 => x"c0c2",
		7 => x"7574",
		8 => x"b9e5",
		9 => x"f060",
		10 => x"aa88",
		11 => x"fb6d",
		12 => x"e86e",
		13 => x"3644",
		14 => x"fde4",
		15 => x"b4f5",
		16 => x"fddc",
		17 => x"4cb0",
		18 => x"1938",
		19 => x"bbab",
		20 => x"cc76",
		21 => x"59e6",
		22 => x"e172",
		23 => x"323c",
		24 => x"a442",
		25 => x"b5c2",
		26 => x"8f66"),

	20  => (
		1 => x"a868",
		2 => x"85e4",
		3 => x"e873",
		4 => x"10b9",
		5 => x"dc64",
		6 => x"7b98",
		7 => x"a226",
		8 => x"f2ff",
		9 => x"d6e6",
		10 => x"738e",
		11 => x"a68c",
		12 => x"4edf",
		13 => x"96b0",
		14 => x"fd4f",
		15 => x"3503",
		16 => x"d56a",
		17 => x"f984",
		18 => x"a414",
		19 => x"889d",
		20 => x"c88b",
		21 => x"0c0f",
		22 => x"f82a",
		23 => x"bec3",
		24 => x"4284",
		25 => x"f78b",
		26 => x"8585"),

	21  => (
		1 => x"f440",
		2 => x"3d8e",
		3 => x"2fd8",
		4 => x"21de",
		5 => x"86fc",
		6 => x"cb26",
		7 => x"952a",
		8 => x"52b4",
		9 => x"61ba",
		10 => x"21a9",
		11 => x"09ad",
		12 => x"9c8a",
		13 => x"e6f1",
		14 => x"1a15",
		15 => x"4a5b",
		16 => x"d960",
		17 => x"a414",
		18 => x"6ef1",
		19 => x"664d",
		20 => x"a4b3",
		21 => x"164c",
		22 => x"e82f",
		23 => x"992a",
		24 => x"f784",
		25 => x"e391",
		26 => x"4319"),

	22  => (
		1 => x"bca1",
		2 => x"330e",
		3 => x"79c5",
		4 => x"a47e",
		5 => x"dd9e",
		6 => x"6f6f",
		7 => x"c694",
		8 => x"276c",
		9 => x"5735",
		10 => x"5760",
		11 => x"2003",
		12 => x"7f2d",
		13 => x"22ec",
		14 => x"fec2",
		15 => x"3328",
		16 => x"ff40",
		17 => x"78dd",
		18 => x"034d",
		19 => x"dee9",
		20 => x"5265",
		21 => x"1d65",
		22 => x"73b6",
		23 => x"c833",
		24 => x"4e2f",
		25 => x"931e",
		26 => x"d2b6"),

	23  => (
		1 => x"f850",
		2 => x"4ca0",
		3 => x"c72a",
		4 => x"8642",
		5 => x"c4f0",
		6 => x"2a21",
		7 => x"7869",
		8 => x"7e2e",
		9 => x"d6ba",
		10 => x"0273",
		11 => x"7ece",
		12 => x"a7c2",
		13 => x"ce7d",
		14 => x"2f94",
		15 => x"0756",
		16 => x"2094",
		17 => x"168d",
		18 => x"810d",
		19 => x"bcef",
		20 => x"fc0b",
		21 => x"ac5e",
		22 => x"5130",
		23 => x"6b79",
		24 => x"c4fa",
		25 => x"8a0e",
		26 => x"cc4c"),

	24  => (
		1 => x"0fa9",
		2 => x"18f9",
		3 => x"9b03",
		4 => x"b97c",
		5 => x"8005",
		6 => x"128a",
		7 => x"5147",
		8 => x"9f8e",
		9 => x"ae2a",
		10 => x"d633",
		11 => x"6274",
		12 => x"b0ac",
		13 => x"11db",
		14 => x"e8ef",
		15 => x"20f8",
		16 => x"6dfe",
		17 => x"160b",
		18 => x"a3ef",
		19 => x"f4f8",
		20 => x"96c6",
		21 => x"a0d4",
		22 => x"1e0b",
		23 => x"0829",
		24 => x"ffa4",
		25 => x"dff7",
		26 => x"3e14"),

	25  => (
		1 => x"b437",
		2 => x"8e5e",
		3 => x"e6fe",
		4 => x"b99a",
		5 => x"bed8",
		6 => x"c7cb",
		7 => x"36d9",
		8 => x"ecd7",
		9 => x"4792",
		10 => x"0a11",
		11 => x"aa5a",
		12 => x"ca54",
		13 => x"f36c",
		14 => x"e4dd",
		15 => x"39b2",
		16 => x"df1b",
		17 => x"cb60",
		18 => x"2372",
		19 => x"6eca",
		20 => x"60b8",
		21 => x"4c90",
		22 => x"8bba",
		23 => x"e40e",
		24 => x"39d1",
		25 => x"9754",
		26 => x"aebe"),

	26  => (
		1 => x"96ca",
		2 => x"d678",
		3 => x"6fd9",
		4 => x"c40d",
		5 => x"5524",
		6 => x"2bbd",
		7 => x"2375",
		8 => x"9b5a",
		9 => x"a4e9",
		10 => x"742c",
		11 => x"6df4",
		12 => x"fdc2",
		13 => x"16a8",
		14 => x"0862",
		15 => x"679b",
		16 => x"4725",
		17 => x"ef99",
		18 => x"d426",
		19 => x"31a7",
		20 => x"6bbb",
		21 => x"88fe",
		22 => x"84fd",
		23 => x"19f6",
		24 => x"7a6a",
		25 => x"e40c",
		26 => x"3f51")
);

begin

    MAXPOOLv2_inst : entity work.MAXPOOLv2(Behavioral)
    port map(
        m_data      => m_data_rg,
        in_data     => in_data_rg,
        clk         => clk_test,
        R           => R_rg,
        m_output    => m_output_rg
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
        
        for i in 1 to maxpool_size loop
            for j in 1 to maxpool_size loop
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
            m_data_rg   <= m_data_test;       
            in_data_rg  <= in_data_test;    
            R_rg        <= R_test;   
        end if;
     
    end process;


end Behavioral;
