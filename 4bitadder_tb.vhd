library IEEE;
use IEEE.std_logic_1164.all; use
IEEE.numeric_std.all;
entity four_bit_full_adder_56_tb is end;
architecture behavioral of four_bit_full_adder_56_tb is component
four_bit_full_adder_56
Port(A: in std_logic_vector(3 downto 0);
B: in std_logic_vector(3 downto 0);
S: out std_logic_vector(3 downto 0);
C: out std_logic);
end component;
signal A: std_logic_vector(3 downto 0);
signal B: std_logic_vector(3 downto 0);
signal S: std_logic_vector(3 downto 0);
signal C: std_logic;
begin
uut: four_bit_full_adder_56 port map(A=>A, B=>B, S=>S, C=>C); 
stimulus: process begin
wait for 10 ns;
A<="1111";
B<="1111";
wait;
end process;
end;