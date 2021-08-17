--libraries
library IEEE;
use IEEE.std_logic_1164.all;

entity my_ckt_f3_concat is 
    port (L,M, N   : in std_logic;
           F3      : out std_logic);
 
 end my_ckt_f3_concat;
 
 architecture f3_8 of my_ckt_f3_concat is
     signal t_sig : std_logic_vector(2 downto 0);
 begin
     t_sig <= (L & M & N);  --concatenation operator
     
     with (t_sig) select 
     F3 <= '1' when "000" | "110" | "111" ,
               '0' when others;

end f3_8;
     