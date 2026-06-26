----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2026 17:04:42
-- Design Name: 
-- Module Name: DECOD_2a4 - Behavioral
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

entity DECOD_2a4 is
    Port ( 
    entrada: in std_logic_vector(1 downto 0);
    s0,s1,s2,s3: out std_logic
    );
end DECOD_2a4;

architecture Behavioral of DECOD_2a4 is
    
begin
    s0 <= not(entrada(0)) and not(entrada(1));
    s1 <= entrada(0) and not(entrada(1));
    s2 <= not(entrada(0)) and entrada(1);
    s3 <= entrada(0) and entrada(1);
end Behavioral;
