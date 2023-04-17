library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity encoder_8_3_dataf is
  port(d: in std_logic_vector(7 downto 0);
       o: out std_logic_vector(2 downto 0));
end encoder_8_3_dataf;

architecture dataflow of encoder_8_3_dataf is
begin
    o(2) <= d(4) or d(5) or d(6) or d(7);
    o(1) <= d(2) or d(3) or d(6) or d(7);
    o(0) <= d(1) or d(3) or d(5) or d(7);
end dataflow;

