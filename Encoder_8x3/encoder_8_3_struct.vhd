library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity encoder_8_3_struct is
  port (d: in std_logic_vector(7 downto 0);
        o: out std_logic_vector(2 downto 0));
end encoder_8_3_struct;

architecture structural of encoder_8_3_struct is
    component or_4_gate is
        port(v, w, x, y: in std_logic; z: out std_logic);
    end component;
begin
    A1: or_4_gate port map(d(1), d(3), d(5), d(7), o(0));
    A2: or_4_gate port map(d(2), d(3), d(7), d(6), o(1));
    A3: or_4_gate port map(d(4), d(5), d(6), d(7), o(2));
end structural;