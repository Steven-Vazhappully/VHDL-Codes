library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity half_adder_str is
    port(a, b: in std_logic; s, c: out std_logic);
end entity half_adder_str;

architecture structure of half_adder_str is

    component xor_gate is
        port (x, y: in std_logic; z: out std_logic);
    end component;

    component and_gate is
        port (m, n: in std_logic; o: out std_logic);
    end component;


begin
    
    I1: xor_gate port map(a, b, s);
    I2: and_gate port map(a, b, c);

end architecture structure;

