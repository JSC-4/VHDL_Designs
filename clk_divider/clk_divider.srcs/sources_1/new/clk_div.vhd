----------------------------------------------------------------------------------
-- Company: www.JSCBLOG.com
-- Engineer: Jerome Samuels-Clarke
-- 
-- Create Date: 01.03.2020 08:31:46
-- Design Name: clk_div
-- Module Name: clk_div - Behavioral
-- Project Name: clk_div
-- Target Devices: Nexys 4 DDR
-- Tool Versions: Vivado 2019.1
-- Description: Generic clock divider
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

entity clk_div is
    Generic(
        FREQ_IN : integer := 100000000; --100MHz input clock
        FREQ_OUT : integer := 100); -- 100Hz output clock
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           o_clk : out STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is

signal t_clk : std_logic;
constant SCALE : integer := ((FREQ_IN/FREQ_OUT)/2)-1;
signal t_counter : integer range 0 to SCALE := 0;
begin

clock_div : process (i_clk, i_rst)
begin
    if (i_rst = '1') then
        t_clk <= '0';
        t_counter <= 0;
    elsif (rising_edge(i_clk)) then
        if (t_counter = SCALE) then
            t_counter <= 0;
            t_clk <= not (t_clk);
        else
        t_counter <= t_counter + 1;
        end if;
    end if;
end process;

o_clk <= t_clk;

end Behavioral;
