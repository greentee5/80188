-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\decoder_3_8.vhd
-- Generated   : Thu Jun  2 01:24:24 2016
-- From        : C:\My_Designs\Processor\Processor\src\decoder_3_8.bde
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

entity decoder_3_8 is
  port(
       I : in std_logic_vector(2 downto 0);
       O : out std_logic_vector(0 to 7)
  );
end decoder_3_8;

architecture BEHV of decoder_3_8 is

begin

---- User Signal Assignments ----
with I select O <= "10000000" when "000", "01000000" when "001", "00100000" when "010", "00010000" when "011", "00001000" when "100", "00000100" when "101", "00000010" when "110", "00000001" when "111", "00000000" when others;

end BEHV;
