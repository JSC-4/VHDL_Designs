----------------------------------------------------------------------------------
-- Company: www.JSCBLOG.com
-- Engineer: Jerome Samuels-Clarke
-- 
-- Create Date: 29.02.2020 18:49:00
-- Design Name: multiplexor
-- Module Name: mux_4_to_1 - Behavioral
-- Project Name: mux_4_to_1
-- Target Devices: Nexys 4 DDR
-- Tool Versions: Vivado 2019.1
-- Description: four to one multiplexer
-- 
-- Dependencies: 
-- 
-- Revision:1.0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_to_1 is
    Port(
        i_sel :    in std_logic_vector(1 downto 0);
        i_input :  in std_logic_vector(3 downto 0); 
        o_output : out std_logic
    );
end mux_4_to_1;

architecture Behavioral of mux_4_to_1 is

begin

with i_sel select
    o_output <= i_input(0) when "00",
                i_input(1) when "01",                
                i_input(2) when "10",
                i_input(3) when others;
                
end Behavioral;
