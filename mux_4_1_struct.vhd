library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity mux_4_1_struct is
    port (a: in std_logic_vector(3 downto 0); 
          s: in std_logic_vector(1 downto 0); 
          z: out std_logic);
end mux_4_1_struct;

architecture structural of mux_4_1_struct is
    component not_gate is
        port(m: in std_logic; o: out std_logic);
    end component;

    component and_3_gate is
        port (l, m, n: in std_logic; o: out std_logic);
    end component;

    component or_4_gate is
        port (v, w, x, y: in std_logic; z: out std_logic);
    end component;

    signal sbar_0, sbar_1: std_logic;
    signal temp: std_logic_vector(3 downto 0);
    
begin
    inv_s0: not_gate port map(s(0), sbar_0);
    inv_s1: not_gate port map(s(1), sbar_1);
    a_1: and_3_gate port map(a(0), sbar_0, sbar_1, temp(0));
    a_2: and_3_gate port map(a(1), s(0), sbar_1, temp(1));
    a_3: and_3_gate port map(a(2), sbar_0, s(1), temp(2));
    a_4: and_3_gate port map(a(3), s(0), s(1), temp(3));
    or_inst: or_4_gate port map(temp(0), temp(1), temp(2), temp(3), z); 

end structural;