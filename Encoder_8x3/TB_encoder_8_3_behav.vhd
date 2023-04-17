library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_encoder_8_3_behav is
  
end tb_encoder_8_3_behav;
 architecture testbench of tb_encoder_8_3_behav is
   component encoder_8_3_behav
       port (d: in  std_logic_vector(7 downto 0);
             o: out std_logic_vector(2 downto 0));

end component;
    signal d: std_logic_vector(7 downto 0);
    signal o: std_logic_vector(2 downto 0);
 begin

   u1 : encoder_8_3_behav port map (d => d, o => o);

   process begin
       d<="00000001";
       wait for 10 ns;
       d<="00000010";
       wait for 10 ns;
       d<="00000100";
       wait for 10 ns;
       d<="00001000";
       wait for 10 ns;
       d<="00010000";
       wait for 10 ns;
       d<="00100000";
       wait for 10 ns;
       d<="01000000";
       wait for 10 ns;
       d<="10000000";
       wait for 10 ns;
   end process;
 end testbench;
