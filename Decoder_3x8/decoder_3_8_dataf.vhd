library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decoder_3_8_dataf is
  port(d: in std_logic_vector(2 downto 0);
       o: out std_logic_vector(7 downto 0));
end decoder_3_8_dataf;

architecture dataflow of decoder_3_8_dataf is
begin
    o(0)<=((not d(0))and(not d(1))and(not d(2)));
    o(1)<=((d(0))and(not d(1))and(not d(2)));
    o(2)<=((not d(0))and(d(1))and(not d(2)));
    o(3)<=((d(0))and(d(1))and(not d(2)));
    o(4)<=((not d(0))and(not d(1))and(d(2)));
    o(5)<=((d(0))and(not d(1))and(d(2)));
    o(6)<=((not d(0))and(d(1))and(d(2)));
    o(7)<=((d(0))and(d(1))and(d(2)));
end dataflow;
