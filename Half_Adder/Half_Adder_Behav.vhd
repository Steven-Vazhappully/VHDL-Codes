library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity half_adder_behav is
	port (a, b: in std_logic; s, c: out std_logic);
end half_adder_behav;

architecture behavioural of half_adder_behav is
begin
	process (a, b) begin
		if a = '1' then
			s<= not b;
			c<= b;
		else
			s<= b;
			c<= '0';
		end if;
	end process;

end behavioural;
