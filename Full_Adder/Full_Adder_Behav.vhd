library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity full_adder_behav is
  port (a, b, cin: in std_logic; sum, cout: out std_logic);
end full_adder_behav;

architecture behavioural of full_adder_behav is
begin
    process(a, b, cin)
    begin
        sum <= a xor b xor cin;
	      cout <= ((a xor b) and cin) or (a and b);
    end process;

end behavioural;