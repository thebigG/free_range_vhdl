---------------Simple VHDL block---------------

--library declaration
library ieee;
use ieee.std_logic_1164.all;

--the ENTITY
entity circuit1 is
    port (A,B,C : in std_logic;
          F,G   : out std_logic);
end circuit1;

-- the ARCHITECTURE
architecture circuit1_arc of circuit1 is 
   signal sig_1 : std_logic;              -- signal definition
begin
    process (a,b,c)                       -- I don't know why the author uses the the variables as lower-case here. That's kind of annoying...
        variable var_1 : integer;
    begin
        F <= not (A and B and C);         -- signal assignment
        sig_1 <= A;                      -- another signal assignment
        var_1 := 34;
    end process;
    
    
    G <= not(A and B);                    -- concurrent assignment
    
end circuit1_arc;





   
                              
