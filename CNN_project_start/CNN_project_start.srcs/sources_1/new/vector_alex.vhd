library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

package vector_alex is 

constant WideIO : integer := 32;
type pixels_weights_buses_type is array (8 downto 0) of std_logic_vector(WideIO-1 downto 0);

end vector_alex;
