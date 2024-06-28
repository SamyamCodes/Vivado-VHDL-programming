library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fourto1mux_tb is
end fourto1mux_tb;
architecture Behavioral of fourto1mux_tb is
component fourto1mux
PORT ( d: in std_logic_vector ( 3 downto 0);
sel: in std_logic_vector (1 downto 0);
y: out std_logic);
end component;
signal d: std_logic_vector(3 downto 0):= "0000";
signal sel: std_logic_vector(1 downto 0);
signal y: std_logic;
begin
uut: fourto1mux Port Map (d => d,
sel => sel,
y => y);stimuli: process
begin
wait for 10ns ;
d <= "1010";
sel <= "00";
wait for 10ns;
sel <= "01";
wait for 10ns;
sel <= "10";
wait for 10ns;
sel <= "11";
wait for 10 ns;
end process;
end Behavioral;