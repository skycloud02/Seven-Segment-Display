library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity animatie is
    Port ( Enable : in STD_LOGIC;
           Anim : in STD_LOGIC_VECTOR (1 downto 0);
           i : in STD_LOGIC_VECTOR (3 downto 0);
           j : in STD_LOGIC_VECTOR (5 downto 0);
           count : in STD_LOGIC_VECTOR (15 downto 0);
           newCLK : in STD_LOGIC;
           catode : out STD_LOGIC_VECTOR (6 downto 0));
end animatie;

architecture Behavioral of animatie is

type memo is array(36 downto 0) of std_logic_vector(6 downto 0);
constant a: memo := (
0=>"0000001", --0
1=>"1001111", --1
2=>"0010010", --2
3=>"0000110", --3
4=>"1001100", --4
5=>"0100100", --5
6=>"0100000", --6
7=>"0001111", --7
8=>"0000000", --8
9=>"0001100", --9
10=>"1111111", --space
11=>"0001000", --A
12=>"1100000", --B
13=>"0110001", --C
14=>"1000010", --D
15=>"0110000", --E
16=>"0111000", --F
17=>"0000100", --G
18=>"1001000", --H
19=>"1111001", --I
20=>"1000111", --J
21=>"1111000", --K
22=>"1110001", --L
23=>"1101000", --M
24=>"1101010", --N
25=>"0000001", --O
26=>"0011000", --P
27=>"0010100", --Q
28=>"1111010", --R
29=>"0100100", --S
30=>"1110000", --T
31=>"1000001", --U
32=>"1010101", --V
33=>"1010100", --W
34=>"1001001", --X
35=>"1001100", --Y
36=>"1011010"  --Z
);
type phrase is array(0 to 11) of std_logic_vector(6 downto 0);
constant m: phrase := (
0 => a(13), --C
1 => a(25), --O
2 => a(16), --F
3 => a(16), --F
4 => a(15), --E
5 => a(15), --E
6 => a(10), --space
7 => a(29), --S
8 => a(18), --H
9 => a(25), --O
10 => a(26), --P
11 => a(10) --space
);

begin


process(Enable, Anim, i, j, count, newCLK)
    begin
        if Enable = '1' then
            case Anim is
---------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------prima animatie--------shift left------------------            
                when "00" =>
                    if i = "0000" then
                    if count(15 downto 14) = "00" then
                        catode <= m(3);
                       elsif count(15 downto 14) = "01" then
                         catode <= m(2);
                       elsif count(15 downto 14) = "10" then
                          catode <= m(1);
                        elsif count(15 downto 14) = "11" then
                           catode <= m(0);
                      end if;
                    end if;
                    if i = "0001" then
                    if count(15 downto 14) = "00" then
                        catode<= m(4);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(3);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(2);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(1);
                      end if;
                     end if;
                     if i = "0010" then
                     if count(15 downto 14) = "00" then
                        catode<= m(5);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(4);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(3);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(2);
                      end if;
                    end if;
                    if i = "0011" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(6);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(5);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(4);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(3);
                      end if;
                    end if;
                    if i = "0100" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(7);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(6);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(5);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(4);
                      end if;
                    end if;
                    if i = "0101" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(8);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(7);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(6);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(5);
                      end if;
                    end if;
                    if i = "0110" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(9);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(8);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(7);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(6);
                      end if;
                    end if;
                    if i = "0111" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(10);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(9);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(8);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(7);
                      end if;
                    end if;
                    if i = "1000" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(11);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(10);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(9);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(8);
                      end if;
                    end if;
                    if i = "1001" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(0);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(11);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(10);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(9);
                      end if;
                    end if;
                    if i = "1010" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(1);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(0);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(11);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(10);
                      end if;
                    end if;
                    if i = "1011" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(2);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(1);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(0);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(11);
                      end if;
                    end if;
