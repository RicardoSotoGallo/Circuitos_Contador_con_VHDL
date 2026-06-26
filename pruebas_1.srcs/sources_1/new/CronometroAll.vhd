----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2026 18:12:33
-- Design Name: 
-- Module Name: CronometroAll - Behavioral
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

entity CronometroAll is
    Port ( 
        clk: in std_logic; 
        rst: in std_logic; 
        seventSegmAut: out std_logic_vector(6 downto 0);
        s0,s1,s2,s3: out std_logic
    );
end CronometroAll;

architecture Behavioral of CronometroAll is
    component PConta4milis is
        Port ( clk: in std_logic;
            reset: in std_logic;
            vector2: out std_logic_vector(1 downto 0)
        );
    end component;
    
    component PCont10 is
        Port ( 
            clk: in std_logic; 
            rst: in std_logic;
            count: out std_logic_vector(3 downto 0):="0000";
            fin: out std_logic
        );
    end component;
    
    component multi4 is
        Port ( in00, in01, in10,in11: in std_logic_vector(3 downto 0);
            sel: in std_logic_vector(1 downto 0);
            salida: out std_logic_vector(3 downto 0) 
            );
    end component;
    
    component DECOD_2a4 is
        Port ( 
        entrada: in std_logic_vector(1 downto 0);
        s0,s1,s2,s3: out std_logic
        );
    end component;
    
    component SieteSegmento is
        Port ( 
            entradaHex: in std_logic_vector(3 downto 0);
            seventSegmAut: out std_logic_vector(6 downto 0)
        );
    end component;
    
    signal vector2_s: std_logic_vector(1 downto 0);
    signal decimal,segundo,decsegundo,min, mostrar: std_logic_vector(3 downto 0);
    signal S1seg,S10seg,S60seg,S10min: std_logic;
begin
    
    
    
    Decod_2a4_comp:DECOD_2a4
    port map(
        entrada => vector2_s,
        s0 => s0,
        s1 => s1,
        s2 => s2,
        s3 => s3
    );
    
    multi:multi4
    port map(
        in00 => decimal,
        in01 => segundo,
        in10 => decsegundo,
        in11 => min,
        sel => vector2_s,
        salida => mostrar
    );
    
    sieteSegmento_comp:SieteSegmento
    port map(
        entradaHex => mostrar,
        seventSegmAut => seventSegmAut
    );
    
    
    Pcont: PConta4milis
    port map(
        clk => clk,
        reset => rst,
        vector2 => vector2_s
    );
    
    PC10d: PCont10
        port map(
            clk => clk,
            rst => rst,
            count => decimal,
            fin => S1seg
        );
    PC10S: PCont10
        port map(
            clk => S1seg,
            rst => rst,
            count => segundo,
            fin => S10seg
        );
        
    PC60S: PCont10
        port map(
            clk => S10seg,
            rst => rst,
            count => decsegundo,
            fin => S60seg
        );
        
     PC10m: PCont10
        port map(
            clk => S60seg,
            rst => rst,
            count => min,
            fin => S10min
        );
        
    
end Behavioral;
