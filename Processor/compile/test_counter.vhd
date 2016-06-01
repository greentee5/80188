-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\test_counter.vhd
-- Generated   : Thu Jun  2 01:24:25 2016
-- From        : C:\My_Designs\Processor\Processor\src\test_counter.bde
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

entity test_counter is 
end test_counter;

architecture TB of test_counter is

---- Component declarations -----

component COUNTER
  port (
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       Q : inout STD_LOGIC_VECTOR(1 downto 0) := "00"
  );
end component;

---- Signal declarations used on the diagram ----

signal T_CLK : std_logic;
signal T_CLR : std_logic;
signal T_Q : std_logic_vector (0 to 1);

begin

---- Processes ----

process
                         variable ERR_CNT : INTEGER := 0;
                       begin
                         T_CLR <= '0';
                         T_CLK <= '0';
                         wait for 1NS;
                         assert (T_Q = "00") report "ERROR1!" severity ERROR;
                         if (T_Q /= "00") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 1NS;
                         assert (T_Q = "01") report "ERROR2!" severity ERROR;
                         if (T_Q /= "01") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 1NS;
                         T_CLK <= '1';
                         wait for 1NS;
                         assert (T_Q = "10") report "ERROR3!" severity ERROR;
                         if (T_Q /= "10") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 1NS;
                         T_CLK <= '1';
                         wait for 1NS;
                         assert (T_Q = "11") report "ERROR4!" severity ERROR;
                         if (T_Q /= "11") then
                            ERR_CNT := ERR_CNT + 1;
                         end if;
                         wait for 10NS;
                         if ERR_CNT = 0 then
                            assert FALSE report "TESTBENCH OF COUNTER COMPLETED SUCCESSFULLY!" severity NOTE;
                         else 
                            assert FALSE report "SOMETHING WRONG. :(" severity ERROR;
                         end if;
                         wait;
                       end process;                      

----  Component instantiations  ----

U_COUNTER : COUNTER
  port map(
       CLK => T_CLK,
       CLR => T_CLR,
       Q => T_Q
  );


end TB;
