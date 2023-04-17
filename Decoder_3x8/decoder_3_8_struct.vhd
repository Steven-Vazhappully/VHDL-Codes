library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity decoder_3_8_struct is
  port(d: in std_logic_vector(2 downto 0);
       o: out std_logic_vector(7 downto 0));
end decoder_3_8_struct;

architecture structural of decoder_3_8_struct is
    component and_3_gate is
        port(l, m, n: in std_logic; 
             o: out std_logic);
    end component;
    component not_gate is
        port(m: in std_logic;
             o: out std_logic);
    end component;
    signal dbar: std_logic_vector(2 downto 0);

begin
  N1: not_gate port map(d(0), dbar(0));
  N2: not_gate port map(d(1), dbar(1));
  N3: not_gate port map(d(2), dbar(2));
  A1: and_3_gate port map(dbar(0), dbar(1), dbar(2), o(0));
  A2: and_3_gate port map(d(0), dbar(1), dbar(2), o(1));
  A3: and_3_gate port map(dbar(0), d(1), dbar(2), o(2));
  A4: and_3_gate port map(d(0), d(1), dbar(2), o(3));
  A5: and_3_gate port map(dbar(0), dbar(1), d(2), o(4));
  A6: and_3_gate port map(d(0), dbar(1), d(2), o(5));
  A7: and_3_gate port map(dbar(0), d(1), d(2), o(6));
  A8: and_3_gate port map(d(0), d(1), d(2), o(7));

end structural;

