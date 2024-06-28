library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity lab01_56 is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
S : out STD_LOGIC;
C : out STD_LOGIC);
end lab01_56;
architecture Behavioral of lab01_56 is
begin
S <= A XOR B;
C <= A AND B;
end Behavioral;