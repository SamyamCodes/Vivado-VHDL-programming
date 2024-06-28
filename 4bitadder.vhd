library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity four_bit_full_adder_56 is
Port(A: in std_logic_vector(3 downto 0); B:
in std_logic_vector(3 downto 0); S: out
std_logic_vector(3 downto 0); C: out
std_logic);
end four_bit_full_adder_56;
architecture Behavioral of four_bit_full_adder_56 is component
full_adder_56 Port(
A: in std_logic;
B: in std_logic;
Cin: in std_logic;
S: out std_logic;
Cout: out std_logic);
End component;

signal carry: std_logic_vector(2 downto 0);
begin

u1: full_adder_56 port map(A=>A(0), B=>B(0), Cin=>'0', S=>S(0), Cout=>Carry(0));
u2: full_adder_56 port map(A=>A(1), B=>B(1), Cin=> Carry(0), S=>S(1), Cout=>Carry(1)); 
u3: full_adder_56 port map(A=>A(2), B=>B(2), cin=> Carry(1), S=>S(2), Cout=>Carry(2)); 
u4: full_adder_56 port map(A=>A(3), B=>B(3), Cin=>Carry(2), S=>S(3), Cout=>C);
end Behavioral;