library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contadorMod256_tb is
end contadorMod256_tb;

architecture Behavioral of contadorMod256_tb is
    component contadorMod256 is
        Port (  clk: in std_logic;
            rst: in std_logic; 
            count: out std_logic_vector(7 downto 0) 
        );
    end component;
    
    signal rst,clk: std_logic:='0';
    signal count:std_logic_vector(7 downto 0);
    

begin
    dut: contadorMod256 
    port map 
    (
        clk => clk,
        rst=>rst,
        count => count
    );
   --Definición de la señal de reloj
    clk <= NOT clk AFTER 2 ns;
    
    -- Proceso que controla la evolución del estímulo en el RST.
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
