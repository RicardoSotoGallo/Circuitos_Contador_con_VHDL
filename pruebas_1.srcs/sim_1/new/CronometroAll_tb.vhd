----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2026 18:43:55
-- Design Name: 
-- Module Name: CronometroAll_tb - Behavioral
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

entity CronometroAll_tb is
--  Port ( );
end CronometroAll_tb;

architecture Behavioral of CronometroAll_tb is
    component CronometroAll is
        Port ( 
            clk: in std_logic; 
            rst: in std_logic; 
            seventSegmAut: out std_logic_vector(6 downto 0);
            s0,s1,s2,s3: out std_logic
        );
    end component;
    
    signal clk: std_logic:= '0';
    signal rst: std_logic; 
    signal seventSegmAut: std_logic_vector(6 downto 0);
    signal s0,s1,s2,s3: std_logic;
    
begin

    dut: CronometroAll
        port map(
            clk => clk,
            rst => rst,
            seventSegmAut => seventSegmAut,
            s0 => s0,
            s1 => s1,
            s2 => s2,
            s3 => s3
        );
        
    clk <= NOT clk AFTER 2 ns;
        
    stim_proc: process
    begin
        wait for 20 ns;
        rst <= '0';
        wait for 10 ns;
        rst <= '1';
        
        wait;
    end process;

end Behavioral;
