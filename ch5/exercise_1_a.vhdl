library IEEE;
use IEEE.std_logic_1164.all;

entity exercise_1_a is
   port ( A, B : in std_logic;
          F    : out std_logic);
end exercise_1_a;

architecture  exercise_1_a_arch of exercise_1_a is
begin
    exercise_1_a_proc: process(A,B) is
       begin
           if(A = '0' and B='1') or (A='1') or (A='1' and B='0') then
              F <= '1';
           else
               f <= '0';
           end if;
       end process exercise_1_a_proc;
end;
              