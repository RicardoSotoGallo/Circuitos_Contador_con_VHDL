----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2026 16:10:53
-- Design Name: 
-- Module Name: SieteSegmento - Behavioral
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

entity SieteSegmento is
    Port ( 
    entradaHex: in std_logic_vector(3 downto 0);
    seventSegmAut: out std_logic_vector(6 downto 0)
    );
end SieteSegmento;

architecture Behavioral of SieteSegmento is

begin
    seventSegmAut<= "1111110" when entradaHex ="0000" else
                    "0110000" when entradaHex ="0001" else
                    "1101101" when entradaHex ="0010" else
                    "1111001" when entradaHex ="0011" else
                    "0110011" when entradaHex ="0100" else
                    "1011011" when entradaHex ="0101" else
                    "1011111" when entradaHex ="0110" else
                    "1110000" when entradaHex ="0111" else
                    "1111111" when entradaHex ="1000" else
                    "1111011" when entradaHex ="1001" else
                    "1111110";

end Behavioral;
