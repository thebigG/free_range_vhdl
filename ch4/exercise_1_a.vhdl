-- F(A)= !AB + A + A!B
library IEEE;
use IEEE.std_logic_1164.all;

entity ONE_A is
   port (A,B : in std_logic;
        F    : out std_logic);

end ONE_A;

architecture ARCH_ONE_A of ONE_A is
begin
    F <= ( ((not A) and B) or (A) or (A and (not B)) );
end ARCH_ONE_A;