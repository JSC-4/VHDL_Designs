----------------------------------------------------------------------------------         
-- Company: www.JSCBLOG.com                                                                
-- Engineer: Jerome Samuels-Clarke                                                         
--                                                                                         
-- Create Date: 29.02.2020 18:49:00                                                        
-- Design Name: multiplexer                                                              
-- Module Name: mux_4_to_1_tb - Behavioral                                                    
-- Project Name: mux_4_to_1                                                                
-- Target Devices: Nexys 4 DDR                                                             
-- Tool Versions: Vivado 2019.1                                                            
-- Description: four to one multiplexer testbench                                                    
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

entity mux_4_to_1_tb is
end mux_4_to_1_tb;

architecture Behavioral of mux_4_to_1_tb is

COMPONENT mux_4_to_1 is                               
    Port(                                          
        i_sel :    in std_logic_vector(1 downto 0);
        i_input :  in std_logic_vector(3 downto 0);
        o_output : out std_logic                   
    );                                             
end COMPONENT;

signal t_sel    : std_logic_vector(1 downto 0);
signal t_input  : std_logic_vector(3 downto 0);
signal t_output : std_logic;

begin

uut: mux_4_to_1 Port Map(
    i_sel => t_sel,
    i_input => t_input,
    o_output => t_output
);

t_input <= "1010";

stimulus: process
begin
    t_sel <= "00";
    wait for 10 ns;
    t_sel <= "01";
    wait for 10 ns;
    t_sel <= "10";
    wait for 10 ns;
    t_sel <= "11";
    wait for 10 ns;
                
    wait;
end process;

end Behavioral;
