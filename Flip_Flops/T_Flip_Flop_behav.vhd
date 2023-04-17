library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity t_flip_flop_behav is
   Port ( t,clk,rst: in  std_logic;
          q,qbar : out std_logic);
end t_flip_flop_behav;

architecture behavioural of t_flip_flop_behav is
begin
    process(t,clk,rst)
        variable temp:std_logic:='0';
    begin
        if(rst='1')then temp:='0';
        elsif(rising_edge(clk))then
            if(t='1')then temp:= not temp;
            end if;
        end if;
            
        q<= not temp;
        qbar<= temp;

    end process;
end behavioural;
