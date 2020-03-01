----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.03.2020 08:54:18
-- Design Name: 
-- Module Name: clk_div_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div_tb is
end clk_div_tb;

architecture Behavioral of clk_div_tb is

COMPONENT clk_div is
    Generic(
        FREQ_IN : integer := 100000000; --100MHz input clock
        FREQ_OUT : integer := 100); -- 100Hz output clock
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           o_clk : out STD_LOGIC);
end COMPONENT clk_div;

signal i_clk  : std_logic := '0';
signal i_rst  : std_logic := '0';
signal o_clk : std_logic;
CONSTANT clk_in_t : time := 10 ns;

begin

uut: clk_div 
    Generic Map (
        FREQ_IN => 100000000,
        FREQ_OUT => 100)
    Port Map(
        i_clk => i_clk,
        i_rst => i_rst,
        o_clk => o_clk);
    
    clk_proc: process
    begin
        i_clk <= '0';
        wait for clk_in_t / 2;
        i_clk <= '1';
        wait for clk_in_t / 2;
    end process;
    
    stimulus: process
    begin
        i_rst <= '1';
        wait for 100 ns;
        i_rst <= '0';
        wait for 100 ns;
        wait;
    end process;

end Behavioral;
