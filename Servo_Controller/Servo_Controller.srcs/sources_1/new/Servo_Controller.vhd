library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Servo_Controller is
    Port ( 
--        i_clk : in std_logic;
--        i_rst : in std_logic;
--        o_pwm : out std_logic);
          map_out : out integer);
end Servo_Controller;

architecture Behavioral of Servo_Controller is

function map_int(
    x, in_min, in_max, out_min, out_max : integer := 0)
    return integer is
        variable pwm : integer;
begin
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
end function;

begin

map_out <= map_int(90);

end Behavioral;
