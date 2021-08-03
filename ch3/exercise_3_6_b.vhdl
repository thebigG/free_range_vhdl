library ieee;
use ieee.std_logic_1164.all;
entity sys2 is
    port (input_w: in std_logic;
         a_data:   in std_logic_vector(7 downto 0);
          b_data:  in std_logic_vector(7 downto 0);
          clk:     in std_logic;
          dat_4:   out std_logic_vector(7 downto 0);
          dat_5:   out std_logic_vector(2 downto 0)
     );
end sys2;
