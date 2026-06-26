----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2026 16:21:06
-- Design Name: 
-- Module Name: SieteSegmento_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SieteSegmento_tb is
--  Port ( );
end SieteSegmento_tb;

architecture Behavioral of SieteSegmento_tb is

component SieteSegmento is
        Port ( 
            entradaHex: in std_logic_vector(3 downto 0);
            seventSegmAut: out std_logic_vector(6 downto 0)
        );
    end component;
    signal entrada: std_logic_vector(3 downto 0);
    signal salida: std_logic_vector(6 downto 0);
begin
    dut: SieteSegmento
    port map(
        entradaHex => entrada,
        seventSegmAut => salida
    );

    stim_proc: process
    begin
        wait for 20 ns;
        for i in 0 to 15 loop
            entrada <= std_logic_vector(TO_UNSIGNED(i,4));
            wait for 10 ns;
        end loop;
    end process;
end Behavioral;
