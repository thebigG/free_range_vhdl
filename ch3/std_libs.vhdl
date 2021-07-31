--library declaration
library IEEE;
use IEEE.std_logic_1164.all; -- basic IEEE library
use IEEE.numeric_std.all;    -- IEEE library for the unsigned type and various arithmetic operators


-- WARNING : in general try NOT to use the following libraries
--           because they are not IEEE standard libraries
-- use IEEE.std_logic_arith.all;
-- use IEEE.std_logic_unsigned.all;
-- use IEEE.std_logic_signed

-- entity
entity my_ent is
    port ( A, B, C : in std_logic;
           F       : out std_logic);
end my_ent;

--architecure
architecture my_arch of my_ent is 
    signal v1, v2 : std_logic_vector (3 downto 0);
    signal u1     : unsigned (3 downto 0);
    signal i1     : integer;
    
begin
    u1 <= "1101";
    i1 <= 13;
    v1 <= std_logic_vector(u1);                         -- "1101"
    v2 <= std_logic_vector(to_unsigned(i1, v2'length)); -- "1101"
    
    F <= NOT (A AND B AND C);
 
end my_arch;

