library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity half_adder_dataf is
	port (a, b: in bit; s, c: out bit);
end half_adder_dataf;

architecture dataflow of half_adder_dataf is 
begin
	s<=a xor b;
	c<=a and b;

end dataflow;
