library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity jk_flip_flop_behav is
	port( j, k, clk, rst : in std_logic;
		q, qbar : out std_logic);
end jk_flip_flop_behav;

architecture behavioral of jk_flip_flop_behav is
begin
        process(clk, rst)
                variable qn : std_logic;
        begin
                if(rst = '1')then qn := '0';
                elsif(clk'event and clk = '1')then
                   if(j='0' and k='0')then qn := qn;
                   elsif(j='0' and k='1')then qn := '0'; 
                   elsif(j='1' and k='0')then qn := '1'; 
                   elsif(j='1' and k='1')then qn := not qn; 
                   else null;
                   end if;
                else null;
                end if;

                q <= qn; 
                qbar <= not qn;
        end process;
end behavioral;
