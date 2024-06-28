library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity fourbitcounter_56 is
Port (
clk : in std_logic; -- Clock signal
rst : in std_logic; -- Asynchronous reset signal
clr : in std_logic; -- Clear signal (used to increment the counter)
q : out std_logic_vector(3 downto 0) -- Output of the counter
);
end fourbitcounter_56;
architecture behavioral of fourbitcounter_56 is
signal count: std_logic_vector(3 downto 0) := "0000"; -- Counter signal
begin
process (clk, rst)
begin
if (rst = '1') then
count <= "0000"; -- Asynchronous reset
elsif rising_edge(clk) then
if (clr = '1') then
count <= count + 1; -- Increment the counter
end if;
end if;
end process;
q <= count;
end behavioral;

-- Test Bench Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity fourbitcounter_56_tb is
end fourbitcounter_56_tb;
architecture Behavioral of fourbitcounter_56_tb is
component fourbitcounter_56
Port(clk : in std_logic;
rst : in std_logic;
clr : in std_logic;
q : out std_logic_vector(3 downto 0)
);
end component;
signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal clr : std_logic := '0';
signal q : std_logic_vector(3 downto 0);
constant clk_period : time := 10 ns;
begin
uut: fourbitcounter_56
port map (
clk => clk,
rst => rst,
clr => clr,
q => q
);
clk_process :process
begin
while true loop
clk <= '0';
wait for clk_period / 2;
clk <= '1';
wait for clk_period / 2;
end loop;
end process;
stimuli: process begin
rst <= '1';
wait for 20 ns;
rst <= '0';
wait for 20 ns;
clr <= '1';
wait for 100 ns;
clr <= '0';
wait for 100 ns;
wait;
end process;
end Behavioral;


-- 4 Bit Updown Counter

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity updowncounter_56 is
Port (
clk : in std_logic;
rst : in std_logic;
clr : in std_logic;
updown : in std_logic;
q : out std_logic_vector(3 downto 0));
end updowncounter_56;
architecture Behavioral of updowncounter_56 is
signal count : std_logic_vector(3 downto 0) := "0000";
begin
process (clk, rst)
begin
if (rst = '1') then
count <= "0000";
elsif rising_edge(clk) then
if (clr = '1') then
if (updown = '1') then
count <= count + 1;
else
count <= count - 1;
end if;
end if;
end if;
end process;
q <= count;
end Behavioral;

-- Test Bench Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity updowncounter_56_tb is
end updowncounter_56_tb;
architecture Behavioral of updowncounter_56_tb is
component updowncounter_56Port (
clk : in std_logic;
rst : in std_logic;
clr : in std_logic;
updown : in std_logic;
q : out std_logic_vector(3 downto 0)
);
end component;
signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal clr : std_logic := '0';
signal updown : std_logic := '0';
signal q : std_logic_vector(3 downto 0);
constant clk_period : time := 10 ns;
begin
uut: updowncounter_56
port map (
clk => clk,
rst => rst,
clr => clr,
updown => updown,
q => q );
clk_process : process
begin
while true loop
clk <= '0';
wait for clk_period / 2;
clk <= '1';
wait for clk_period / 2;
end loop;
end process;
stimuli: process begin
rst <= '1';
wait for 20 ns;
rst <= '0';
wait for 20 ns;
clr <= '1';
updown <= '1';
wait for 100 ns;
updown <= '0';
wait for 100 ns;
rst <= '1';
wait for 20 ns;
rst <= '0';
wait for 20 ns;updown <= '1';
wait for 50 ns;
updown <= '0';
wait for 50 ns;
wait for 100 ns;
wait;
end process;
end Behavioral;

