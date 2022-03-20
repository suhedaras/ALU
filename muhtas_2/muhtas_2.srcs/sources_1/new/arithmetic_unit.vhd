----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2020 13:22:05
-- Design Name: 
-- Module Name: arithmetic_unit - Behavioral
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

entity arithmetic_unit is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           cin : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (2 downto 0);   --Ýlk 3 biti kullanýldý
           arit_out : out STD_LOGIC_VECTOR (7 downto 0));  --Aritmetic unit den alýnan çýkýþ
end arithmetic_unit;

architecture Behavioral of arithmetic_unit is
begin
   WITH sel SELECT
   arit_out <= a   WHEN "000", --Tabloya göre düzenlendi
               a+1 WHEN "001",
               a-1 WHEN "010",
               b   WHEN "011",
               b+1 WHEN "100",
               b-1 WHEN "101",
               a+b WHEN "110",
               a+b+cin WHEN OTHERS;

end Behavioral;
