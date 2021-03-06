LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.ALL;

ENTITY IR IS
	PORT (D: IN STD_LOGIC_VECTOR(0 TO 8);
				IR_IN: IN STD_LOGIC;
				CLK: IN STD_LOGIC;
				IR_OUT: OUT STD_LOGIC_VECTOR(0 TO 8));
END IR;

ARCHITECTURE BEHV OF IR IS
BEGIN
	PROCESS (D, IR_IN, CLK)
	BEGIN
		IF IR_IN='1' AND CLK='1' AND CLK' EVENT THEN
			IR_OUT <= D;
		END IF;
	END PROCESS;
END BEHV;