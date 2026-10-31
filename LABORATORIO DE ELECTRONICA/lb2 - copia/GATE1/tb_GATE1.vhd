library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity tb_GATE1 is


end tb_GATE1;

architecture arq_tb_GATE1 of tb_GATE1 is

component GATE1 is
Port (
		a, b, c, d: in STD_LOGIC;
		s: out STD_LOGIC
		);
end component;


signal Sa, Sb, Sc, Sd, Ss: std_logic;


begin

IC_1: GATE1 Port map (
		
	a => Sa,
	b => Sb,
	c => Sc,
	d => Sd,
	s => Ss
	
);



process begin

--- Estímulos de la simulación wait for 100 ns;

Sa <= '0';
Sb <= '0';
Sc <= '0';
Sd <= '0';

wait for 100 ns;

Sa <= '0';
Sb <= '0';
Sc <= '0';
Sd <= '1';

wait for 100 ns;
Sa <= '0';
Sb <= '0';
Sc <= '1';
Sd <= '0';

wait for 100 ns;
Sa <= '0';
Sb <= '0';
Sc <= '1';
Sd <= '1';

wait for 100 ns;
Sa <= '0';
Sb <= '1';
Sc <= '0';
Sd <= '0';

wait for 100 ns;
Sa <= '0';
Sb <= '1';
Sc <= '0';
Sd <= '1';

wait for 100 ns;
Sa <= '0';
Sb <= '1';
Sc <= '1';
Sd <= '0';

wait for 100 ns;
Sa <= '0';
Sb <= '1';
Sc <= '1';
Sd <= '1';

wait for 100 ns;
Sa <= '1';
Sb <= '0';
Sc <= '0';
Sd <= '0';

wait for 100 ns;
Sa <= '1';
Sb <= '0';
Sc <= '0';
Sd <= '1';

wait for 100 ns;
Sa <= '1';
Sb <= '0';
Sc <= '1';
Sd <= '0';

wait for 100 ns;
Sa <= '1';
Sb <= '0';
Sc <= '1';
Sd <= '1';

wait for 100 ns;
Sa <= '1';
Sb <= '1';
Sc <= '0';
Sd <= '0';

wait for 100 ns;
Sa <= '1';
Sb <= '1';
Sc <= '0';
Sd <= '1';

wait for 100 ns;
Sa <= '1';
Sb <= '1';
Sc <= '1';
Sd <= '0';

wait for 100 ns;
Sa <= '1';
Sb <= '1';
Sc <= '1';
Sd <= '1';

wait for 100 ns;

wait;

end process;

end arq_tb_GATE1;