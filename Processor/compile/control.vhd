-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\control.vhd
-- Generated   : Thu Jun  2 01:24:23 2016
-- From        : C:\My_Designs\Processor\Processor\src\control.bde
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

entity control is
  port(
       RESETN : in std_logic;
       RUN : in std_logic;
       CNT : in std_logic_vector(1 downto 0);
       INS : in std_logic_vector(0 to 8);
       ADDSUB : out std_logic;
       A_IN : out std_logic;
       CLR : out std_logic;
       DIN_OUT : out std_logic;
       DONE : out std_logic;
       G_IN : out std_logic;
       G_OUT : out std_logic;
       IR_IN : out std_logic;
       R_IN : out std_logic_vector(0 to 7);
       R_OUT : out std_logic_vector(0 to 7)
  );
end control;

architecture BEHV of control is

---- Component declarations -----

component DECODER_3_8
  port (
       I : in STD_LOGIC_VECTOR(2 downto 0);
       O : out STD_LOGIC_VECTOR(0 to 7)
  );
end component;

---- Signal declarations used on the diagram ----

signal RX_IN : std_logic;
signal RX_OUT : std_logic;
signal RY_OUT : std_logic;
signal I : std_logic_vector (0 to 2);
signal RX : std_logic_vector (2 downto 0);
signal RX_DEC : std_logic_vector (0 to 7);
signal RY : std_logic_vector (2 downto 0);
signal RY_DEC : std_logic_vector (0 to 7);

begin

---- Processes ----

process (RUN,RESETN,INS,CNT,RX_OUT,RY_OUT,RX_IN,I,RX,RY,RX_DEC,RY_DEC)
                       begin
                         for J in 0 to 7 loop
                             R_OUT(J) <= (RX_OUT and RX_DEC(J)) or (RY_OUT and RY_DEC(J));
                             R_IN(J) <= RX_IN and RX_DEC(J);
                         end loop;
                       end process;                      

---- User Signal Assignments ----
DIN_OUT <= '1' when (CNT = "01") and (I = "001") and (RESETN = '0') else '0';
DONE <= '1' when (CNT = "01") and (I = "000") and (RESETN = '0') else '1' when (CNT = "10") and (I = "001") and (RESETN = '0') else '1' when (CNT = "11") and (I = "010") and (RESETN = '0') else '1' when (CNT = "11") and (I = "011") and (RESETN = '0') else '0';
IR_IN <= '1' when ((CNT = "00") and (RESETN = '0')) else '0';
RY_OUT <= '1' when (CNT = "01") and (I = "000") and (RESETN = '0') else '1' when (CNT = "10") and (I = "010") and (RESETN = '0') else '1' when (CNT = "10") and (I = "011") and (RESETN = '0') else '0';
RX_OUT <= '1' when (CNT = "01") and (I = "010") and (RESETN = '0') else '1' when (CNT = "01") and (I = "011") and (RESETN = '0') else '0';
RX_IN <= '1' when (CNT = "01") and (I = "000") and (RESETN = '0') else '1' when (CNT = "01") and (I = "001") and (RESETN = '0') else '1' when (CNT = "11") and (I = "010") and (RESETN = '0') else '1' when (CNT = "11") and (I = "011") and (RESETN = '0') else '0';
CLR <= '1' when (RUN = '0' and RESETN = '0') else '1' when (CNT = "01") and (I = "000") and (RESETN = '0') else '1' when (CNT = "10") and (I = "001") and (RESETN = '0') else '1' when (CNT = "11") and (I = "000") and (RESETN = '0') else '1' when (CNT = "11") and (I = "011") and (RESETN = '0') else '0';
G_OUT <= '1' when (CNT = "11") and (I = "010") and (RESETN = '0') else '1' when (CNT = "11") and (I = "011") and (RESETN = '0') else '0';
ADDSUB <= '1' when (CNT = "10") and (I = "011") and (RESETN = '0') else '0';
A_IN <= '1' when (CNT = "01") and (I = "010") and (RESETN = '0') else '1' when (CNT = "01") and (I = "011") and (RESETN = '0') else '0';
G_IN <= '1' when (CNT = "10") and (I = "010") and (RESETN = '0') else '1' when (CNT = "10") and (I = "011") and (RESETN = '0') else '0';

----  Component instantiations  ----

DEC_X : DECODER_3_8
  port map(
       I => RX,
       O => RX_DEC
  );

DEC_Y : DECODER_3_8
  port map(
       I => RY,
       O => RY_DEC
  );

I(0) <= INS(0);

I(1) <= INS(1);

I(2) <= INS(2);

RX(2) <= INS(3);

RX(1) <= INS(4);

RX(0) <= INS(5);

RY(2) <= INS(6);

RY(1) <= INS(7);

RY(0) <= INS(8);


end BEHV;
