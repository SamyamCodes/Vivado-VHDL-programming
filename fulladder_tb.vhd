library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
entity fulladder_56_tb is
end;
architecture bench of fulladder_56_tb is
component fulladder_56
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
C : in STD_LOGIC;
Carry : out STD_LOGIC;
Sum : out STD_LOGIC);
end component;
signal A: STD_LOGIC;
signal B: STD_LOGIC;
signal C: STD_LOGIC;
signal Carry: STD_LOGIC;
signal Sum: STD_LOGIC;
begin
uut: fulladder_56 port map ( A => A,
B => B,
C => C,
Carry => Carry,
Sum => Sum );
stimulus: process
begin
a<= '0';
b <= '0';
c<= '0';
wait for 10ns;
a<= '0';
b <= '0';
c<= '1';wait for 10ns;
a<= '0';
b <= '1';
c<= '0';
wait for 10ns;
a<= '0';
b <= '0';
c<= '1';
wait for 10ns;
a<= '1';
b <= '0';
c<= '0';
wait for 10ns;
a<= '1';
b <= '0';
c<= '1';
wait for 10ns;
a<= '1';
b <= '1';
c<= '0';
wait for 10ns;
a<= '1';
b <= '1';
c<= '1';
wait for 10ns;
wait;
end process;
end;