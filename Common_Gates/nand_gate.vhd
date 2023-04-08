library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nand_gate is
    port(x, y: in std_logic; z: out std_logic);
end entity nand_gate;

architecture behavioural of nand_gate is
begin
    z <= x nand y;
end behavioural;

