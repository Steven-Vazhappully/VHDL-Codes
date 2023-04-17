library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_sr_flip_flop_behav is
end entity;

architecture testbench of tb_sr_flip_flop_behav is
    component sr_flip_flop_behav is
        port(s, r, rst, clk: in std_logic;
             q, qbar: out std_logic);
    end component;
    signal s, r, rst, clk, q, qbar : STD_LOGIC;
begin
    u1: sr_flip_flop_behav port map(s => s, r => r, rst=>rst, clk => clk, 
                                     q => q, qbar => qbar);
    Clock : process begin
        clk <= '0'; wait for 10 ns;
        clk <= '1'; wait for 10 ns;
    end process;
    Force : process begin
    rst <= '0';

    s <= '0'; r <= '0';
    wait for 20 ns;
    s <= '0'; r <= '1';
    wait for 20 ns;
    s <= '1'; r <= '0';
    wait for 20 ns;
    s <= '1'; r <= '1';
    wait for 20 ns;
    end process;
end testbench;


