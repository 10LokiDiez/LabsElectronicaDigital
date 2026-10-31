library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE4 is

port (
	--n2 no se usa
	b1,b2,n1: in STD_LOGIC;
	s: out STD_LOGIC

);
end GATE4;

architecture arq_GATE4 of GATE4 is

    component GNOTWNAND

        port (
            a : in STD_LOGIC;
            p : out STD_LOGIC
        );

    end component;
	 
	 component GANDWNAND

        port (
            m,n : in STD_LOGIC;
            q : out STD_LOGIC
        );

    end component;
	 
	 component GORWNAND

        port (
            m,n : in STD_LOGIC;
            q : out STD_LOGIC
        );

    end component;

	signal S1,S2,S3,S4: STD_LOGIC;
	
begin	
	
	U1: GNOTWNAND port map(
		a => b1,
		p => S1
	);
	
	U2: GANDWNAND port map(
		m => S1,
		n => n1,
		q => S2
	);
	
	U3: GNOTWNAND port map(
		a => b2,
		p => S3
	);
	
	U4: GANDWNAND port map(
		m => b1,
		n => S3,
		q => S4
	);
	
	U5: GORWNAND port map(
		m => S2,
		n => S4,
		q => s
	);

end arq_GATE4;
