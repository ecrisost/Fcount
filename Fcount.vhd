LIBRARY ieee;
USE ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;

ENTITY Fcount IS
	PORT (SW: in std_logic_vector(3 downto 0);
			KEY: in std_logic_vector (0 downto 0);
			HEX0, HEX1, HEX2, HEX3 : out std_logic_vector(6 downto 0));
END ENTITY Fcount; 

ARCHITECTURE Behaviour OF Fcount IS
signal A,B,C,Y: unsigned(5 downto 0);
--signal C: unsigned (3 downto 0);
BEGIN 
A <= unsigned (SW & "00");
B <= C when Rising_Edge(KEY(0)) else B; 
C <= A+B;
Y<=C;

DispFrac: Entity work.DispFrac port map(X=> std_logic_vector(Y),disp0=>HEX0, disp1=>HEX1, disp2=>HEX2, disp3=>HEX3);

END ARCHITECTURE Behaviour; 

 
