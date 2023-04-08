library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity or_4_gate is
    port(v, w, x, y: in std_logic; z: out std_logic);
end entity or_4_gate;

architecture behavioural of or_4_gate is
begin
    z <= v or w or x or y;
end behavioural;
