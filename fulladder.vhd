library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladder_56 is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
C : in STD_LOGIC;
Carry : out STD_LOGIC;
Sum : out STD_LOGIC);
end fulladder_56;architecture Behavioral of fulladder_56 is
begin
Sum <= A XOR (B XOR C);
Carry <= (A and B) OR (B and C) OR (A and C);
end Behavioral;