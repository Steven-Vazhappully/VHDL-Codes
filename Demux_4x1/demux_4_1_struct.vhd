library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity demux_1_4_struct is
    port(a: in std_logic;
         s: in std_logic_vector(1 downto 0);
         z: out std_logic_vector(3 downto 0));
end entity demux_1_4_struct;

architecture structural of demux_1_4_struct is
    component not_gate is
        port (m: in std_logic; o: out std_logic);
    end component;

    component and_3_gate is
        port(l, m, n: in std_logic; o: out std_logic);
    end component;

    signal sbar_0, sbar_1: std_logic;

begin
    N1: not_gate port map(s(0), sbar_0);
    N2: not_gate port map(s(1), sbar_1);

    A1: and_3_gate port map(a, sbar_0, sbar_1, z(0));
    A2: and_3_gate port map(a, s(0), sbar_1, z(1));
    A3: and_3_gate port map(a, sbar_0, s(1), z(2));
    A4: and_3_gate port map(a, s(0), s(1), z(3));
    
end architecture structural;

