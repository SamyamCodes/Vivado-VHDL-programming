library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxx_56_tb is
end muxx_56_tb;

architecture Behavioral of muxx_56_tb is
component muxx_56
PORT ( d: in std_logic_vector ( 7 downto 0);
sel: in std_logic_vector (2 downto 0);
y: out std_logic);
end component;
signal d: std_logic_vector(7 downto 0):= "00000000";signal sel: std_logic_vector(2 downto 0);
signal y: std_logic;
begin
uut: muxx_56 Port Map (d => d,
sel => sel,
y => y);
stimuli: process
begin
wait for 10ns ;
d <= "10101011";
sel <= "000";
wait for 10ns;
sel <= "001";
wait for 10ns;
sel <= "010";
wait for 10ns;
sel <= "011";
wait for 10ns;
sel <= "100";
wait for 10ns;
sel <= "101";
wait for 10ns;
sel <= "110";
wait for 10ns;
sel <= "111";
wait for 10ns;
end process;
end behavioral;