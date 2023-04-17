library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity full_adder_behav_2 is
  port (a, b, cin: in std_logic; sum, cout: out std_logic);
end full_adder_behav_2;

architecture behavioural of full_adder_behav_2 is
begin
    process(a,b,cin) begin
        if(a='0' and b='0' and cin='0')then  sum<='0'; cout<='0';
        elsif( a='0' and b='0' and cin='1')then  sum<='1'; cout<='0';
        elsif( a='0' and b='1' and cin='0')then sum<='1'; cout<='0';
        elsif( a='0' and b='1' and cin='1')then sum<='0'; cout<='1';
        elsif( a='1' and b='0' and cin='0')then sum<='1'; cout<='0';
        elsif( a='1' and b='0' and cin='1')then sum<='0'; cout<='1';
        elsif( a='1' and b='1' and cin='0')then sum<='0'; cout<='1';
        else sum<='1'; cout<='1';
        end if;
    end process;
end behavioural;
