library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity or_gate is
    port(x, y: in std_logic; z: out std_logic);
end entity or_gate;

architecture behavioural of or_gate is
begin
    z <= x or y;
end behavioural;