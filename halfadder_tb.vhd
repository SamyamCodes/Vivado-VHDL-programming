library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Lab1_56_tb is
-- Port ( );
end Lab1_56_tb;
architecture Behavioral of Lab1_56_tb is
component lab01_56
Port(a: IN std_logic;
b: IN std_logic;
c: OUT std_logic;
s: OUT std_logic);
end component;
signal A: std_logic : = '0';
signal B: std_logic : = '0';
signal C: std_logic : = '0';
signal S: std_logic : = '0';
begin
UUT lab01_56 Port Map (
A => a;
B => b;
S => s;C => c);
stimuli : process begin
wait for 10ns;
A <= '0';
B <= '0';
wait for 10ns;
A <= '0';
B <= '1';
wait for 10ns;
A <= '1';
B <= '0';
wait for 10ns;
A <= '1';
B <= '1';
wait;
end process;
end Behavioral;