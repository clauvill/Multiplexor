----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:07:11 03/26/2024 
-- Design Name: 
-- Module Name:    MUX_4-1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_4a1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Q : in  STD_LOGIC);
end MUX_4a1;

architecture Behavioral of MUX_4a1 is

begin


process (a, b, c, d, sel)
begin
   
   case (sel) is 
      when "00" =>
         Q <= a;
      when "01" =>
         Q <= b;
      when "10" =>
         Q <= c;
      when "11" =>
         Q <= d;
      when others =>
         Q <= d;
   end case;
				
end process;

end Behavioral;

