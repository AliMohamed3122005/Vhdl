Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity counter_bit is
port(
clk : IN std_logic;
rst : IN std_logic;
load: IN std_logic;
data_in: IN std_logic_vector(3 downto 0);
data_out: OUT std_logic_vector(3 downto 0));
end counter_bit;

Architecture behaviour of counter_bit is 
signal temp : std_logic_vector(3 downto 0);
begin
process(rst,clk)
begin
if(rst = '1') then
temp <= "0000";
elsif(rising_edge(clk))then
if (load = '1') then
 temp <= data_in;
else 
temp <= (temp) + 1;
end if;
end if;

end process;
data_out<= temp;
end behaviour;