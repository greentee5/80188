-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\ir.vhd
-- Generated   : Thu Jun  2 01:24:24 2016
-- From        : C:\My_Designs\Processor\Processor\src\ir.bde
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

entity ir is
  port(
       CLK : in std_logic;
       IR_IN : in std_logic;
       D : in std_logic_vector(0 to 8);
       IR_OUT : out std_logic_vector(0 to 8)
  );
end ir;

architecture BEHV of ir is

begin

---- Processes ----

process (D,IR_IN,CLK)
                       begin
                         if IR_IN = '1' and CLK = '1' and CLK'EVENT then
                            IR_OUT <= D;
                         end if;
                       end process;                      

end BEHV;
