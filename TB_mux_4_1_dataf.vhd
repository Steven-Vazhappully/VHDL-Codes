library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_mux_4_1_dataf is
end tb_mux_4_1_dataf;

architecture testbench of tb_mux_4_1_dataf is
    component mux_4_1_dataf is
        port (a: in std_logic_vector(3 downto 0); 
              s: in std_logic_vector(1 downto 0); 
              z: out std_logic);
    end component;

    signal a: std_logic_vector(3 downto 0);
    signal s: std_logic_vector(1 downto 0);
    signal z: std_logic;

begin
	H1: entity work.mux_4_1_dataf port map(a=>a, s=>s, z=>z);
    process begin
        a(0) <= '1';
        a(1) <= '1';
        a(2) <= '1';
        a(3) <= '0';

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
