-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\sub.vhd
-- Generated   : Thu Jun  2 01:24:25 2016
-- From        : C:\My_Designs\Processor\Processor\src\sub.bde
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

entity sub is
  port(
       X : in std_logic_vector(15 downto 0);
       Y : in std_logic_vector(15 downto 0);
       Z : out std_logic_vector(15 downto 0)
  );
end sub;

architecture BEHV of sub is

begin

---- Processes ----

process (X,Y)
                         variable B : std_logic;
                       begin
                         B := '0';
                         for I in 0 to 15 loop
                             Z(I) <= X(I) xor (not Y(I)) xor (not B);
                             B := (not X(I) and Y(I)) or (not X(I) and B) or (Y(I) and B);
                         end loop;
                       end process;                      

end BEHV;
