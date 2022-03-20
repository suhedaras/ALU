----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2020 19:43:22
-- Design Name: 
-- Module Name: alu - Behavioral
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
 ----------------------- ALU projesi (ana kod): ----------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
Port ( a, b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);  --Ana devreye göre portlar tanýmlandý
   		   cin: IN STD_LOGIC;
   		   sel: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 		     y: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end alu;

architecture Behavioral of alu is
--Componentler tanýmlandý
    COMPONENT arithmetic_unit IS
 		 Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           cin : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (2 downto 0);   
           arit_out : out STD_LOGIC_VECTOR (7 downto 0));  
 	END COMPONENT;
 	------------------------------
 	COMPONENT logic_unit IS
 		Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
                b : in STD_LOGIC_VECTOR (7 downto 0);
                sel : in STD_LOGIC_VECTOR (2 downto 0); 
                logic_out : out STD_LOGIC_VECTOR (7 downto 0));  
 	END COMPONENT;
 	------------------------------
 	COMPONENT mux IS
 		 Port ( c : in STD_LOGIC_VECTOR (7 downto 0);
               d : in STD_LOGIC_VECTOR (7 downto 0);
               sel: IN STD_LOGIC;            
               mux_out : out STD_LOGIC_VECTOR (7 downto 0));
 	END COMPONENT;
 	------------------------------
 	SIGNAL x1, x2: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin
--Port map ile eþleþtirmeler yapýldý
 	U1: arithmetic_unit PORT MAP(a, b, cin, sel(2 DOWNTO 0), x1);
 	U2: logic_unit PORT MAP (a, b, sel(2 DOWNTO 0), x2);
	U3: mux PORT MAP (x1, x2, sel(3), y);

end Behavioral;
















