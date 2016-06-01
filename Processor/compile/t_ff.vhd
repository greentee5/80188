-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\t_ff.vhd
-- Generated   : Thu Jun  2 01:24:26 2016
-- From        : C:\My_Designs\Processor\Processor\src\t_ff.bde
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

entity t_ff is
  port(
       EN : in std_logic;
       T : in std_logic;
       Q : inout std_logic := '0'
  );
end t_ff;

architecture BEHV of t_ff is

begin

---- Processes ----

process (EN,T)
                       begin
                         if EN = '1' and T = '1' and T'EVENT then
                            Q <= not Q;
                         end if;
                       end process;                      

end BEHV;
