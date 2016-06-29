LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY TimesTen IS
	PORT (X : IN STD_LOGIC_VECTOR(5 downto 0);
		TenX :OUT STD_LOGIC_VECTOR(9 downto 0));

END ENTITY TimesTen;

ARCHITECTURE Behaviour OF TimesTen IS
signal c: std_logic_vector (5 downto 0);
BEGIN

TenX(0) <= '0';
TenX(1) <= x(0);
TenX(2) <= x(1);
TenX(9) <= c(5);

INST1: ENTITY work.HalfAdder PORT MAP (A=>X(0), B=>X(2), SUM =>TenX(3), CARRY=>c(0));

INST2: ENTITY work.FullAdder PORT MAP (A=>X(3), B=>X(1), SUM =>TenX(4), C=>c(0), CARRY=>c(1)); 

INST3: ENTITY work.FullAdder PORT MAP (A=>X(4), B=>X(2), SUM =>TenX(5), C=>c(1), CARRY=>c(2)); 

INST4: ENTITY work.FullAdder PORT MAP (A=>X(5), B=>X(3), SUM =>TenX(6), C=>c(2), CARRY=>c(3)); 

INST5: ENTITY work.HalfAdder PORT MAP (A=>X(4), B=>c(3), SUM =>TenX(7), CARRY=>c(4));

INST6: ENTITY work.HalfAdder PORT MAP (A=>X(5), B=>c(4), SUM =>TenX(8), CARRY=>c(5));


END ARCHITECTURE Behaviour; 
