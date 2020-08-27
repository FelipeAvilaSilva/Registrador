library ieee;
use ieee.std_logic_1164.all;

entity armazena is
	port ( 
		enable, clk: in std_logic;
		dado: in std_logic_vector (7 downto 0);
		adress: in std_logic_vector(1 downto 0)
);
end armazena;
architecture arq_armazena of armazena is 

signal y: std_logic_vector (3 downto 0);

component registrador_8bit
		port(
		dado: in std_logic_vector (7 downto 0);
		clock4, clear4, load4: in std_logic;
		saida: out std_logic_vector (7 downto 0)
	);

	signal y: std_logic;
	begin		
		registrador 1: registrador_8bit
		port map 
	
		with sel_dest select	
		y <= "0000" when "00",
			  "0001"	when "01",
			  "0010" when "10",
			  "0011" when "11",
			  
		process (y) is 
			if (y = "0000" and enable = '1') then
				
		
		
		
		
		 
		