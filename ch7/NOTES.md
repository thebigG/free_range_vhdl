It is worth noting in this chapter that several techniques are mentioned in this chapter to store information in VHDL.

These are the following:

T Flip-Flop
```
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
```

D Flip-flop
```
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

```

When the else is not explicitly stated, VHDL synthesizers are "forced" to store the value of that signal. This storage
element in VHDL is known as a __Latch__ in VHDL.