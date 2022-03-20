----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2020 13:15:44
-- Design Name: 
-- Module Name: logic_unit - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity logic_unit is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0); 
           logic_out : out STD_LOGIC_VECTOR (7 downto 0));
end logic_unit;

architecture Behavioral of logic_unit is
begin
  WITH sel SELECT
  logic_out <= NOT a  WHEN "000",
 		        NOT b  WHEN "001",
 		      a AND b  WHEN "010",
              a OR  b  WHEN "011",
 		      a NAND b WHEN "100",
 		      a NOR b  WHEN "101",
 		      a XOR b  WHEN "110",
 		        NOT (a XOR b) WHEN OTHERS;

end Behavioral;
