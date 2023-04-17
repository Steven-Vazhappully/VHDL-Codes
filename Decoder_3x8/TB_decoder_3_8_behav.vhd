library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_decoder_3_8_behav is
end tb_decoder_3_8_behav;

architecture testbench of tb_decoder_3_8_behav is
    component decoder_3_8_behav
       port(d: in  std_logic_vector(2 downto 0);
            o: out std_logic_vector(7 downto 0));
    end component;
    signal d : std_logic_vector(2 downto 0);
    signal o : std_logic_vector(7 downto 0);
begin
    u1 : decoder_3_8_behav port map (d => d, o => o);
    process begin
        d<="000"; wait for 10 ns;
        d<="001"; wait for 10 ns;
        d<="010"; wait for 10 ns;
        d<="011"; wait for 10 ns;
        d<="100"; wait for 10 ns;
        d<="101"; wait for 10 ns;
        d<="110"; wait for 10 ns;
        d<="111"; wait for 10 ns;
    end process;
 end testbench;
