library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity tb_GATE4 is


end tb_GATE4;

architecture arq_tb_GATE4 of tb_GATE4 is

component GATE4 is
Port (
		b1, b2, n1: in STD_LOGIC;
		s: out STD_LOGIC
		);
end component;


signal Sb1,Sb2,Sn1,Ss: std_logic;


begin

IC_1: GATE4 Port map (
		
	b1 => Sb1,
	b2 => Sb2,
	n1 => Sn1,
	s => Ss
	
);



process begin

--- Estímulos de la simulación wait for 100 ns;

Sb1 <= '0';
Sb2 <= '0';
Sn1 <= '0';

wait for 100 ns;

Sb1 <= '0';
Sb2 <= '0';
Sn1 <= '1';

wait for 100 ns;
Sb1 <= '0';
Sb2 <= '1';
Sn1 <= '0';

wait for 100 ns;
Sb1 <= '0';
Sb2 <= '1';
Sn1 <= '1';

wait for 100 ns;
Sb1 <= '1';
Sb2 <= '0';
Sn1 <= '0';

wait for 100 ns;
Sb1 <= '1';
Sb2 <= '0';
Sn1 <= '1';

wait for 100 ns;
Sb1 <= '1';
Sb2 <= '1';
Sn1 <= '0';

wait for 100 ns;
Sb1 <= '1';
Sb2 <= '1';
Sn1 <= '1';

wait for 100 ns;
wait;

end process;

end arq_tb_GATE4;