library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_jk_flip_flop_behav is
end tb_jk_flip_flop_behav;

architecture testbench of tb_jk_flip_flop_behav is
    component jk_flip_flop_behav is
        port(j, k, clk, rst : in std_logic;
             q, qbar : out std_logic);
    end component;
    signal j, k, clk, rst : std_logic;
    signal q, qbar : std_logic;
begin
    uut: jk_flip_flop_behav port map(j => j, k => k, clk => clk,
                                     rst => rst, q => q, qbar => qbar);
    clock: process begin
        clk <= '1';
        wait for 10 ns;
        clk <= '0';
        wait for 10 ns;
    end process;

    Force: process begin
    j <= '0'; k <= '0'; rst <= '0';
    wait for 20 ns;
    j <= '0'; k <= '1'; rst <= '0';
    wait for 20 ns;
    j <= '1'; k <= '0'; rst <= '0';
    wait for 20 ns; 
    j <= '1'; k <= '1'; rst <= '0';
    wait for 20 ns;
    j <= '1'; k <= '1'; rst <= '0';
    wait for 20 ns;
    j <= '0'; k <= '0'; rst <= '0';
    wait for 20 ns;
    j <= '0'; k <= '0'; rst <= '1';
    wait for 20 ns;
    end process;

end testbench;
