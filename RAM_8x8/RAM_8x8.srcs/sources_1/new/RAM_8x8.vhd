library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM_8x8 is
    Port ( 
        i_addr : in std_logic_vector(2 downto 0);
        i_data : in std_logic_vector(7 downto 0);
        i_clk  : in std_logic;
        i_wr   : in std_logic;
        o_addr : out std_logic_vector(7 downto 0));
end RAM_8x8;

architecture Behavioral of RAM_8x8 is
type RAM_Array is array (0 to 7) of std_logic_vector(7 downto 0);
signal RAM : RAM_Array := (
    X"00",
    X"02",
    X"04",
    X"06",
    X"08",
    X"0A",
    X"0C",
    X"0E");

begin

process (i_clk)
begin
    if (rising_edge(i_clk)) then
        if (i_wr = '1') then
            RAM(to_integer(unsigned(i_addr))) <= i_data;
        end if;
    end if;
end process;

o_addr <= RAM(to_integer(unsigned(i_addr)));

end Behavioral;
