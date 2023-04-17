library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity demux_4_1_dataf is
  port (a: in std_logic; 
        s: in std_logic_vector(1 downto 0); 
        z: out std_logic_vector(3 downto 0));
end demux_4_1_dataf;

architecture dataflow of demux_4_1_dataf is
begin
  with s select
  z <=("000" & a) when "00",
      ("00" & a & "0") when "01",
      ("0" & a & "00") when "10",
      (a & "000") when others;
end dataflow;
