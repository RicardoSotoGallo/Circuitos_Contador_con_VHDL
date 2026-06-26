----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2026 18:22:05
-- Design Name: 
-- Module Name: PConta4Milis_db - Behavioral
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

entity PConta4Milis_db is
--  Port ( );
end PConta4Milis_db;

architecture Behavioral of PConta4Milis_db is
        component PConta4milis is
            Port ( clk: in std_logic;
            reset: in std_logic;
            vector2: out std_logic_vector(1 downto 0)
            );
    end component;
    
    signal clk,reset: std_logic:='0';
    signal vector2:std_logic_vector(1 downto 0);
begin

    dut: PConta4milis 
    port map 
    (
        clk => clk,
        reset=>reset,
        vector2 => vector2
    );
   --Definición de la señal de reloj
    clk <= NOT clk AFTER 2 ns;
    
    -- Proceso que controla la evolución del estímulo en el RST.
    stim_proc: process
    begin
        reset <= '1';
        wait for 25 ns;
        reset <= '0';
        wait for 2 ns;
        reset <= '1';
        wait;
    end process;
end Behavioral;
