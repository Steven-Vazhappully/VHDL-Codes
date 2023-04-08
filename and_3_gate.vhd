library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity and_3_gate is
  port(l, m, n: in std_logic; o: out std_logic);
end and_3_gate;

architecture behavioural of and_3_gate is begin
    o <= l and m and n;
end behavioural;
