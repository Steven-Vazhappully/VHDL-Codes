library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_d_flip_flop_behav is
end entity;

architecture testbench of tb_d_flip_flop_behav is
    component d_flip_flop_behav is
        port(d, clk, rst : in STD_LOGIC;
             q, qbar : out STD_LOGIC);
    end component ;
    signal d, clk, rst, q, qbar : STD_LOGIC;
begin
    uut: d_flip_flop_behav port map(d => d, clk => clk, rst => rst, 
                                    q => q, qbar => qbar);

    Clock : process begin
        clk <= '0'; wait for 10 ns;
        clk <= '1'; wait for 10 ns;
    end process;
    Force : process begin
        rst <= '0'; 
    
        d <= '0'; wait for 20 ns;
        d <= '1'; wait for 20 ns;
    end process;

end testbench;
