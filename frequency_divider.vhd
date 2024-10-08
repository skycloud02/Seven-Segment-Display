library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity frequency_divider is
  Port ( 
        clk: in std_logic;
        clock: out std_logic
  );
end frequency_divider;

architecture inside of frequency_divider is

signal counter: integer := 1;
signal temp: std_logic := '0';

begin
    freq_div : process(clk)
                    begin
                        if rising_edge(clk) then
                            counter <= counter + 1;
                            if counter = 50000000 then
                                temp <= not(temp);
                                counter <= 1;
                            end if;
                        end if; 
                end process;
clock <= temp;
end inside;