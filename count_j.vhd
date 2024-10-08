 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity count_j is
    Port ( newCLK : in STD_LOGIC;
           j : out STD_LOGIC_VECTOR (5 downto 0));
end count_j;

architecture Behavioral of count_j is

signal aux : std_logic_vector(5 downto 0);

begin
process(newCLK, aux)
    begin
        if newCLK'event and newCLk = '1' then
            if aux = "101111" then aux <= "000000";
                else aux <= aux + '1';
            end if;
        end if;
end process;

j <= aux;

end Behavioral;
