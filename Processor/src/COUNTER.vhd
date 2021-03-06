LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY COUNTER IS
	PORT (CLR: IN STD_LOGIC;
				CLK: IN STD_LOGIC;
				Q: INOUT STD_LOGIC_VECTOR(1 DOWNTO 0) := "00");
END COUNTER;

ARCHITECTURE BEHV OF COUNTER IS
	COMPONENT T_FF
	PORT (EN: IN STD_LOGIC;
				T: IN STD_LOGIC;
				Q: INOUT STD_LOGIC);
	END COMPONENT;

	SIGNAL EN: STD_LOGIC_VECTOR(0 TO 1);
BEGIN
	EN(0) <= NOT CLR;
	EN(1) <= NOT CLR AND Q(0);
	
	TFF1: T_FF PORT MAP (EN(0), CLK, Q(0));
	TFF2: T_FF PORT MAP (EN(1), CLK, Q(1));
	 
END BEHV;
