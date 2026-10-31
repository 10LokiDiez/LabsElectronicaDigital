library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE2 is   
Port (
	a, b, c, d, e: in STD_LOGIC;
	s: out STD_LOGIC
);
end GATE2;

architecture arq_GATE2 of GATE2 is

    signal S1, S2, S3, S4, S5, S6, S7, S8: STD_LOGIC;

begin

	S1 <= (not a) and (not b) and (not c);
	
	S2 <= (not a) and (not b) and d;
	
	S3 <= (not a) and c and d and e;
	
	S4 <= (not a) and b and (not d) and e;
	
	S5 <= (not a) and (not c) and (not e) ;
	
	S6 <= a and (not b) and e;
	
	S7 <= a and c and (not d) and e;
	
	S8 <= a and b and c and (not e);
	
	s <= S1 or S2 or S3 or S4 or S5 or S6 or S7 or S8;

end arq_GATE2;
