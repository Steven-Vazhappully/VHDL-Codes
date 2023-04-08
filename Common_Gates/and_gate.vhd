library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity and_gate is
  port(m, n: in std_logic; o: out std_logic);
end and_gate;

architecture behavioural of and_gate is begin
    o <= m and n;
end behavioural;