----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2024 23:05:21
-- Design Name: 
-- Module Name: ALU_4BIT - Behavioral
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
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_4BIT is
    Port ( SEL : in STD_LOGIC_VECTOR (3 to 0);
           A : in STD_LOGIC_VECTOR (3 to 0);
           B : in STD_LOGIC_VECTOR (3 to 0);
           Y : out STD_LOGIC_VECTOR (3 to 0));
end ALU_4BIT;

architecture Behavioral of ALU_4BIT is

begin
with sel select
Y <= A+B when "0000",
     A-B when "0001",
     A and B when "0010",
     A nand B when "0011",
     A xor B when "0100",
     A xnor B when "0101",
     A or B when "0110",
     A nor B when "0111",
     A when "1000",
     B when "1001",
     not A when "1010",
     not B when "1011",
     A + ("0001") when "1100",
     B + ("0001") when "1101",
     A - ("0001") when "1110",
     B - ("0001") when "1111",
     A when others;


end Behavioral;
