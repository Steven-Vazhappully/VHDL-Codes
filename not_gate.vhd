
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity not_gate is
  port(m: in std_logic; o: out std_logic);
end not_gate;

architecture behavioural of not_gate is begin
    o <= not m;
end behavioural;
