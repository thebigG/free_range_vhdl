library IEEE;
use IEEE.std_logic_1164.all;

entity ONE_B is
    port(A,B,C,D : in std_logic;
         F       : out std_logic);

end ONE_B;

architecture ARCH_ONE_B of ONE_B is
begin
     F <= ((not(A) and B and C) or(not(B) and C) or (B or C or not(D)));
end ARCH_ONE_B;