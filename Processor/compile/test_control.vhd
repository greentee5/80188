-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\test_control.vhd
-- Generated   : Thu Jun  2 01:24:25 2016
-- From        : C:\My_Designs\Processor\Processor\src\test_control.bde
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

entity test_control is 
end test_control;

architecture TB of test_control is

---- Component declarations -----

component CONTROL
  port (
       CNT : in STD_LOGIC_VECTOR(1 downto 0);
       INS : in STD_LOGIC_VECTOR(0 to 8);
       RESETN : in STD_LOGIC;
       RUN : in STD_LOGIC;
       ADDSUB : out STD_LOGIC;
       A_IN : out STD_LOGIC;
       CLR : out STD_LOGIC;
       DIN_OUT : out STD_LOGIC;
       DONE : out STD_LOGIC;
       G_IN : out STD_LOGIC;
       G_OUT : out STD_LOGIC;
       IR_IN : out STD_LOGIC;
       R_IN : out STD_LOGIC_VECTOR(0 to 7);
       R_OUT : out STD_LOGIC_VECTOR(0 to 7)
  );
end component;

---- Signal declarations used on the diagram ----

signal T_ADDSUB : std_logic;
signal T_A_IN : std_logic;
signal T_CLR : std_logic;
signal T_DIN_OUT : std_logic;
signal T_DONE : std_logic;
signal T_G_IN : std_logic;
signal T_G_OUT : std_logic;
signal T_IR_IN : std_logic;
signal T_RESET : std_logic;
signal T_RUN : std_logic;
signal T_CNT : std_logic_vector (1 downto 0);
signal T_INS : std_logic_vector (0 to 8);
signal T_R_IN : std_logic_vector (7 downto 0);
signal T_R_OUT : std_logic_vector (7 downto 0);

begin

---- Processes ----

process
                         variable ERR_CNT : INTEGER := 0;
                       begin
                         T_RUN <= '1';
                         T_RESET <= '0';
                         T_CNT <= "00";
                         T_INS <= "000100111";
                         wait for 1NS;
                         T_CNT <= "01";
                         wait for 1NS;
                         assert (T_R_OUT(7) = '1') report "ERROR1A!" severity ERROR;
                         if (T_R_OUT(7) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_R_IN(4) = '1') report "ERROR1B!" severity ERROR;
                         if (T_R_IN(4) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_DONE = '1') report "ERROR1C!" severity ERROR;
                         if (T_DONE /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CNT <= "00";
                         T_INS <= "001011---";
                         wait for 1NS;
                         T_CNT <= "01";
                         wait for 1NS;
                         assert (T_R_IN(3) = '1') report "ERROR2A!" severity ERROR;
                         if (T_R_IN(3) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 1NS;
                         T_CNT <= "10";
                         wait for 1NS;
                         assert (T_DIN_OUT = '1') report "ERROR2B!" severity ERROR;
                         if (T_DIN_OUT /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_DONE = '1') report "ERROR2B!" severity ERROR;
                         if (T_DONE /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CNT <= "00";
                         T_INS <= "010001001";
                         wait for 1NS;
                         T_CNT <= "01";
                         wait for 1NS;
                         assert (T_R_OUT(1) = '1') report "ERROR3A!" severity ERROR;
                         if (T_R_OUT(1) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_A_IN = '1') report "ERROR3B!" severity ERROR;
                         if (T_A_IN /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 1NS;
                         T_CNT <= "10";
                         wait for 1NS;
                         assert (T_R_OUT(1) = '1') report "ERROR3C!" severity ERROR;
                         if (T_R_OUT(1) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_ADDSUB = '0') report "ERROR3D!" severity ERROR;
                         if (T_ADDSUB /= '0') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_G_IN = '1') report "ERROR3E!" severity ERROR;
                         if (T_G_IN /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         T_CNT <= "11";
                         wait for 1NS;
                         assert (T_R_IN(1) = '1') report "ERROR3F!" severity ERROR;
                         if (T_R_IN(1) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_DONE = '1') report "ERROR3G!" severity ERROR;
                         if (T_DONE /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_G_OUT = '1') report "ERROR3H!" severity ERROR;
                         if (T_G_OUT /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CNT <= "00";
                         T_INS <= "011111011";
                         wait for 1NS;
                         T_CNT <= "01";
                         wait for 1NS;
                         assert (T_R_OUT(7) = '1') report "ERROR4A!" severity ERROR;
                         if (T_R_OUT(7) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_A_IN = '1') report "ERROR4B!" severity ERROR;
                         if (T_A_IN /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 1NS;
                         T_CNT <= "10";
                         wait for 1NS;
                         assert (T_R_OUT(3) = '1') report "ERROR4C!" severity ERROR;
                         if (T_R_OUT(3) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_ADDSUB = '1') report "ERROR3D!" severity ERROR;
                         if (T_ADDSUB /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_G_IN = '1') report "ERROR4E!" severity ERROR;
                         if (T_G_IN /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         T_CNT <= "11";
                         wait for 1NS;
                         assert (T_R_IN(7) = '1') report "ERROR4F!" severity ERROR;
                         if (T_R_IN(7) /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_DONE = '1') report "ERROR4G!" severity ERROR;
                         if (T_DONE /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         assert (T_G_OUT = '1') report "ERROR4H!" severity ERROR;
                         if (T_G_OUT /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CNT <= "00";
                         wait for 1NS;
                         T_CNT <= "01";
                         T_INS <= "011111011";
                         T_RESET <= '1';
                         wait for 1NS;
                         for J in 0 to 7 loop
                             assert (T_R_OUT(J) = '0') report "ERROR5A!" severity ERROR;
                             if (T_R_OUT(J) /= '0') then
                                ERR_CNT := ERR_CNT + 1;
                             end if;
                         end loop;
                         for A in 0 to 7 loop
                             assert (T_R_IN(A) = '0') report "ERROR5B!" severity ERROR;
                             if (T_R_IN(A) /= '0') then
                                ERR_CNT := ERR_CNT + 1;
                             end if;
                         end loop;
                         assert (T_DONE = '0') report "ERROR5C!" severity ERROR;
                         if (T_DONE /= '0') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CNT <= "00";
                         T_RUN <= '0';
                         T_RESET <= '0';
                         wait for 1NS;
                         T_CNT <= "01";
                         wait for 1NS;
                         assert (T_CLR = '1') report "ERROR6A!" severity ERROR;
                         if (T_CLR /= '1') then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         if ERR_CNT = 0 then
                            assert FALSE report "TESTBENCH OF CONTROL COMPLETED SUCCESSFULLY!" severity NOTE;
                         else 
                            assert FALSE report "SOMETHING WRONG. :(" severity ERROR;
                         end if;
                         wait;
                       end process;                      

----  Component instantiations  ----

U_CONTROL : CONTROL
  port map(
       ADDSUB => T_ADDSUB,
       A_IN => T_A_IN,
       CLR => T_CLR,
       CNT => T_CNT,
       DIN_OUT => T_DIN_OUT,
       DONE => T_DONE,
       G_IN => T_G_IN,
       G_OUT => T_G_OUT,
       INS => T_INS,
       IR_IN => T_IR_IN,
       RESETN => T_RESET,
       RUN => T_RUN,
       R_IN => T_R_IN,
       R_OUT => T_R_OUT
  );


end TB;
