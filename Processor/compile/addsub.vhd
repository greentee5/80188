-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\addsub.vhd
-- Generated   : Thu Jun  2 01:24:23 2016
-- From        : C:\My_Designs\Processor\Processor\src\addsub.bde
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

entity addsub is
  port(
       SUB : in std_logic;
       X : in std_logic_vector(15 downto 0);
       Y : in std_logic_vector(15 downto 0);
       F : out std_logic_vector(15 downto 0)
  );
end addsub;

architecture BEHV of addsub is

---- Component declarations -----

component ADDER
  port (
       X : in STD_LOGIC_VECTOR(15 downto 0);
       Y : in STD_LOGIC_VECTOR(15 downto 0);
       Z : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component SUBTRACTOR
  port (
       X : in STD_LOGIC_VECTOR(15 downto 0);
       Y : in STD_LOGIC_VECTOR(15 downto 0);
       Z : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal Z_ADD : std_logic_vector (15 downto 0);
signal Z_SUB : std_logic_vector (15 downto 0);

begin

---- Processes ----

process (X,Y,SUB,Z_ADD,Z_SUB)
                       begin
                         if SUB = '0' then
                            F <= Z_ADD;
                         else 
                            F <= Z_SUB;
                         end if;
                       end process;                      

----  Component instantiations  ----

U_ADDER : ADDER
  port map(
       X => X,
       Y => Y,
       Z => Z_ADD
  );

U_SUB : SUBTRACTOR
  port map(
       X => X,
       Y => Y,
       Z => Z_SUB
  );


end BEHV;
