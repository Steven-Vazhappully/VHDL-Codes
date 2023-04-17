library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_t_flip_flop_behav is
end entity;

architecture testbench of tb_t_flip_flop_behav is
    component t_flip_flop_behav is
        port(t,clk,rst : in std_logic;
             q,qbar : out std_logic);
    end component;
    signal t,clk,rst,q,qbar : std_logic;
begin
    uut: t_flip_flop_behav port map(t => t, clk => clk, rst => rst,
                                    q => q, qbar => qbar);
    clock : process begin
        clk <= '0'; wait for 10 ns; 
        clk <= '1'; wait for 10 ns;
    end process;
    stim: process begin
        rst <= '0';
        
        t <= '0'; wait for 20 ns;
        t <= '1'; wait for 20 ns;
    end process;
end testbench;
