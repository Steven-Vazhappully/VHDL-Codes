library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity xor_gate is
    port(x, y: in std_logic; z: out std_logic);
end entity xor_gate;

architecture behavioural of xor_gate is
begin
    z <= x xor y;
end behavioural;


