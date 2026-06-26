----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2026 18:16:37
-- Design Name: 
-- Module Name: PConta4milis - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PConta4milis is
    Port ( clk: in std_logic;
        reset: in std_logic;
        vector2: out std_logic_vector(1 downto 0)
    );
end PConta4milis;

architecture Behavioral of PConta4milis is
    signal vector2_up: std_logic_vector(1 downto 0);
begin
    process(clk,reset)
    
    begin
        if(reset = '0') then
            vector2_up <= "00";
        elsif(clk'event and clk = '1') then
            vector2_up <= vector2_up + "01";
        end if;
    end process;
    vector2 <= vector2_up;

end Behavioral;
