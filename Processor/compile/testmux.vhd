-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\testmux.vhd
-- Generated   : Thu Jun  2 01:24:25 2016
-- From        : C:\My_Designs\Processor\Processor\src\testmux.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library ieee;
        use ieee.std_logic_1164.all;

entity testmux is 
end testmux;

architecture TB of testmux is

---- Component declarations -----

component MUX10TO1
  port (
       D : in STD_LOGIC;
       DIN : in STD_LOGIC_VECTOR(15 downto 0);
       G : in STD_LOGIC_VECTOR(15 downto 0);
       GOUT : in STD_LOGIC;
       I0 : in STD_LOGIC_VECTOR(15 downto 0);
       I1 : in STD_LOGIC_VECTOR(15 downto 0);
       I2 : in STD_LOGIC_VECTOR(15 downto 0);
       I3 : in STD_LOGIC_VECTOR(15 downto 0);
       I4 : in STD_LOGIC_VECTOR(15 downto 0);
       I5 : in STD_LOGIC_VECTOR(15 downto 0);
       I6 : in STD_LOGIC_VECTOR(15 downto 0);
       I7 : in STD_LOGIC_VECTOR(15 downto 0);
       RN : in STD_LOGIC_VECTOR(0 to 7);
       O : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal T_D : std_logic;
signal T_GOUT : std_logic;
signal T_DIN : std_logic_vector (15 downto 0);
signal T_G : std_logic_vector (15 downto 0);
signal T_I0 : std_logic_vector (15 downto 0);
signal T_I1 : std_logic_vector (15 downto 0);
signal T_I2 : std_logic_vector (15 downto 0);
signal T_I3 : std_logic_vector (15 downto 0);
signal T_I4 : std_logic_vector (15 downto 0);
signal T_I5 : std_logic_vector (15 downto 0);
signal T_I6 : std_logic_vector (15 downto 0);
signal T_I7 : std_logic_vector (15 downto 0);
signal T_O : std_logic_vector (15 downto 0);
signal T_RN : std_logic_vector (0 to 7);

begin

---- Processes ----

process
                         variable ERR_CNT : INTEGER := 0;
                       begin
                         report "STARTING!";
                         T_I0 <= "0101010101010101";
                         T_I1 <= "0001110001110101";
                         T_I2 <= "1110101010101010";
                         T_I3 <= "1010101000011001";
                         T_I4 <= "0000000000000000";
                         T_I5 <= "1111111111111111";
                         T_I6 <= "0000001000101010";
                         T_I7 <= "1001001000100010";
                         T_DIN <= "1000100100100001";
                         T_G <= "1111111011110011";
                         report "STARTING!";
                         T_RN <= "10000000";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "0101010101010101") report "I0 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "0101010101010101") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "01000000";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "0001110001110101") report "I1 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "0001110001110101") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00100000";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "1110101010101010") report "I2 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "1110101010101010") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00010000";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "1010101000011001") report "I3 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "1010101000011001") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00001000";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "0000000000000000") report "I4 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "0000000000000000") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00000100";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "1111111111111111") report "I5 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "1111111111111111") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00000010";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "0000001000101010") report "I6 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "0000001000101010") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00000001";
                         T_D <= '0';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "1001001000100010") report "I7 CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "1001001000100010") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00000000";
                         T_D <= '1';
                         T_GOUT <= '0';
                         wait for 2NS;
                         assert (T_O = "1000100100100001") report "D CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "1000100100100001") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_RN <= "00000000";
                         T_D <= '0';
                         T_GOUT <= '1';
                         wait for 2NS;
                         assert (T_O = "1111111011110011") report "GOUT CASE IS INCORRECT!" severity ERROR;
                         if (T_O /= "1111111011110011") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         if (ERR_CNT = 0) then
                            assert FALSE report "TESTBENCH OF MUX10TO1 COMPLETED SUCCESSFULLY!" severity NOTE;
                         else 
                            assert FALSE report "SOMETHING WRONG, TRY TEST AGAIN" severity ERROR;
                         end if;
                         wait;
                       end process;                      

----  Component instantiations  ----

TESTMUX : MUX10TO1
  port map(
       D => T_D,
       DIN => T_DIN,
       G => T_G,
       GOUT => T_GOUT,
       I0 => T_I0,
       I1 => T_I1,
       I2 => T_I2,
       I3 => T_I3,
       I4 => T_I4,
       I5 => T_I5,
       I6 => T_I6,
       I7 => T_I7,
       O => T_O,
       RN => T_RN
  );


end TB;
