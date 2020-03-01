library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Rom_16x8_tb is
end Rom_16x8_tb;

architecture Behavioral of Rom_16x8_tb is

COMPONENT ROM_16x8 is
    Port ( 
        i_addr : in std_logic_vector(3 downto 0);
        o_data : out std_logic_vector(7 downto 0));
end COMPONENT;

signal i_addr : std_logic_vector(3 downto 0);
signal o_data : std_logic_vector(7 downto 0);

begin

uut: ROM_16x8
    Port Map (
        i_addr => i_addr,
        o_data => o_data);
        
stim_proc : process
begin
    i_addr <= "0000";
    wait for 10 ns;

    for i in 0 to 15 loop
        i_addr <= std_logic_vector(to_unsigned(to_integer(unsigned(i_addr))+1, 4));
        wait for 10 ns;
    end loop;
    
    wait;
end process;

end Behavioral;
