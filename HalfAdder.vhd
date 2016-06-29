library ieee;
use ieee.std_logic_1164.all;

ENTITY HalfAdder IS
	
	PORT (A : IN STD_LOGIC;
			B : IN STD_LOGIC;
			CARRY : OUT STD_LOGIC;
         SUM   : OUT STD_LOGIC );
			
END ENTITY HalfAdder;

ARCHITECTURE Behaviour OF HalfAdder IS

BEGIN

SUM <= A XOR B;
CARRY <= A AND B;

END ARCHITECTURE Behaviour;
