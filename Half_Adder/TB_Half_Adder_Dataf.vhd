library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_half_adder_dataf is
end entity tb_half_adder_dataf;

architecture testbench of tb_half_adder_dataf is

    component half_adder_dataf is
        port(a, b: in bit; s, c: out bit);
    end component;

    signal a, b, s, c: bit;
begin

    H1: half_adder_dataf port map(a => a, b => b, s => s, c => c);

    	process begin
        	a <= '0'; b <= '0';
  	        wait for 10 ns;

        	a <= '0'; b <= '1';
  	        wait for 10 ns;
        	
		a <= '1'; b <= '0';
  	        wait for 10 ns;
        	
		a <= '1'; b <= '1';
  	        wait for 10 ns;
	end process;

end testbench;
