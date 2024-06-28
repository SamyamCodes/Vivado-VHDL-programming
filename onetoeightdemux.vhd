library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity demux_56 is
Port ( I : in STD_LOGIC;
S : inout STD_LOGIC_vector (2 downto 0);
D : out STD_LOGIC_vector(7 downto 0));
end demux_56;
architecture Behavioral of demux_56 is
begin
process (I, S)
begin
D <= "00000000";
case S is
when "000" => d(0) <= i;
when "001" => d(1) <= i;
when "010" => d(2) <= i;
when "011" => d(3) <= i;
when "100" => d(4) <= i;
when "101" => d(5) <= i;
when "110" => d(6) <= i;
when "111" => d(7) <= i;
when others => I <= '0';
end case;
end process;
end Behavioral;