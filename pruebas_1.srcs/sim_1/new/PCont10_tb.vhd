----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2026 17:54:51
-- Design Name: 
-- Module Name: PCont10_tb - Behavioral
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

entity PCont10_tb is
end PCont10_tb;

architecture Behavioral of PCont10_tb is
    component PCont10 is
        Port ( 
            clk: in std_logic; 
            rst: in std_logic;
            count: out std_logic_vector(3 downto 0):="0000";
            fin: out std_logic
        );
    end component;
    signal rst,clk: std_logic:='0';
    signal count:std_logic_vector(3 downto 0);
    signal fin:std_logic;
begin
    dut: PCont10
    port map 
    (
        clk => clk,
        rst=>rst,
        count => count,
        fin => fin
    );
   --Definición de la señal de reloj
    clk <= NOT clk AFTER 2 ns;
    
    stim_proc: process
    begin
        rst <= '1';
        wait for 25 ns;
        rst <= '0';
        wait for 2 ns;
        rst <= '1';
        wait;
    end process;
    

end Behavioral;
