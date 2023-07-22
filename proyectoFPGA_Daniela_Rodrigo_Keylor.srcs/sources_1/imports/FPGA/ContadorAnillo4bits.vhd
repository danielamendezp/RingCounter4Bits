
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ContadorAnillo4bits is
    Port ( --A : in STD_LOGIC_VECTOR (1 downto 0);
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CE : in STD_LOGIC;
          -- TC : in STD_LOGIC;
           B : out STD_LOGIC_VECTOR (3 downto 0));
end ContadorAnillo4bits;

architecture Behavioral of ContadorAnillo4bits is

SIGNAL counter_s : std_logic_vector ( 1 downto 0);
SIGNAL SalidaB : std_logic_vector ( 3 downto 0);
SIGNAL clock: std_logic;
SIGNAL reset_i: std_logic;
SIGNAL cargaS: std_logic;
component Contador2bits
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
          -- tc : out STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (1 downto 0));
           
end component;

component Deco2a4
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0));
end component;



begin

CONTADOR_2BITS : Contador2bits
    Port map ( 
        clk => clock,
        reset =>reset_i,
        ce => CE,
      --  tc => ,
        counter => counter_s
);

DECODIFICADOR : Deco2a4
    Port map ( 
        A => Counter_s,
        B => SalidaB
);

B <= SalidaB;
clock<= CLK;
reset_i<=reset;
end Behavioral;
