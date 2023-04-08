library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity demux_4_1_behav is
  port (a: in std_logic; 
        s: in std_logic_vector(1 downto 0); 
        z: out std_logic_vector(3 downto 0));
end demux_4_1_behav;

architecture behavioural of demux_4_1_behav is
begin
    behave : process(a, s)
    begin
        if (s<="00") then z(0)<=a;
        elsif (s<="01") then z(1)<=a;
        elsif (s<="10") then z(2)<=a;
        elsif (s<="11") then z(3)<=a;  
        else null;          
        end if ;
    end process;
end behavioural;