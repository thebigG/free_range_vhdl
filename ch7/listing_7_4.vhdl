-- RET Flip-flop model with active-low asynchronous set input. --
library IEEE;
use IEEE.std_logic_1164.all;
entity t_ff_s is
   port(   T,S,CLK  : in std_logic;
           Q        : out std_logic);
end t_ff_s;

architecture my_t_ff_s of t_ff_s is
   signal t_tmp  : std_logic;
begin
   tff:  process(S,CLK)
   begin
      if (S = '0') then 
         t_tmp <= '1';
      elsif (rising_edge(CLK)) then
         t_tmp <= T XOR t_tmp;
      end if;
   end process tff;
   
   Q <= t_tmp;
end my_t_ff_s;