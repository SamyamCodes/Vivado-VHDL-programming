-- D Flipflop

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity d_flipflop_56 is
port (
din : in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic);
end d_flipflop_56;
architecture Behavioral of d_flipflop_56 is
begin
dff: process (clk, rst, din) begin
if (rst = '1') then
q <= '0';
elsif (clk' event and clk = '1') then
q <= din;
end if;
end process dff;
end Behavioral;

-- Test Bench Code

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity dflipflop_tb_56 is
end dflipflop_tb_56;
architecture Behavioral of dflipflop_tb_56 is
component d_flipflop_56
port (
din : in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic);
end component;
signal din: std_logic;
signal clk: std_logic;
signal rst: std_logic;signal q: std_logic;
begin
uut: d_flipflop_56 port map ( din => din,
clk => clk,
rst => rst,
q => q);
stimulus: process begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;
stimuli: process begin
din <= '0';
wait for 10ns;
din <= '1';
wait for 10ns;
end process;
stimuls: process begin
rst <= '0';
wait for 100ns;
rst <= '1';
wait for 10ns;
end process;
end Behavioral;

-- T flipflop

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity t_56 is
port (
tin: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic);
end t_56;
architecture Behavioral of t_56 is
begin
tff: process (clk, rst, tin) is
variable m: std_logic := '0';
begin
if (rst ='1') then
m := '0';
elsif (rising_edge(clk)) then
if (tin = '1') then
m := not m;
end if;
end if;
q <= m;
end process tff;
end Behavioral;

 -- Test bench code

 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity t_tb is
end t_tb;
architecture Behavioral of t_tb is
component t_56
port (
tin: in std_logic;
clk: in std_logic;
rst: in std_logic;
q: out std_logic);
end component;signal tin: std_logic;
signal clk: std_logic;
signal rst: std_logic;
signal q: std_logic;
signal m: std_logic;
begin
uut : t_56 port map ( tin => tin,
clk => clk,
rst => rst,
q => q);
stimulus: process begin
clk <= '0';
wait for 10ns;
clk <= '1';
wait for 10ns;
end process;
stimuli: process begin
tin <= '0';
wait for 10ns;
tin <= '1';
wait for 100ns;
end process;
stim: process begin
rst <= '0';
wait for 100ns;
rst <= '1';
wait for 10ns;
end process;
stt: process begin
m <= '0';
wait for 10ns;
m <= '1';
wait for 100ns;
end process;
end Behavioral;

