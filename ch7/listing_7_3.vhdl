-- FET D Flip-flop model with active-high asynchronous reset input. --
library IEEE;
use IEEE.std_logic_1164.all;

entity d_ff_r is
   port (    D,R  :  in std_logic;
             CLK  :  in std_logic;
             Q    :  out std_logic);
end d_ff_r;

architecture my_d_ff_r of d_ff_r is
begin
    dff: process(R,CLK)
    begin
        if (R='1') then
            Q <= '0';
        elsif (falling_edge(CLK))  then
           Q <= D;
        end if;
    end process dff;
end my_d_ff_r;