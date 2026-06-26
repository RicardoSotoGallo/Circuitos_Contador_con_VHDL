----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2026 17:47:24
-- Design Name: 
-- Module Name: PCont10 - Behavioral
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

entity PCont10 is
    Port ( 
        clk: in std_logic; 
        rst: in std_logic;
        count: out std_logic_vector(3 downto 0):="0000";
        fin: out std_logic
    );
end PCont10;

architecture Behavioral of PCont10 is
    signal count_up: std_logic_vector(3 downto 0);
begin
    process(clk,rst)
    begin
        if(rst = '0') then
            count_up <= "0000";
            fin <= '0';
        elsif(clk'event and clk = '1') then
            if(count_up = "1010") then 
                count_up <= "0000";
                fin <= '1';
            else
                count_up<= count_up+"0001";
                fin <= '0';
            end if;
        end if;
        count <= count_up;
    end process;

end Behavioral;
