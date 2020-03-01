library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_basic is
    Port ( i_clk : in STD_LOGIC;
           i_rst : in STD_LOGIC;
           i_en : in STD_LOGIC;
           o_z1 : out STD_LOGIC);
end fsm_basic;

architecture Behavioral of fsm_basic is
type state_type is (ST0, ST1);
signal PS, NS : state_type;

begin

sync_proc : process (i_clk, i_rst, NS)
begin
    if (i_rst = '1') then
        PS <= ST0;
    elsif (rising_edge(i_clk)) then
        PS <= NS;
    end if;
end process sync_proc;

fsm : process (PS, i_en)
begin
    o_z1 <= '0';
    case (PS) is
        when ST0 =>
            o_z1 <= '0';
            if (i_en = '1') then
                NS <= ST1;
            else
                NS <= ST0;
            end if;
            
        when ST1 =>
            o_z1 <= '1';
            if (i_en = '1') then
                NS <= ST0;
            else
                NS <= ST1;
            end if;
        
        when others =>
            o_z1 <= '0';
            NS <= ST0;
    end case fsm;
end process;

end Behavioral;
