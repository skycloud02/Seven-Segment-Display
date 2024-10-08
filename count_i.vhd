library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity count_i is
    Port ( newCLK : in STD_LOGIC;
           i : out std_logic_vector(3 downto 0));
end count_i;

architecture Behavioral of count_i is

signal aux : std_logic_vector(3 downto 0);

begin

process(newCLK, aux)
    begin
        if newCLK'event and newCLk = '1' then
            if aux = "1011" then aux <= "0000";
                else aux <= aux + '1';
            end if; 
        end if;
end process;

i <= aux;

end Behavioral;
