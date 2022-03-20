----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2020 13:32:47
-- Design Name: 
-- Module Name: mux - Behavioral
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
entity mux is
    Port ( c : in STD_LOGIC_VECTOR (7 downto 0);
           d : in STD_LOGIC_VECTOR (7 downto 0);
           sel: IN STD_LOGIC;              --sel'in en anlamlý bitini kullanýldý(3.bit)
           mux_out : out STD_LOGIC_VECTOR (7 downto 0));
end mux;

architecture Behavioral of mux is
begin
    WITH sel SELECT
        mux_out <= c WHEN '0',
                   d WHEN OTHERS;
end Behavioral;
