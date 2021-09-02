library IEEE;
use IEEE.std_logic_1164.all;

entity exercise_1_a_case is
   port( A, B : in std_logic;
         F       : out std_logic);
end exercise_1_a_case;

architecture exercise_1_a_case_arch of exercise_1_a_case is
signal AB: std_logic_vector(1 downto 0); 
begin
     AB <= A & B;
    exercise_1_a_case_proc: process(AB) is
       begin
           case(AB) is
              when "01" => F<='1';
              when "1-"  => F<='1';
              when "10" => F<='1'; 
              when others => F<='0';
           end case;  
        end process  exercise_1_a_case_proc;
end exercise_1_a_case_arch;
        