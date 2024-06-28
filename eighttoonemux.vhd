library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity muxx_56 is
Port ( d : in STD_LOGIC_vector(7 downto 0);
sel : in STD_LOGIC_vector (2 downto 0);
y : out STD_LOGIC);
end muxx_56;
architecture Behavioral of muxx_56 is
begin
process (sel, d)
begin
case sel is
when "000" => Y <= d(0);
when "001" => Y <= d(1);
when "010" => Y <= d(2);
when "011" => Y <= d(3);
when "100" => Y <= d(4);
when "101" => Y <= d(5);
when "110" => Y <= d(6);
when "111" => Y <= d(7);
when others => Y <= '0';
end case;
end process;
end Behavioral;