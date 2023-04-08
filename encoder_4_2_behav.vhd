library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity encoder_4_2_behav is
  port (d: in std_logic_vector(3 downto 0);  
        o: out std_logic_vector(1 downto 0));
end encoder_4_2_behav;

architecture behavioural of encoder_4_2_behav is
begin
    behave : process(d)
    begin
        if (d="0001") then o<="00";
        elsif (d="0010") then o<="01";
        elsif (d="0100") then o<="10";
        elsif (d="1000") then o<="11";          
        end if;
    end process;
end behavioural;
