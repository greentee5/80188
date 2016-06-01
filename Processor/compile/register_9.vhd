-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\register_9.vhd
-- Generated   : Thu Jun  2 01:24:24 2016
-- From        : C:\My_Designs\Processor\Processor\src\register_9.bde
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

entity register_9 is
  port(
       CLK : in std_logic;
       EN : in std_logic;
       D : in std_logic_vector(0 to 8);
       Q : out std_logic_vector(0 to 8)
  );
end register_9;

architecture BEHV of register_9 is

begin

---- Processes ----

process (D,EN,CLK)
                       begin
                         if EN = '1' and CLK'EVENT and (not (not CLK)) = '1' then
                            Q <= D;
                         end if;
                       end process;                      

end BEHV;
