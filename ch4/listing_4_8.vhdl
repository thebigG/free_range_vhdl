library IEEE;
use IEEE.std_logic_1164.all;

entity my_ckt_f3 is
    port (L, M, N : in std_logic;
         F3       : out std_logic);
end my_ckt_f3;

-- The following architecture represents F3=(L * M * N) + (L*M)
architecture f3_1 of my_ckt_f3 is 
    signal A1, A2 : std_logic; --- intermediate signals. Pretty cool.
begin 
   A1 <= ((not L) and (not  M) and N);
   A2 <= L and M;
   F3 <= A1 or A2;
end f3_1;

-- Not sure why the following does not work...
--architecture f3_4 of my_ckt_f3 is
--begin
--   with ((L = '0' and M='0' and N='1') or (L='1' and M='1')) select 
--       F3 <= '1' when '1',
--             '0' when '0',
--             '0' when others;
--end f3_4;
        
  
