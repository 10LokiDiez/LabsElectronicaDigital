library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE1 is   
Port (
	a, b, c, d: in STD_LOGIC;
	s: out STD_LOGIC
);
end GATE1;

architecture arq_GATE1 of GATE1 is

    signal S1, S2, S3, S4, S5, S6, S7, S8, S9 : STD_LOGIC;

begin

	S1 <= not a;
	S2 <= S1 and c and d;
	
	S3 <= b and c and d;
	
	S4 <= S1 and b and d;
	
	S5 <= not b;
	S6 <= not c;
	S7 <= not d;
	S8 <= S5 and S6 and S7;
	
	S9 <= a and S6 and S7;
	
	s <= S2 or S3 or S4 or S8 or S9;

end arq_GATE1;

