----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/26/2021 02:08:34 PM
-- Design Name: 
-- Module Name: lab2_part1 - Behavioral
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

entity lab2_part1 is
    Port ( EI : out STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (2 downto 0);
           DS : in STD_LOGIC_VECTOR (1 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           I : in STD_LOGIC_VECTOR (2 downto 0));
end lab2_part1;

architecture Behavioral of lab2_part1 is
signal y: std_logic :='0';
begin
     y <= (I(0) and (not S(1)) and (not S(0))) or (I(1) and (not (S(1))) and S(0)) or (I(2) and S(1) and (not(S(0))));

     O(0) <= (y and (not DS(1)) and (not DS(0)));
     O(1) <= (y and (not DS(1)) and DS(0));
     O(2) <= (y and DS(1) and (not DS(0)));
     
     EI(0) <= (not(DS(0)) and (not DS(1)));
     EI(1) <= (DS(0) and not (DS(1)));
     EI(2) <= (not (DS(0)) and DS(1));

end Behavioral;
