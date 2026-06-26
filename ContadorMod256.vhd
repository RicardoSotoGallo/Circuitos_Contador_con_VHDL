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

entity ContadorMod256 is
    Port ( 
        clk: in std_logic; 
        rst: in std_logic;
        count: out std_logic_vector(7 downto 0):="00000000"
    );
end ContadorMod256;

architecture Behavioral of ContadorMod256 is
    signal count_up: std_logic_vector(7 downto 0);

begin
    process(clk,rst)
    begin
        if(rst = '0') then
            count_up <= "00000000";
        elsif(clk'event and clk = '1') then
            count_up<= count_up+"00000001";
        end if;
    end process;
    count <= count_up;
end Behavioral;
