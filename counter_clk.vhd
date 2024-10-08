 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity counter_clk is
    Port ( CLK : in STD_LOGIC;
           count : inout STD_LOGIC_VECTOR (15 downto 0));
end counter_clk;

architecture Behavioral of counter_clk is

begin

process(CLK)
    begin 
    if CLK = '1' and CLK'event then 
         count <=  count + 1;
    end if;
end process;

end Behavioral;