---------------------------------------------------------------------------------------------------------------
-------------------------------------------------a doua animatie---------shift right---------------------------                    
                when "01" => 
                        if i = "0000" then
                    if count(15 downto 14) = "00" then
                        catode<= m(3);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(2);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(1);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(0);
                      end if;
                    end if;
                    if i = "0001" then
                    if count(15 downto 14) = "00" then
                        catode<= m(2);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(1);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(0);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(11);
                      end if;
                     end if;
                     if i = "0010" then
                     if count(15 downto 14) = "00" then
                        catode<= m(1);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(0);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(11);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(10);
                      end if;
                    end if;
                    if i = "0011" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(0);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(11);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(10);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(9);
                      end if;
                    end if;
                    if i = "0100" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(11);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(10);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(9);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(8);
                      end if;
                    end if;
                    if i = "0101" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(10);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(9);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(8);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(7);
                      end if;
                    end if;
                    if i = "0110" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(9);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(8);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(7);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(6);
                      end if;
                    end if;
                    if i = "0111" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(8);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(7);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(6);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(5);
                      end if;
                    end if;
                    if i = "1000" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(7);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(6);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(5);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(4);
                      end if;
                    end if;
                    if i = "1001" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(6);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(5);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(4);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(3);
                      end if;
                    end if;
                    if i = "1010" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(5);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(4);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(3);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(2);
                      end if;
                    end if;
                    if i = "1011" then 
                    if count(15 downto 14) = "00" then
                        catode<= m(4);
                       elsif count(15 downto 14) = "01" then
                         catode<= m(3);
                       elsif count(15 downto 14) = "10" then
                          catode<= m(2);
                        elsif count(15 downto 14) = "11" then
                           catode<= m(1);
                      end if;
                    end if;
------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------a treia animatie----------------------------------------------------------------------------
                  when "10" =>
                    if j = "000000" then
                        if count(15 downto 14) = "11" then
                            catode<= m(0); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "000001" then
                        if count(15 downto 14) = "10" then
                            catode<= m(1); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "000010" then
                        if count(15 downto 14) = "01" then
                            catode<= m(2); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "000011" then
                        if count(15 downto 14) = "00" then
                            catode<= m(3); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                   if j = "000100" then
                        if count(15 downto 14) = "11" then
                            catode<= m(1); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "000101" then
                        if count(15 downto 14) = "10" then
                            catode<= m(2); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "000110" then
                        if count(15 downto 14) = "01" then
                            catode<= m(3); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "000111" then
                        if count(15 downto 14) = "00" then
                            catode<= m(4); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001000" then
                        if count(15 downto 14) = "11" then
                            catode<= m(2); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001001" then
                        if count(15 downto 14) = "10" then
                            catode<= m(3); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001010" then
                        if count(15 downto 14) = "01" then
                            catode<= m(4); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001011" then
                        if count(15 downto 14) = "00" then
                            catode<= m(5); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    
                    if j = "001100" then
                        if count(15 downto 14) = "11" then
                            catode<= m(3); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001101" then
                        if count(15 downto 14) = "10" then
                            catode<= m(4); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001110" then
                        if count(15 downto 14) = "01" then
                            catode<= m(5); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "001111" then
                        if count(15 downto 14) = "00" then
                            catode<= m(6); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                   if j = "010000" then
                        if count(15 downto 14) = "11" then
                            catode<= m(4); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010001" then
                        if count(15 downto 14) = "10" then
                            catode<= m(5); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010010" then
                        if count(15 downto 14) = "01" then
                            catode<= m(6); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010011" then
                        if count(15 downto 14) = "00" then
                            catode<= m(7); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010100" then
                        if count(15 downto 14) = "11" then
                            catode<= m(5); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010101" then
                        if count(15 downto 14) = "10" then
                            catode<= m(6); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010110" then
                        if count(15 downto 14) = "01" then
                            catode<= m(7); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "010111" then
                        if count(15 downto 14) = "00" then
                            catode<= m(8); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011000" then
                        if count(15 downto 14) = "11" then
                            catode<= m(6); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011001" then
                        if count(15 downto 14) = "10" then
                            catode<= m(7); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011010" then
                        if count(15 downto 14) = "01" then
                            catode<= m(8); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011011" then
                        if count(15 downto 14) = "00" then
                            catode<= m(9); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                   if j = "011100" then
                        if count(15 downto 14) = "11" then
                            catode<= m(7); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011101" then
                        if count(15 downto 14) = "10" then
                            catode<= m(8); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011110" then
                        if count(15 downto 14) = "01" then
                            catode<= m(9); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "011111" then
                        if count(15 downto 14) = "00" then
                            catode<= m(10); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100000" then
                        if count(15 downto 14) = "11" then
                            catode<= m(8); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100001" then
                        if count(15 downto 14) = "10" then
                            catode<= m(9); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100010" then
                        if count(15 downto 14) = "01" then
                            catode<= m(10); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100011" then
                        if count(15 downto 14) = "00" then
                            catode<= m(11); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100100" then
                        if count(15 downto 14) = "11" then
                            catode<= m(9); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100101" then
                        if count(15 downto 14) = "10" then
                            catode<= m(10); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100110" then
                        if count(15 downto 14) = "01" then
                            catode<= m(11); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "100111" then
                        if count(15 downto 14) = "00" then
                            catode<= m(0); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                   if j = "101000" then
                        if count(15 downto 14) = "11" then
                            catode<= m(10); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101001" then
                        if count(15 downto 14) = "10" then
                            catode<= m(11); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101010" then
                        if count(15 downto 14) = "01" then
                            catode<= m(0); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101011" then
                        if count(15 downto 14) = "00" then
                            catode<= m(1); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101100" then
                        if count(15 downto 14) = "11" then
                            catode<= m(11); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101101" then
                        if count(15 downto 14) = "10" then
                            catode<= m(0); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101110" then
                        if count(15 downto 14) = "01" then
                            catode<= m(1); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
                    if j = "101111" then
                        if count(15 downto 14) = "00" then
                            catode<= m(2); 
                        else
                            catode <= m(11);              
                        end if;
                    end if;
