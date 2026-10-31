library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity tb_GATE3 is


end tb_GATE3;

architecture arq_tb_GATE3 of tb_GATE3 is

component GATE3 is
Port (
		a, b: in STD_LOGIC;
		s: out STD_LOGIC
		);
end component;


signal Sa, Sb, Ss: std_logic;


begin

IC_1: GATE3 Port map (
		
	a => Sa,
	b => Sb,
	s => Ss
	
);



process begin

--- Estímulos de la simulación wait for 100 ns;

Sa <= '0';
Sb <= '0';

wait for 100 ns;

Sa <= '0';
Sb <= '1';

wait for 100 ns;

Sa <= '1';
Sb <= '0';

wait for 100 ns;

Sa <= '1';
Sb <= '1';

wait for 100 ns;


wait;

end process;

end arq_tb_GATE3;