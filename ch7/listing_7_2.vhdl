-- RET D Flip-Flop model with active active-low synchronous set input --

library IEEE;
use IEEE.std_logic_1164.all;

entity d_ff_ns is
   port ( D,S : in std_logic;
          CLK : in std_logic;
          Q   : out std_logic);
end d_ff_ns;

architecture my_d_ff_ns of d_ff_ns is
begin
    dff: process(CLK)
    begin
       if (rising_edge(CLK)) then 
          if (S = '0') then
              Q <= '1';
           else
              Q <= D;
           end if;
        end if;
      end process dff;
end my_d_ff_ns;
