library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROM_16x8 is
    Port ( 
        i_addr : in std_logic_vector(3 downto 0);
        o_data : out std_logic_vector(7 downto 0));
end ROM_16x8;

architecture Behavioral of ROM_16x8 is
type rom_type is array (0 to 15) of std_logic_vector(7 downto 0);
signal my_rom : rom_type := (
    "00000000",  --0
    "00000001",  --1
    "00000010",  --2
    "00000011",  --3
    "00000100",  --4
    "00000101",  --5
    "00000110",  --6
    "00000111",  --7
    "00001000",  --8
    "00001001",  --9
    "00001010",  --10
    "00001011",  --11
    "00001100",  --12
    "00001101",  --13
    "00001110",  --14
    "00001111"); --15
    
begin

o_data <= my_rom(to_integer(unsigned(i_addr)));

end Behavioral;