-----------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------a patra animatie--------------------------------------------                    
                  when others =>
                  if newCLK = '1' then 
                    if i = "0000" then
                        if count(15 downto 14) = "00" then
                            catode <= m(3);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(2);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(1);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(0);
                         end if;
                     end if;
                        else catode <= m(11);
                     end if;
                     if newCLK = '1' then 
                     if i = "0001" then
                        if count(15 downto 14) = "00" then
                            catode <= m(4);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(3);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(2);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(1);
                         end if;
                     end if;
                        else catode <= m(11);
                    end if;
                     if newCLK = '1' then 
                    if i = "0010" then
                        if count(15 downto 14) = "00" then
                            catode <= m(5);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(4);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(3);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(2);
                         end if;
                     end if;
                        else catode <= m(11);
                     end if;
                     if newCLK = '1' then 
                     if i = "0011" then
                        if count(15 downto 14) = "00" then
                            catode <= m(6);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(5);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(4);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(3);
                         end if;
                     end if;
                        else catode <= m(11);
                    end if;
                     if newCLK = '1' then 
                    if i = "0100" then
                        if count(15 downto 14) = "00" then
                            catode <= m(7);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(6);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(5);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(4);
                         end if;
                     end if;
                        else catode <= m(11);
                     end if;
                     if newCLK = '1' then 
                     if i = "0101" then
                        if count(15 downto 14) = "00" then
                            catode <= m(8);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(7);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(6);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(5);
                         end if;
                     end if;
                        else catode <= m(11);
                    end if;
                     if newCLK = '1' then 
                    if i = "0110" then
                        if count(15 downto 14) = "00" then
                            catode <= m(9);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(8);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(7);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(6);
                         end if;
                     end if;
                        else catode <= m(11);
                     end if;
                     if newCLK = '1' then 
                     if i = "0111" then
                        if count(15 downto 14) = "00" then
                            catode <= m(10);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(9);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(8);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(7);
                         end if;
                     end if;
                        else catode <= m(11);
                    end if;
                     if newCLK = '1' then 
                    if i = "1000" then
                        if count(15 downto 14) = "00" then
                            catode <= m(11);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(10);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(9);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(8);
                         end if;
                     end if;
                        else catode <= m(11);
                     end if;
                     if newCLK = '1' then 
                     if i = "1001" then
                        if count(15 downto 14) = "00" then
                            catode <= m(0);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(11);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(10);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(9);
                         end if;
                     end if;
                        else catode <= m(11);
                    end if;
                     if newCLK = '1' then 
                    if i = "1010" then
                        if count(15 downto 14) = "00" then
                            catode <= m(1);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(0);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(11);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(10);
                         end if;
                     end if;
                        else catode <= m(11);
                     end if;
                     if newCLK = '1' then 
                     if i = "1011" then
                        if count(15 downto 14) = "00" then
                            catode <= m(2);
                            elsif count(15 downto 14) = "01" then
                                catode <= m(1);
                                elsif count(15 downto 14) = "10" then
                                    catode <= m(0);
                                    elsif count(15 downto 14) = "11" then
                                        catode <= m(11);
                         end if;
                     end if;
                        else catode <= m(11);
                    end if;                 
            end case;
            else 
                catode <= m(11);
        end if;
end process;

end Behavioral;
