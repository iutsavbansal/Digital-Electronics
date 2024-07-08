library ieee;
use ieee.std_logic_1162.all;
use work.EE232.all;

entity FULL_ADDER is
	port( A, B, CI : in std_logic;
			S, CO : out std_logic);
end FULL_ADDER;

architecture STRUCTURE of FULL_ADDER is
	signal S0, c0, c1 : std_logic;

begin
	HA0 : HALF_ADDER port map(A, B, S0, c0);
	HA0 : HALF_ADDER port map(S0, CI, S, c1);
	U0 : OR_2 port map(c0, c1, CO);

end STURCTURE;
