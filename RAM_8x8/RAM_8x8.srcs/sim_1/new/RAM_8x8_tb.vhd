library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM_8x8_tb is
end RAM_8x8_tb;

architecture Behavioral of RAM_8x8_tb is
COMPONENT RAM_8x8 is
    Port ( 
        i_addr : in std_logic_vector(2 downto 0);
        i_data : in std_logic_vector(7 downto 0);
        i_clk  : in std_logic;
        i_wr   : in std_logic;
        o_addr : out std_logic_vector(7 downto 0));
end COMPONENT;

signal i_addr : std_logic_vector(2 downto 0);
signal i_data : std_logic_vector(7 downto 0);
signal i_clk  : std_logic;
signal i_wr   : std_logic;
signal o_addr : std_logic_vector(7 downto 0);

signal clk_in_t : time := 10 ns;

begin

clk_proc: process
begin
    i_clk <= '0';
    wait for clk_in_t/2;
    i_clk <= '1';
    wait for clk_in_t/2;
end process;

uut: RAM_8x8
    Port Map(
        i_addr => i_addr,
        i_data => i_data,
        i_clk => i_clk,
        i_wr => i_wr,
        o_addr => o_addr);

stim_proc: process
begin
    i_wr <= '0';
    i_addr <= "000";
    i_data <= X"FF";
    wait for 100 ns;
    
    -- Read from addresses
    for i in 0 to 7 loop
        i_addr <= std_logic_vector(to_unsigned(to_integer(unsigned(i_addr))+1, 3));
        wait for 10 ns;
    end loop;
    
    -- Write to addresses
    i_wr <= '1';
    for i in 0 to 7 loop
        i_addr <= std_logic_vector(to_unsigned(to_integer(unsigned(i_addr))+1, 3));
        i_data <= X"FF";
        wait for 10 ns;
    end loop;
    
    -- Read from adresses
    i_wr <= '0';
    for i in 0 to 7 loop
        i_addr <= std_logic_vector(to_unsigned(to_integer(unsigned(i_addr))+1, 3));
        wait for 10 ns;
    end loop;
        
    wait;
end process stim_proc;

end Behavioral;
