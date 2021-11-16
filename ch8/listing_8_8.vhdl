--library declcaration
library IEEE;
use IEEE.std_logic_1164.all;

entity my_fsml4_oh is
    port (X,CLK,RESET   : in std_logic;
		  Y             : out std_logic_vector(3 downto 0);
		Z1, Z2	: out std_logic);

end my_fsml4_oh;

architecture fsm4_oh of my_fsml4_oh is
	type state_type is (ST0, ST1, ST2, ST3); -- enumeration
	attribute ENUM_ECONDING: STRING;
	attribute ENUM_ECONDING of state_type: type is "1000 0100 0010 0001";
	signal PS,NS : state_type;
	
begin
	sync_proc: process(CLK,NS,RESET)
	begin
        if (RESET = '1') then PS <= ST0;
		elsif (rising_edge(CLK)) then
	  	     PS <= NS;
		end if;
    	end process sync_proc;

    comb_proc: process(PS, X)
    begin
		Z1 <= '0';  Z2 <= '0';
        case PS is
            when ST0 =>
                Z1 <= '0';
            if (X = '1') then NS <= ST1; Z2 <= '0';
            else
                NS <= ST0; Z2 <= '1';
            end if;
			 when ST1 =>
				 Z1 <= '1';
				 if (X = '0') then
                     NS <= ST0; Z2 <= '0';
				 else NS <= ST1; Z2 <= '1';
				 end if;
             when ST3 =>
                 Z1 <= '1';
                 if (X = '0') then NS <= ST0; Z2 <= '0';
                 else NS <= ST3; Z2 <= '1';
                 end if;
			 when others =>
				 Z1 <= '0'; Z2<= '0';
				 NS <= ST0;
		end case;
	end process comb_proc;

    with PS select 
        Y <= "1000" when ST0,
             "0100" when ST1,
             "0010" when ST2,
             "0001" when ST3,
             "1000" when others;
end fsm4_oh;


			
      

