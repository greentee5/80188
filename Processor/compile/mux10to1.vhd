-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\mux10to1.vhd
-- Generated   : Thu Jun  2 01:24:24 2016
-- From        : C:\My_Designs\Processor\Processor\src\mux10to1.bde
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

entity mux10to1 is
  port(
       D : in std_logic;
       GOUT : in std_logic;
       DIN : in std_logic_vector(15 downto 0);
       G : in std_logic_vector(15 downto 0);
       I0 : in std_logic_vector(15 downto 0);
       I1 : in std_logic_vector(15 downto 0);
       I2 : in std_logic_vector(15 downto 0);
       I3 : in std_logic_vector(15 downto 0);
       I4 : in std_logic_vector(15 downto 0);
       I5 : in std_logic_vector(15 downto 0);
       I6 : in std_logic_vector(15 downto 0);
       I7 : in std_logic_vector(15 downto 0);
       RN : in std_logic_vector(0 to 7);
       O : out std_logic_vector(15 downto 0)
  );
end mux10to1;

architecture behv of mux10to1 is

---- Signal declarations used on the diagram ----

signal ENABLES : std_logic_vector (0 to 9);

begin

---- Processes ----

process (RN,I0,I1,I2,I3,I4,I5,I6,I7,DIN,G,D,GOUT)
                       begin
                         for I in 0 to 7 loop
                             ENABLES(I) <= RN(I);
                         end loop;
                         ENABLES(8) <= D;
                         ENABLES(9) <= GOUT;
                       end process;                      

---- User Signal Assignments ----
with ENABLES select O <= I0 when "1000000000", I1 when "0100000000", I2 when "0010000000", I3 when "0001000000", I4 when "0000100000", I5 when "0000010000", I6 when "0000001000", I7 when "0000000100", DIN when "0000000010", G when "0000000001", "XXXXXXXXXXXXXXXX" when others;

end behv;
