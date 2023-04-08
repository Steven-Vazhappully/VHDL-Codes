library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity xnor_gate is
    port(x, y: in std_logic; z: out std_logic);
end entity xnor_gate;

architecture behavioural of xnor_gate is
begin
    z <= x xnor y;
end behavioural;

