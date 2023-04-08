library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_half_adder_behav is
end tb_half_adder_behav;

architecture testbench of tb_half_adder_behav is
	signal a, b: std_logic;
	signal s, c: std_logic;

component half_adder_behav
	port (a, b: in std_logic; s, c: out std_logic);
end component;

begin
	H1: half_adder_behav port map(a, b, s, c);

process begin

	a<='0'; b<='0';
	wait for 10 ns;

	a<='0'; b<='1';
	wait for 10 ns;

	a<='1'; b<='0';
	wait for 10 ns;

	a<='1'; b<='1';
	wait for 10 ns;

end process;

end testbench;
