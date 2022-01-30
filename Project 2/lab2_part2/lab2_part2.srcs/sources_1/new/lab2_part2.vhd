----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2021 02:39:32 PM
-- Design Name: 
-- Module Name: lab2_part2 - Behavioral
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

entity lab2_part2 is
    Port ( C : in STD_LOGIC_VECTOR (1 downto 0);
           K : in STD_LOGIC_VECTOR (2 downto 0);
           Lab0_Unlock : out STD_LOGIC;
           Lab1_Unlock : out STD_LOGIC;
           Alarm : out STD_LOGIC);
end lab2_part2;

architecture Behavioral of lab2_part2 is
signal Lab0: STD_LOGIC := '0';
signal Lab1: STD_LOGIC := '0';

begin

Lab0 <= (not(C(0)) and C(1) and K(0) and not(K(2))) ;
Lab1 <= (C(0) and not (C(1)) and not (K(0) ) and K (2));
Lab0_Unlock <= Lab0;
Lab1_Unlock <= Lab1; 
Alarm <= (C(0) or C(1)) and not(not(C(0)) and C(1) and K(0) and not(K(2))) and not (C(0) and not (C(1)) and not (K(0) ) and K (2));

end Behavioral;
