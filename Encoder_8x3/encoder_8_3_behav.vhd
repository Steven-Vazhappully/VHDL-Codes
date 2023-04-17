library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity encoder_8_3_behav is
  port(d: in std_logic_vector(7 downto 0);
       o: out std_logic_vector(2 downto 0));
end encoder_8_3_behav;

architecture behavioural of encoder_8_3_behav is
begin
  process (d)
    variable temp : std_logic_vector(2 downto 0);
    begin
    case d is
      when "00000001" => temp := "000";
      when "00000010" => temp := "001";
      when "00000100" => temp := "010";
      when "00001000" => temp := "011" ;
      when "00010000" => temp := "100";
      when "00100000" => temp := "101";
      when "01000000" => temp := "110";
      when "10000000" => temp := "111";
      when others => temp := "XXX";
    end case;
    o <= temp;
  end process;

end behavioural;
