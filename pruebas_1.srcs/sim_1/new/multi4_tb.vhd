----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2026 17:27:38
-- Design Name: 
-- Module Name: multi4_tb - Behavioral
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

entity multi4_tb is
--  Port ( );
end multi4_tb;

architecture Behavioral of multi4_tb is
    component multi4 is
        Port ( in00, in01, in10,in11: in std_logic_vector(3 downto 0);
            sel: in std_logic_vector(1 downto 0);
            salida: out std_logic_vector(3 downto 0) 
            );
    end component;
    signal in00, in01, in10,in11: std_logic_vector(3 downto 0);
    signal sel:  std_logic_vector(1 downto 0);
    signal salida: std_logic_vector(3 downto 0);
begin
    dut: multi4
    port map(
        in00 => in00,
        in01 => in01,
        in10 => in10,
        in11 => in11,
        sel => sel,
        salida => salida
    );

    stim_proc: process
    begin
    in00 <= "0000";
    in01 <= "0001";
    in10 <= "1000";
    in11 <= "1001";
    wait for 20 ns;
    sel <= "00";
    wait for 10 ns;
    sel <= "01";
    wait for 10 ns;
    sel <= "10";
    wait for 10 ns;
    sel <= "11";
    wait for 10 ns;
    end process;
end Behavioral;
