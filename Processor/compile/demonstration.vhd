-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\demonstration.vhd
-- Generated   : Thu Jun  2 01:24:24 2016
-- From        : C:\My_Designs\Processor\Processor\src\demonstration.bde
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

entity demonstration is 
end demonstration;

architecture TB of demonstration is

---- Component declarations -----

component PROCESSOR
  port (
       CLK : in STD_LOGIC;
       DIN : in STD_LOGIC_VECTOR(0 to 15);
       RESET : in STD_LOGIC;
       RUN : in STD_LOGIC;
       DONE : out STD_LOGIC;
       U_BUS : inout STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal T_CLK : std_logic;
signal T_DONE : std_logic;
signal T_RESET : std_logic;
signal T_RUN : std_logic;
signal T_BUS : std_logic_vector (15 downto 0);
signal T_DIN : std_logic_vector (15 downto 0);

begin

---- Processes ----

process
                         variable ERR_CNT : INTEGER := 0;
                       begin
                         T_CLK <= '0';
                         T_RUN <= '1';
                         T_RESET <= '0';
                         T_DIN <= "0010001110000000";
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         T_DIN <= "0000000000001100";
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         wait for 10NS;
                         T_CLK <= '0';
                         T_DIN <= "0010010000000000";
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         T_DIN <= "0000000000010100";
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_DIN <= "0100000010000000";
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait for 10NS;
                         T_CLK <= '0';
                         wait for 10NS;
                         T_CLK <= '1';
                         wait;
                       end process;                      

----  Component instantiations  ----

U_PROCESSOR : PROCESSOR
  port map(
       CLK => T_CLK,
       DIN => T_DIN,
       DONE => T_DONE,
       RESET => T_RESET,
       RUN => T_RUN,
       U_BUS => T_BUS
  );


end TB;
