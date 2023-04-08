library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_demux_4_1_behav is
end tb_demux_4_1_behav;

architecture testbench of tb_demux_4_1_behav is
    component demux_4_1_behav is
        port (a: in std_logic; 
              s: in std_logic_vector(1 downto 0); 
              z: out std_logic_vector(3 downto 0));
    end component;

    signal a: std_logic;
    signal s: std_logic_vector(1 downto 0);
    signal z: std_logic_vector(3 downto 0):="0000";

begin
	H1: demux_4_1_behav port map(a=>a, s=>s, z=>z);
    process begin
        a<= '1';

        s <= "00";
        wait for 10 ns;

        s <= "01";
        wait for 10 ns;

        s <= "10";
        wait for 10 ns;

        s <= "11";
        wait for 10 ns;
	end process;
end testbench;


