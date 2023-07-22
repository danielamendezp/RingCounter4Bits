----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2022 15:49:19
-- Design Name: 
-- Module Name: Deco2a4 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Deco2a4 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : out STD_LOGIC_VECTOR (3 downto 0));
end Deco2a4;

architecture Behavioral of Deco2a4 is
         
begin

with A select
    B <= "0001" when "00",
         "0010" when "01",
         "0100" when "10",
         "1000" when "11",
         "1111" when others;

end Behavioral;
