library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Flip_Flop is
    Port ( i_clk : in STD_LOGIC;
           i_D   : in STD_LOGIC;
           o_Q : out STD_LOGIC);
end D_Flip_Flop;

architecture Behavioral of D_Flip_Flop is

begin

d_ff: process (i_clk)
begin
    if (rising_edge(i_clk)) then
        o_Q <= i_D;
    end if;
end process;

end Behavioral;
