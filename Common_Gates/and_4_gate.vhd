library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity and_4_gate is
  port(k, l, m, n: in std_logic; o: out std_logic);
end and_4_gate;

architecture behavioural of and_4_gate is begin
    o <= k and l and m and n;
end behavioural;
