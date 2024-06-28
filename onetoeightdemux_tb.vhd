library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;
entity demux_56_tb is
end demux_56_tb;
architecture bench of demux_56_tb is
component demux_56
Port ( I : in STD_LOGIC;
S : inout STD_LOGIC_vector (2 downto 0);
D : out STD_LOGIC_vector(7 downto 0));
end component;
signal I: STD_LOGIC;
signal S: STD_LOGIC_vector (2 downto 0);
signal D: STD_LOGIC_vector(7 downto 0);begin
uut: demux_56 port map ( I => I,
S => S,
D => D );
stimulus: process
begin
wait for 10ns ;
d => "10101011";
s => "000";
wait for 10ns;
s => "001";
wait for 10ns;
s => "010";
wait for 10ns;
s => "011";
wait for 10ns;
s => "100";
wait for 10ns;
s => "101";
wait for 10ns;
s => "110";
wait for 10ns;
s => "111";
wait for 10ns;
wait;
end process;
end behavioral;