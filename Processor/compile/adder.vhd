-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\adder.vhd
-- Generated   : Thu Jun  2 01:24:23 2016
-- From        : C:\My_Designs\Processor\Processor\src\adder.bde
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

entity adder is
  port(
       X : in std_logic_vector(15 downto 0);
       Y : in std_logic_vector(15 downto 0);
       Z : out std_logic_vector(15 downto 0)
  );
end adder;

architecture BEHV of adder is

begin

---- Processes ----

process (X,Y)
                         variable C : std_logic;
                       begin
                         C := '0';
                         for I in 0 to 15 loop
                             Z(I) <= X(I) xor Y(I) xor C;
                             C := (X(I) and Y(I)) or (X(I) and C) or (Y(I) and C);
                         end loop;
                       end process;                      

end BEHV;
