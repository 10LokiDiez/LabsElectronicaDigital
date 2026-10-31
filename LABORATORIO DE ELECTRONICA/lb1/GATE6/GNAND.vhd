library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GNAND is

port (

	a1, b1: in STD_LOGIC;
	q: out STD_LOGIC

);
end GNAND;

architecture arq_GNAND of GNAND is

component GNOT

        port (
            m : in STD_LOGIC;
            p : out STD_LOGIC
        );

    end component;

    component GAND

        port (
            m, n : in STD_LOGIC;
             p: out STD_LOGIC
        );

    end component;
	 
	 
	 signal S1: STD_LOGIC;

begin
	U1: GAND port map(
		m => a1,
		n => b1,
		p => S1
	);
	
	U2: GNOT port map(
		m => S1,
		p => q
	);

end arq_GNAND;