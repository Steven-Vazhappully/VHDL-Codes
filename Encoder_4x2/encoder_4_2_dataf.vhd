library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity encoder_4_2_dataf is
  port (d: in std_logic_vector(3 downto 0);  
        o: out std_logic_vector(1 downto 0));
end encoder_4_2_dataf;

architecture behavioural of encoder_4_2_dataf is
  begin
    o(0) <= d(1) or d(3);
    o(1) <= d(2) or d(3);
end behavioural;
