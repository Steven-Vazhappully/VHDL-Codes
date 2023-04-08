library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_4_1_behav is
  port (a: in std_logic_vector(3 downto 0); 
        s: in std_logic_vector(1 downto 0); 
        z: out std_logic);
end mux_4_1_behav;

architecture behavioural of mux_4_1_behav is
begin
    behave : process(a, s)
    begin
        if (s<="00") then z<=a(0);
        elsif (s<="01") then z<=a(1);
        elsif (s<="10") then z<=a(2);
        else z<=a(3);            
        end if ;
    end process;
end behavioural;