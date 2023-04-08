library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_encoder_4_2_behav is
end tb_encoder_4_2_behav;

architecture testbench of tb_encoder_4_2_behav is

    component encoder_4_2_behav
        port (d: in std_logic_vector(3 downto 0);  
              o: out std_logic_vector(1 downto 0));
    end component;
    signal d: std_logic_vector(3 downto 0);
    signal o: std_logic_vector(1 downto 0);
begin
	H1: encoder_4_2_behav port map(d, o);

process begin

	d<="0001";
	wait for 10 ns;

	d<="0010";
	wait for 10 ns;

	d<="0100";
	wait for 10 ns;

	d<="1000";
	wait for 10 ns;

end process;

end testbench;

