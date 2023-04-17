library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_demux_1_4_struct is
end tb_demux_1_4_struct;

architecture testbench of tb_demux_1_4_struct is
    component demux_1_4_struct is
        port(a: in std_logic;
             s: in std_logic_vector(1 downto 0);
             z: out std_logic_vector(3 downto 0));
    end component;

    signal a: std_logic:='0';
    signal s: std_logic_vector(1 downto 0):="00";
    signal z: std_logic_vector(3 downto 0);
begin
	H1: demux_1_4_struct port map(a=>a, s=>s, z=>z);
        s(0) <= not s(0) after 10 ns;
        s(1) <= not s(1) after 20 ns;
        a <= not a after 40 ns;
end testbench;