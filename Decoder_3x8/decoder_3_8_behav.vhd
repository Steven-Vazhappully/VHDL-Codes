library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decoder_3_8_behav is
    port(d: in  std_logic_vector(2 downto 0);
         o: out std_logic_vector(7 downto 0));
end decoder_3_8_behav;

architecture behavioural of decoder_3_8_behav is begin
    process (d)
        variable temp : std_logic_vector(7 downto 0);
    begin
        case d is
            when "000" => temp := "00000001";
            when "001" => temp := "00000010";
            when "010" => temp := "00000100";
            when "011" => temp := "00001000";
            when "100" => temp := "00010000";
            when "101" => temp := "00100000";
            when "110" => temp := "01000000";
            when "111" => temp := "10000000";
            when others => temp := "XXXXXXXX";
        end case;
        o <= temp;
    end process;
end behavioural;
