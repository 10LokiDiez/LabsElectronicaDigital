library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GORWNAND is

port (

	m, n: in STD_LOGIC;
	q: out STD_LOGIC

);
end GORWNAND;

architecture arq_GORWNAND of GORWNAND is

    component GNOTWNAND

        port (
            a : in STD_LOGIC;
            p : out STD_LOGIC
        );

    end component;

	signal S1,S2: STD_LOGIC;
	
begin	
	
	U1: GNOTWNAND port map(
		a => m,
		p => S1
	);
	
	U2: GNOTWNAND port map(
		a => n,
		p => S2
	);
	
	q <= S1 nand S2;

end arq_GORWNAND;
