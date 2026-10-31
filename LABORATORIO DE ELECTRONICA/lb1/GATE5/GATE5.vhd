library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE5 is   
Port (
	a, b, c, d, e, f: in STD_LOGIC;
	s: out STD_LOGIC
);
end GATE5;

architecture arq_GATE5 of GATE5 is

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
	 
	 -- ENTIDAD GNOR
    component GNOR

        port (
            a1, b1 : in STD_LOGIC;
            q    : out STD_LOGIC
        );

    end component;



    ------ SIGNALS

    signal S1, S2, S3, S4, S5 : STD_LOGIC;


begin
	
	U1: GNOR port map(
		a1 => a,
		b1 => b,
		q => S1
	);
	
	U2: GXNOR port map(
		a1 => c,
		b1 => d,
		q => S2
	);
	
	U3: GAND port map(
		m => e,
		n => f,
		p => S3
	);
	
	U4: GAND port map(
		m => S1,
		n => S2,
		p => S4
	);
	
	U5: GNOR port map(
		a1 => S2,
		b1 => S3,
		q => S5
	);
	
	U6: GXNOR port map(
		a1 => S4,
		b1 => S5,
		q => s
	);


end arq_GATE5;

