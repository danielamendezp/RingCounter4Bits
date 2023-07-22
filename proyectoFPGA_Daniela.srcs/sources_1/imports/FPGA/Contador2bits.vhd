----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2022 12:25:01
-- Design Name: 
-- Module Name: Contador2bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contador2bits is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
          -- tc : out STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (1 downto 0));
end Contador2bits;


architecture Behavioral of Contador2bits is

signal temp : integer range 0 to 2**2 - 1;


begin

    process (clk, reset, ce)

        begin 
            if reset = '1' then
            temp <= 0;
            elsif clk'event and clk = '1' and ce = '1' then
            temp <= temp + 1;
            end if;
     end process;       

--tc <= '1' when temp = 2**2 - 1 else '0';

counter <= std_logic_vector(to_unsigned(temp,counter'length));

end Behavioral;
