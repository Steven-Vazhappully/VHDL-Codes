library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity d_flip_flop_behav is
    port(d, clk, rst : in  STD_LOGIC;
         q, qbar : out  STD_LOGIC);
end d_flip_flop_behav;

architecture behavioral of d_flip_flop_behav is
begin
    process (d, clk, rst)
        begin
            if (rst = '1') then q <= '0';
            elsif (rising_edge(clk)) then 
                   q <= d; qbar <= not d;
            end if;
    end process;
end behavioral;
