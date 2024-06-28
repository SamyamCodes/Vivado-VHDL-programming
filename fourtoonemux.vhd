library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity muxx_56 is
Port ( d : in STD_LOGIC_vector(3 downto 0);
sel : in STD_LOGIC_vector (1 downto 0);
y : out STD_LOGIC);
end muxx_56;
architecture Behavioral of muxx_56 is
begin
process (sel, d)
begin
case sel is
when "00" => Y <= d(0);
when "01" => Y <= d(1);
when "10" => Y <= d(2);
when "11" => Y <= d(3);
end case;
end process;
end Behavioral;