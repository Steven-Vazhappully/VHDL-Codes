library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nor_gate is
    port(x, y: in std_logic; z: out std_logic);
end entity nor_gate;

architecture behavioural of nor_gate is
begin
    z <= x nor y;
end behavioural;
