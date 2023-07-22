library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity carga_FF_D is
port(
		clk: in std_logic;
		d: in std_logic;
		q: out std_logic
	);
end carga_FF_D;

architecture Behavioral of carga_FF_D is

begin 
 process(clk)
     begin 
        if(rising_edge(clk)) then
         q <= d; 
        end if;
 end process;

end Behavioral;
