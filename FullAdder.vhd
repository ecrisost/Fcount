LIBRARY ieee; 
use ieee.std_logic_1164.all;

ENTITY FullAdder IS
	
	PORT (A : IN STD_LOGIC;
			B : IN STD_LOGIC;
			C : IN STD_LOGIC;
			CARRY : OUT STD_LOGIC;
         SUM   : OUT STD_LOGIC );
			
END Entity FullAdder;
ARCHITECTURE Behaviour OF FullAdder IS

signal p,g : std_logic;

BEGIN

p <= A XOR B;
g <= A AND B;

SUM <= p XOR C;
CARRY <= (p AND C) OR g;

END ARCHITECTURE Behaviour;
