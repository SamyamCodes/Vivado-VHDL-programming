library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity halfsubtractor_56 isPort ( A : in STD_LOGIC;
B : in STD_LOGIC;
Diff : out STD_LOGIC;
Borrow : out STD_LOGIC);
end halfsubtractor_56;
architecture Behavioral of halfsubtractor_56 is
begin
Diff <= A XOR B;
Borrow <= (NOT A) AND B;
end Behavioral;

