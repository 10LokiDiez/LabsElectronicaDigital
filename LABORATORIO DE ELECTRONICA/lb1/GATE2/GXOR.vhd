library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GXOR is

port (

	a1, b1: in STD_LOGIC;
	q: out STD_LOGIC

);
end GXOR;

architecture arq_GXOR of GXOR is

component GNOT

        port (
            m : in STD_LOGIC;
            p : out STD_LOGIC
        );

    end component;

    component GOR

        port (
            m, n : in STD_LOGIC;
             p: out STD_LOGIC
        );

    end component;
	 
	 component GAND

        port (
            m, n : in STD_LOGIC;
             p: out STD_LOGIC
        );

    end component;
	 
	 signal S1,S2,S3,S4: STD_LOGIC;

begin
	U1: GNOT port map(
		m => a1,
		p => S1
	);
	
	U2: GNOT port map(
		m => b1,
		p => S2
	);
	
	U3: GAND port map(
		m => S1,
		n => b1,
		p => S3
	);
	
	U4: GAND port map(
		m => a1,
		n => S2,
		p => S4
	);
	
	U5: GOR port map(
		m => S3,
		n => S4,
		p => q
	);

end arq_GXOR;

