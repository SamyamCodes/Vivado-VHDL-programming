library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shiftrotate_56 is
Port ( D : in STD_LOGIC_vector(7 downto 0);
sel : in STD_LOGIC_vector(1 downto 0);
y : out STD_LOGIC_vector(7 downto 0));
end shiftrotate_56;
architecture Behavioral of shiftrotate_56 is
begin
process (sel, D)
begin
case sel is
when "00" => y <= d(7 downto 0);
when "01" => y <= d(7 downto 1) & '0';
when "10" => y <= '0' & d(6 downto 0);
when "11" => y <= d(6 downto 0) &d(7);
when others => y <= "00000000";
end case;
end process;
end Behavioral;

-- Test Bench Code 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shiftrotate_56_tb is
end shiftrotate_56_tb;
architecture Behavioral of shiftrotate_56_tb is
component shiftrotate_56
Port( D : in STD_LOGIC_vector(7 downto 0);
sel : in STD_LOGIC_vector(1 downto 0);
y : out STD_LOGIC_vector(7 downto 0));
end component;
signal D: STD_LOGIC_vector(7 downto 0);
signal sel: STD_LOGIC_vector(1 downto 0);
signal y : STD_LOGIC_vector(7 downto 0);
begin
uut: shiftrotate_56 port map( D => D,
sel => sel,y => y);
stimuli: process
begin
wait for 10ns;
D <= "10101011";
sel <= "00";
wait for 10ns;
sel <= "01";
wait for 10ns;
sel <= "10";
wait for 10ns;
sel <= "11";
wait for 10ns;
end process;
end Behavioral;

-- Another Way

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shiftrotate_56 is
Port ( D : in STD_LOGIC_VECTOR(7 downto 0);
sel : in STD_LOGIC_VECTOR(2 downto 0);
y : out STD_LOGIC_VECTOR(7 downto 0));
end shiftrotate_56;
architecture Behavioral of shiftrotate_56 is
begin
process (sel, D)
begin
case sel is
when "000" => y <= D; -- No shift
when "001" => y <= D(6 downto 0) & D(7); -- Right shift by 1
when "010" => y <= D(5 downto 0) & D(7 downto 6); -- Right shift by 2
when "011" => y <= D(4 downto 0) & D(7 downto 5); -- Right shift by 3
when "100" => y <= D(3 downto 0) & D(7 downto 4); -- Right shift by 4
when "101" => y <= D(2 downto 0) & D(7 downto 3); -- Right shift by 5
when "110" => y <= D(1 downto 0) & D(7 downto 2); -- Right shift by 6
when "111" => y <= D(0) & D(7 downto 1); -- Right shift by 7
when others => y <= (others => '0');
end case;
end process;
end Behavioral;

-- Test Bench Code
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shiftrotate_56_tb is
end shiftrotate_56_tb;architecture Behavioral of shiftrotate_56_tb is
-- Component declaration for the unit under test
component shiftrotate_56
Port ( D : in STD_LOGIC_VECTOR(7 downto 0);
sel : in STD_LOGIC_VECTOR(2 downto 0);
y : out STD_LOGIC_VECTOR(7 downto 0));
end component;
-- Inputs
signal D : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal sel : STD_LOGIC_VECTOR(2 downto 0) := "000";
-- Outputs
signal y : STD_LOGIC_VECTOR(7 downto 0);
begin
-- Instantiate the Unit Under Test (UUT)
uut : shiftrotate_56 port map (
D => D,
sel => sel,
y => y
);
-- Stimulus process
stimuli: process
begin
-- Test case 1: No shift
D <= "10101010";
sel <= "000";
wait for 10 ns;
-- Test case 2: Right shift by 1
sel <= "001";
wait for 10 ns;
-- Test case 3: Right shift by 2
sel <= "010";
wait for 10 ns;
-- Test case 4: Right shift by 3
sel <= "011";
wait for 10 ns;
-- Test case 5: Right shift by 4
sel <= "100";
wait for 10 ns;
-- Test case 6: Right shift by 5
sel <= "101";wait for 10 ns;
-- Test case 7: Right shift by 6
sel <= "110";
wait for 10 ns;
-- Test case 8: Right shift by 7
sel <= "111";
wait for 10 ns;
wait;
end process;
end Behavioral;