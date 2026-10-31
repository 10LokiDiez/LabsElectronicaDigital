library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GNOTWNAND is

port (

	a: in STD_LOGIC;
	p: out STD_LOGIC

);
end GNOTWNAND;

architecture arq_GNOTWNAND of GNOTWNAND is
	signal S1,S2: STD_LOGIC;
begin	
	
	p <= a nand a;

end arq_GNOTWNAND;
