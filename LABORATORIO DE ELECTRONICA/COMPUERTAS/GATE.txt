library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE4 is   
Port (
	a, b, c, d, e, f: in STD_LOGIC;
	s: out STD_LOGIC
);
end GATE4;

architecture arq_GATE4 of GATE4 is

    ------- COMPONENTS OF THE SYSTEM

    -- ENTIDAD GNOT
    component GNOT

        port (
            m : in STD_LOGIC;
            p : out STD_LOGIC
        );

    end component;


    -- ENTIDAD GOR
    component GOR

        port (
            m, n : in STD_LOGIC;
            p    : out STD_LOGIC
        );

    end component;


    -- ENTIDAD GAND
    component GAND

        port (
            m, n : in STD_LOGIC;
            p    : out STD_LOGIC
        );

    end component;
	 
	 -- ENTIDAD GXNOR
    component GXNOR

        port (
            a1, b1 : in STD_LOGIC;
            q    : out STD_LOGIC
        );

    end component;


    ------ SIGNALS

    signal S1, S2, S3, S4, S5 : STD_LOGIC;


begin
	
	U1: GXNOR port map(
		a1 => b,
		b1 => c,
		q => S1
	);
	
	U2: GXNOR port map(
		a1 => d,
		b1 => e,
		q => S2
	);
	
	U3: GAND port map(
		m => S1,
		n => S2,
		p => S3
	);
	
	U4: GOR port map(
		m => a,
		n => S3,
		p => S4
	);
	
	U5: GOR port map(
		m => S3,
		n => f,
		p => S5
	);
	
	U6: GAND port map(
		m => S4,
		n => S5,
		p => s
	);


end arq_GATE4;

