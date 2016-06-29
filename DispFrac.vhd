 LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DispFrac IS
	PORT (X : IN STD_LOGIC_VECTOR(5 downto 0);
			disp0,disp1,disp2,disp3: OUT STD_LOGIC_VECTOR(6 downto 0));

	--LEDR : OUT STD_LOGIC_VECTOR(7 downto 0));
END ENTITY DispFrac;

ARCHITECTURE Behaviour OF DispFrac IS
Signal A,B,C,D: STD_LOGIC_VECTOR(9 downto 0);
BEGIN

--INST1: ENTITY work.TimesTen PORT MAP (X(3 downto 0)=> SW(3 downto 0), TenX(7 downto 0)=>LEDR(7 downto 0));
TimesTenInst1: ENTITY work.TimesTen PORT MAP (X(5 downto 0)=> X(5 downto 0), TenX(9 downto 0)=>A(9 downto 0));
SegD1: ENTITY work.SegDecoder PORT MAP(D=>A(9 downto 6), Y=>disp3);

TimesTenInst2: ENTITY work.TimesTen PORT MAP(X(5 downto 0)=>A(5 downto 0), TenX(9 downto 0)=>B(9 downto 0));
SegD2: Entity work.SegDecoder port map(D=>B(9 downto 6), Y=>disp2);

TimesTenInst3: Entity work.TimesTen port map(X(5 downto 0)=>B(5 downto 0), TenX(9 downto 0)=>C(9 downto 0));
SegD3: Entity work.SegDecoder port map(D=>C(9 downto 6), Y=>disp1);

TimesTenInst4: Entity work.TimesTen port map(X(5 downto 0)=>C(5 downto 0), TenX(9 downto 0)=>D(9 downto 0));
SegD4: Entity work.SegDecoder port map(D=>D(9 downto 6), Y=>disp0);

END ARCHITECTURE Behaviour; 
