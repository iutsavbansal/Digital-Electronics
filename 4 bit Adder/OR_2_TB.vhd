library IEEE;
use IEEE.std_logic_1164.all;

entity OR_2_TB is
end entity;

architecture TESTBENCH of OR_2_TB is

	component OR_2 is
		port ( I0, I1 : in std_logic;
			O0 : out std_logic);
	end component;
	
	signal A, B, Y : std_logic;
	
begin 
	DUT : OR_2 port map(A, B, Y);

	process
	begin
		A <= '0'; B <= '0'; wait for 1 ns;
		A <= '1'; B <= '0'; wait for 1 ns;
		A <= '0'; B <= '1'; wait for 1 ns;
		A <= '1'; B <= '1'; wait for 1 ns;
		A <= '0'; B <= '0'; wait;
	end process;
end TESTBENCH;
	