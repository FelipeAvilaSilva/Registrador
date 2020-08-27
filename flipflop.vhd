library ieee;
use ieee.std_logic_1164.all;

entity flipflop is 
	port(
		clock, clear, d, load: in std_logic;
		q: out std_logic
	);
end flipflop;	
architecture registrador of flipflop is
signal q_temp: std_logic;
begin
	process(clock, clear)
	begin
		if clear = '1' THEN
			q_temp <= '0';
		elsif clock'EVENT and clock='1' THEN
			if load = '1' THEN
				q_temp <= d;
			else
				q_temp <= q_temp;
			end if;
		end if;
	end process;
	q<= q_temp;
end registrador;