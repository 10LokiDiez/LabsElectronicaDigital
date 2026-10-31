library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GANDWNAND is

port (

	m, n: in STD_LOGIC;
	q: out STD_LOGIC

);
end GANDWNAND;

architecture arq_GANDWNAND of GANDWNAND is

    component GNOTWNAND

        port (
            a : in STD_LOGIC;
            p : out STD_LOGIC
        );

    end component;

	signal S1: STD_LOGIC;
	
begin	
	S1  <= m nand n;
	
	U1: GNOTWNAND port map(
		a => S1,
		p => q
	);

end arq_GANDWNAND;
