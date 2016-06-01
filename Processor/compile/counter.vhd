-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\counter.vhd
-- Generated   : Thu Jun  2 01:24:24 2016
-- From        : C:\My_Designs\Processor\Processor\src\counter.bde
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

entity counter is
  port(
       CLK : in std_logic;
       CLR : in std_logic;
       Q : inout std_logic_vector(1 downto 0) := "00"
  );
end counter;

architecture BEHV of counter is

---- Component declarations -----

component T_FF
  port (
       EN : in STD_LOGIC;
       T : in STD_LOGIC;
       Q : inout STD_LOGIC := '0'
  );
end component;

---- Signal declarations used on the diagram ----

signal EN : std_logic_vector (0 to 1);

begin

----  Component instantiations  ----

TFF1 : T_FF
  port map(
       EN => EN(0),
       Q => Q(0),
       T => CLK
  );

TFF2 : T_FF
  port map(
       EN => EN(1),
       Q => Q(1),
       T => CLK
  );

EN(0) <= not(CLR);

EN(1) <= not(CLR) and Q(0);


end BEHV;
