library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity GATE2 is   
Port (
	a, b, c, d, e: in STD_LOGIC;
	s: out STD_LOGIC
);
end GATE2;

architecture arq_GATE2 of GATE2 is

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

    signal S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18, S19, S20, S21, S22, S23, S24, S25, S26, S27, S28, S29, S30, S31: STD_LOGIC;

begin

	U1: GNOT port map(
		m => a,
		p => S9
	);

	U2: GNOT port map(
		m => b,
		p => S10
	);

	U3: GNOT port map(
		m => c,
		p => S11
	);

	U4: GNOT port map(
		m => d,
		p => S12
	);

	U5: GNOT port map(
		m => e,
		p => S13
	);


	U6: GAND port map(
		m => S9,
		n => S10,
		p => S14
	);

	U7: GAND port map(
		m => S14,
		n => S11,
		p => S1
	);


	U8: GAND port map(
		m => S9,
		n => S10,
		p => S15
	);

	U9: GAND port map(
		m => S15,
		n => d,
		p => S2
	);


	U10: GAND port map(
		m => S9,
		n => c,
		p => S16
	);

	U11: GAND port map(
		m => S16,
		n => d,
		p => S17
	);

	U12: GAND port map(
		m => S17,
		n => e,
		p => S3
	);


	U13: GAND port map(
		m => S9,
		n => b,
		p => S18
	);

	U14: GAND port map(
		m => S18,
		n => S12,
		p => S19
	);

	U15: GAND port map(
		m => S19,
		n => e,
		p => S4
	);


	U16: GAND port map(
		m => S9,
		n => S11,
		p => S20
	);

	U17: GAND port map(
		m => S20,
		n => S13,
		p => S5
	);


	U18: GAND port map(
		m => a,
		n => S10,
		p => S21
	);

	U19: GAND port map(
		m => S21,
		n => e,
		p => S6
	);


	U20: GAND port map(
		m => a,
		n => c,
		p => S22
	);

	U21: GAND port map(
		m => S22,
		n => S12,
		p => S23
	);

	U22: GAND port map(
		m => S23,
		n => e,
		p => S7
	);


	U23: GAND port map(
		m => a,
		n => b,
		p => S24
	);

	U24: GAND port map(
		m => S24,
		n => c,
		p => S25
	);

	U25: GAND port map(
		m => S25,
		n => S13,
		p => S8
	);


	U26: GOR port map(
		m => S1,
		n => S2,
		p => S26
	);

	U27: GOR port map(
		m => S26,
		n => S3,
		p => S27
	);

	U28: GOR port map(
		m => S27,
		n => S4,
		p => S28
	);

	U29: GOR port map(
		m => S28,
		n => S5,
		p => S29
	);

	U30: GOR port map(
		m => S29,
		n => S6,
		p => S30
	);

	U31: GOR port map(
		m => S30,
		n => S7,
		p => S31
	);

	U32: GOR port map(
		m => S31,
		n => S8,
		p => s
	);

end arq_GATE2;