

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ContadorAnillo4bits_TB is
--  Port ( );

end ContadorAnillo4bits_TB;

architecture Behavioral of ContadorAnillo4bits_TB is

signal clk, reset, ce : std_logic; --entradas
signal B : std_logic_vector ( 3 downto 0); --salida

component carga_FF_D 
Port ( clk: in std_logic;
		d: in std_logic;
		q: out std_logic);
end component;

component Contador2bits
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
          -- tc : out STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (1 downto 0));
           
end component;

begin
UUT: entity work.ContadorAnillo4bits 
    port map(
    CLK =>clk,
    RESET => reset,
    CE => ce,
    B => B
    
);
--constant period: time := 20ns;

carga: carga_FF_D 
 Port map ( 
       clk => clk,
       d => B(1)
       
);

process 

--Inicia con tabla de la verdad solo para verificar funcionamiento
begin
reset <= '0';--, '0' after 10ns;
ce <= '1';
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;


clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '0';--, '0' after 10ns;
ce <= '1';

clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '0';--, '0' after 10ns;
ce <= '1';

clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '0';--, '0' after 10ns;
ce <= '1';

--PRUEBA 1 variar reset
ce <= '1';
reset <= '1';--, '0' after 10ns;
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;


clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '1';--, '0' after 10ns;
ce <= '0';

clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
reset <= '1';--, '0' after 10ns;
ce <= '0';



--PRUEBA 2

reset <= '0';--, '0' after 10ns;
ce <= '1';
clk <= '0';
wait for 1ns;
clk <= '1';
wait for 5ns;


clk <= '0';
wait for 1ns;
clk <= '1';
wait for 3ns;
reset <= '0';--, '0' after 10ns;
ce <= '0';

clk <= '0';
wait for 1ns;
clk <= '1';
wait for 3ns;
reset <= '0';--, '0' after 10ns;
ce <= '0';

clk <= '0';
wait for 1ns;
clk <= '1';
wait for 3ns;
reset <= '0';--, '0' after 10ns;
ce <= '0';
end process;

end Behavioral;
