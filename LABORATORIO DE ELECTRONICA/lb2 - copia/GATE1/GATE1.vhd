library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE1 is   
Port (
	a, b, c, d: in STD_LOGIC;
	s: out STD_LOGIC
);
end GATE1;

architecture arq_GATE1 of GATE1 is

    component GNOT
        port (
            m : in STD_LOGIC;
            p : out STD_LOGIC
        );
    end component;

    component GOR
        port (
            m, n : in STD_LOGIC;
            p    : out STD_LOGIC
        );
    end component;

    component GAND
        port (
            m, n : in STD_LOGIC;
            p    : out STD_LOGIC
        );
    end component;

    signal S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17 : STD_LOGIC;

begin

	U1: GNOT port map(
		m => a,
		p => S1
	);

	U2: GNOT port map(
		m => b,
		p => S5
	);

	U3: GNOT port map(
		m => c,
		p => S6
	);

	U4: GNOT port map(
		m => d,
		p => S7
	);


	U5: GAND port map(
		m => S1,
		n => c,
		p => S10
	);

	U6: GAND port map(
		m => S10,
		n => d,
		p => S2
	);


	U7: GAND port map(
		m => b,
		n => c,
		p => S11
	);

	U8: GAND port map(
		m => S11,
		n => d,
		p => S3
	);


	U9: GAND port map(
		m => S1,
		n => b,
		p => S12
	);

	U10: GAND port map(
		m => S12,
		n => d,
		p => S4
	);


	U11: GAND port map(
		m => S5,
		n => S6,
		p => S13
	);

	U12: GAND port map(
		m => S13,
		n => S7,
		p => S8
	);


	U13: GAND port map(
		m => a,
		n => S6,
		p => S14
	);

	U14: GAND port map(
		m => S14,
		n => S7,
		p => S9
	);


	U15: GOR port map(
		m => S2,
		n => S3,
		p => S15
	);

	U16: GOR port map(
		m => S15,
		n => S4,
		p => S16
	);

	U17: GOR port map(
		m => S16,
		n => S8,
		p => S17
	);

	U18: GOR port map(
		m => S17,
		n => S9,
		p => s
	);

end arq_GATE1;