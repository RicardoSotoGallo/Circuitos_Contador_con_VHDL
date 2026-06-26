----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2026 17:20:36
-- Design Name: 
-- Module Name: multi4 - Behavioral
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

entity multi4 is
    Port ( in00, in01, in10,in11: in std_logic_vector(3 downto 0);
            sel: in std_logic_vector(1 downto 0);
            salida: out std_logic_vector(3 downto 0) 
            );
end multi4;
-- STD_LOGIC_VECTOR (3 downto 0);

architecture Behavioral of multi4 is
begin
    salida <=   in00 when sel = "00" else
                in01 when sel = "01" else
                in10 when sel = "10" else
                in11;
end Behavioral;
