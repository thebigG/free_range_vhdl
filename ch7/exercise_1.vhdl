library IEEE;

use IEEE.std_logic_1164.all;

-- Exercise 1, Chapter 7--

entity exercise7_1 is  
port ( S, D, CLK, R : in std_logic;
       Q            : out std_logic);

end exercise7_1;

architecture exercise7_1_arch of exercise7_1 is
   signal t_tmp  : std_logic;
begin
   exercise7_1_proc: process(CLK, R)
      begin
            if (R = '0') then 
                t_tmp <= '0';
            elsif (S = '0') then
                t_tmp <=  '1';
            elsif (rising_edge(CLK)) then
                t_tmp <= D XOR t_tmp; 
            end if;
      end process exercise7_1_proc;
   Q <= t_tmp;
         
end exercise7_1_arch;            