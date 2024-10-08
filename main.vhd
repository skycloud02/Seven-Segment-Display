library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity main is
    Port ( Anim : in STD_LOGIC_VECTOR (1 downto 0);
           CLK : in STD_LOGIC;
           Enable: in std_logic;
           anod : out STD_LOGIC_VECTOR (3 downto 0);
           catode : out STD_LOGIC_VECTOR (6 downto 0));
end main;

architecture Behavioral of main is

signal j: std_logic_vector(5 downto 0);
signal i: std_logic_vector(3 downto 0);
signal count : std_logic_vector(15 downto 0);
signal newCLK : std_logic;

component frequency_divider is
  Port ( 
        clk: in std_logic;
        clock: out std_logic
  );
end component;

component count_i is
    Port ( newCLK : in STD_LOGIC;
           i : out std_logic_vector(3 downto 0));
end component;

component count_j is
    Port ( newCLK : in STD_LOGIC;
           j : out STD_LOGIC_VECTOR (5 downto 0));
end component;

component counter_clk is
    Port ( CLK : in STD_LOGIC;
           count : inout STD_LOGIC_VECTOR (15 downto 0));
end component;

component anod_sel is
    Port ( count : in STD_LOGIC_VECTOR (15 downto 0);
           anod : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component animatie is
    Port ( Enable : in STD_LOGIC;
           Anim : in STD_LOGIC_VECTOR (1 downto 0);
           i : in STD_LOGIC_VECTOR (3 downto 0);
           j : in STD_LOGIC_VECTOR (5 downto 0);
           count : in STD_LOGIC_VECTOR (15 downto 0);
           newCLK : in STD_LOGIC;
           catode : out STD_LOGIC_VECTOR (6 downto 0));
end component;

begin

U1: frequency_divider port map(CLK, newCLK);
U2: count_i port map(newCLK, i);
U3: count_j port map(newCLK, j);
U4: counter_clk port map(CLK, count);
U5: anod_sel port map(count, anod);
U6: animatie port map(Enable, Anim, i, j, count, newCLK, catode);

end Behavioral;