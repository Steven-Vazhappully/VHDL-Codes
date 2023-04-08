library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_mux_4_1_struct is
end tb_mux_4_1_struct;

architecture testbench of tb_mux_4_1_struct is
    component mux_4_1_struct is
        port (a: in std_logic_vector(3 downto 0); 
              s: in std_logic_vector(1 downto 0); 
              z: out std_logic);
    end component;

    signal a: std_logic_vector(3 downto 0);
    signal s: std_logic_vector(1 downto 0);
    signal z: std_logic;

begin
	H1: mux_4_1_struct port map(a=>a, s=>s, z=>z);
    process begin
        a(0) <= '1';
        a(1) <= '1';
        a(2) <= '1';
        a(3) <= '1';

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
