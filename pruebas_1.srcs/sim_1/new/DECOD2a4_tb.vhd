----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2026 17:05:15
-- Design Name: 
-- Module Name: DECOD2a4_tb - Behavioral
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

entity DECOD2a4_tb is
--  Port ( );
end DECOD2a4_tb;

architecture Behavioral of DECOD2a4_tb is
component DECOD_2a4 is
    Port ( 
    entrada: in std_logic_vector(1 downto 0);
    s0,s1,s2,s3: out std_logic
    );
end component;
    signal entrada: std_logic_vector(1 downto 0);
    signal s0,s1,s2,s3: std_logic;
begin
    dut: DECOD_2a4
    port map(
        entrada => entrada,
        s0 => s0,
        s1 => s1,
        s2 => s2,
        s3 => s3
    );
    
    stim_proc: process
    begin
        wait for 20 ns;
        entrada <= "00";
        wait for 10 ns;
        entrada <= "01";
        wait for 10 ns;
        entrada <= "10";
        wait for 10 ns;
        entrada <= "11";
        wait for 10 ns;
    end process;

end Behavioral;
