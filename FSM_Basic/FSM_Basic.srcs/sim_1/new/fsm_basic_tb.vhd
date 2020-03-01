library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_basic_tb is
end fsm_basic_tb;

architecture Behavioral of fsm_basic_tb is

COMPONENT fsm_basic is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_en  : in STD_LOGIC;
           o_z1  : out STD_LOGIC);
end COMPONENT;

signal i_clk : STD_LOGIC;
signal i_rst : STD_LOGIC;
signal i_en  : STD_LOGIC;
signal o_z1  : STD_LOGIC;

constant clk_in_t : time := 10 ns;

begin

uut: fsm_basic Port Map(
    i_clk => i_clk,
    i_rst => i_rst,
    i_en => i_en,
    o_z1 => o_z1);

clk_proc : process
begin
    i_clk <= '0';
    wait for clk_in_t / 2;
    i_clk <= '1';
    wait for clk_in_t / 2; 
end process clk_proc;    

stim_proc : process
begin
    i_rst <= '1';
    wait for 100 ns;
    i_rst <= '0';
    wait for 100 ns;

    i_en <= '1';
    wait for 100 ns;
    i_en <= '0';
    wait for 100 ns;
    i_en <= '1';
    wait for 100 ns;
    wait;
end process stim_proc;
    
end Behavioral;
