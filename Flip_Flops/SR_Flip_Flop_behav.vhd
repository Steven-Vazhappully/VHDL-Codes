library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sr_flip_flop_behav is
    port (s,r,rst,clk : in  STD_LOGIC;
          q,qbar : out STD_LOGIC);
end sr_flip_flop_behav;

architecture behavioral of sr_flip_flop_behav is
begin
    process (s,r,rst,clk)
        begin
            if (rst='1') then q<='0';
            elsif (RISING_EDGE(clk))then
                if (s/=r) then q<=s; qbar <= r;
                elsif (s='1' and r='1') then
                       q<='Z'; qbar<='Z';
                end if;
            end if; 
    end process;
end behavioral;