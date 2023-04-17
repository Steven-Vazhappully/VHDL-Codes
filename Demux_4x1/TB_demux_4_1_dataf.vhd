library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_demux_4_1_dataf is
end tb_demux_4_1_dataf;

architecture testbench of tb_demux_4_1_dataf is
    component demux_4_1_dataf is
        port (a: in std_logic; 
              s: in std_logic_vector(1 downto 0); 
              z: out std_logic_vector(3 downto 0));
    end component;

    signal a: std_logic;
    signal s: std_logic_vector(1 downto 0);
    signal z: std_logic_vector(3 downto 0);

begin
	H1: demux_4_1_dataf port map(a=>a, s=>s, z=>z);
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