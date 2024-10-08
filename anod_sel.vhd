library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity anod_sel is
    Port ( count : in STD_LOGIC_VECTOR (15 downto 0);
           anod : out STD_LOGIC_VECTOR (3 downto 0));
end anod_sel;

architecture Behavioral of anod_sel is

begin

process(count)
    begin
        case count(15 downto 14) is
            when "00" => anod <= "1110";
            when "01" => anod <= "1101";
            when "10" => anod <= "1011";
            when "11" => anod <= "0111";
        end case;
end process;

end Behavioral;
