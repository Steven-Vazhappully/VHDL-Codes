library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_4_1_dataf is
  port (a: in std_logic_vector(3 downto 0); 
        s: in std_logic_vector(1 downto 0); 
        z: out std_logic);
end mux_4_1_dataf;

architecture dataflow of mux_4_1_dataf is
begin
        with s select
        z <= a(0) when "00",
             a(1) when "01",
             a(2) when "10",
             a(3) when "11",
             unaffected when others;

end dataflow;
