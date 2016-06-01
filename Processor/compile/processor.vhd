-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : Processor
-- Author      : Greentee5
-- Company     : solar
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\Processor\Processor\compile\processor.vhd
-- Generated   : Thu Jun  2 01:22:05 2016
-- From        : C:\My_Designs\Processor\Processor\src\processor.bde
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

entity processor is
  port(
       CLK : in std_logic;
       RESET : in std_logic;
       RUN : in std_logic;
       DIN : in std_logic_vector(0 to 15);
       DONE : out std_logic;
       U_BUS : inout std_logic_vector(15 downto 0)
  );
end processor;

architecture BEHV of processor is

---- Component declarations -----

component ADDSUB
  port (
       SUB : in STD_LOGIC;
       X : in STD_LOGIC_VECTOR(15 downto 0);
       Y : in STD_LOGIC_VECTOR(15 downto 0);
       F : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component CONTROL
  port (
       CNT : in STD_LOGIC_VECTOR(1 downto 0);
       INS : in STD_LOGIC_VECTOR(0 to 8);
       RESETN : in STD_LOGIC;
       RUN : in STD_LOGIC;
       ADDSUB : out STD_LOGIC;
       A_IN : out STD_LOGIC;
       CLR : out STD_LOGIC;
       DIN_OUT : out STD_LOGIC;
       DONE : out STD_LOGIC;
       G_IN : out STD_LOGIC;
       G_OUT : out STD_LOGIC;
       IR_IN : out STD_LOGIC;
       R_IN : out STD_LOGIC_VECTOR(0 to 7);
       R_OUT : out STD_LOGIC_VECTOR(0 to 7)
  );
end component;
component COUNTER
  port (
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       Q : inout STD_LOGIC_VECTOR(1 downto 0) := "00"
  );
end component;
component MUX10TO1
  port (
       D : in STD_LOGIC;
       DIN : in STD_LOGIC_VECTOR(15 downto 0);
       G : in STD_LOGIC_VECTOR(15 downto 0);
       GOUT : in STD_LOGIC;
       I0 : in STD_LOGIC_VECTOR(15 downto 0);
       I1 : in STD_LOGIC_VECTOR(15 downto 0);
       I2 : in STD_LOGIC_VECTOR(15 downto 0);
       I3 : in STD_LOGIC_VECTOR(15 downto 0);
       I4 : in STD_LOGIC_VECTOR(15 downto 0);
       I5 : in STD_LOGIC_VECTOR(15 downto 0);
       I6 : in STD_LOGIC_VECTOR(15 downto 0);
       I7 : in STD_LOGIC_VECTOR(15 downto 0);
       RN : in STD_LOGIC_VECTOR(0 to 7);
       O : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component REGISTER_16
  port (
       CLK : in STD_LOGIC;
       D : in STD_LOGIC_VECTOR(15 downto 0);
       EN : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component REGISTER_9
  port (
       CLK : in STD_LOGIC;
       D : in STD_LOGIC_VECTOR(0 to 8);
       EN : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(0 to 8)
  );
end component;

---- Architecture declarations -----
component ADDER
                       port (X : IN std_logic_vector(15 downto 0);
                             Y : IN std_logic_vector(15 downto 0);
                             Z : OUT std_logic_vector(15 downto 0));
                     end component ADDER;
component SUB
                       port (X : IN std_logic_vector(15 downto 0);
                             Y : IN std_logic_vector(15 downto 0);
                             Z : OUT std_logic_vector(15 downto 0));
                     end component SUB;


---- Signal declarations used on the diagram ----

signal A_IN : std_logic;
signal CLR : std_logic;
signal DIN_OUT : std_logic;
signal EN_ADDSUB : std_logic;
signal G_IN : std_logic;
signal G_OUT : std_logic;
signal IR_IN : std_logic;
signal ADDSUB_OUT : std_logic_vector (15 downto 0);
signal A_OUT : std_logic_vector (15 downto 0);
signal G_OUT_DATA : std_logic_vector (15 downto 0);
signal INS : std_logic_vector (0 to 8);
signal IR_OUT : std_logic_vector (0 to 8);
signal R_DATA_OUT_0 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_1 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_2 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_3 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_4 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_5 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_6 : std_logic_vector (15 downto 0);
signal R_DATA_OUT_7 : std_logic_vector (15 downto 0);
signal R_IN : std_logic_vector (0 to 7);
signal R_OUT : std_logic_vector (0 to 7);
signal T : std_logic_vector (0 to 1);

begin

---- Processes ----

process (DIN,CLK)
                       begin
                         if T = "00" then
                            INS(0) <= DIN(0);
                            INS(1) <= DIN(1);
                            INS(2) <= DIN(2);
                            INS(3) <= DIN(3);
                            INS(4) <= DIN(4);
                            INS(5) <= DIN(5);
                            INS(6) <= DIN(6);
                            INS(7) <= DIN(7);
                            INS(8) <= DIN(8);
                         end if;
                       end process;                      

----  Component instantiations  ----

U_A : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => A_IN,
       Q => A_OUT
  );

U_ADDSUB : ADDSUB
  port map(
       F => ADDSUB_OUT,
       SUB => EN_ADDSUB,
       X => A_OUT,
       Y => U_BUS
  );

U_CONTROL : CONTROL
  port map(
       ADDSUB => EN_ADDSUB,
       A_IN => A_IN,
       CLR => CLR,
       CNT => T,
       DIN_OUT => DIN_OUT,
       DONE => DONE,
       G_IN => G_IN,
       G_OUT => G_OUT,
       INS => INS,
       IR_IN => IR_IN,
       RESETN => RESET,
       RUN => RUN,
       R_IN => R_IN,
       R_OUT => R_OUT
  );

U_COUNTER : COUNTER
  port map(
       CLK => CLK,
       CLR => CLR,
       Q => T
  );

U_G : REGISTER_16
  port map(
       CLK => CLK,
       D => ADDSUB_OUT,
       EN => G_IN,
       Q => G_OUT_DATA
  );

U_IR : REGISTER_9
  port map(
       CLK => CLK,
       D => INS,
       EN => IR_IN,
       Q => IR_OUT
  );

U_MUX : MUX10TO1
  port map(
       D => DIN_OUT,
       DIN => DIN,
       G => G_OUT_DATA,
       GOUT => G_OUT,
       I0 => R_DATA_OUT_0,
       I1 => R_DATA_OUT_1,
       I2 => R_DATA_OUT_2,
       I3 => R_DATA_OUT_3,
       I4 => R_DATA_OUT_4,
       I5 => R_DATA_OUT_5,
       I6 => R_DATA_OUT_6,
       I7 => R_DATA_OUT_7,
       O => U_BUS,
       RN => R_OUT
  );

U_R0 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(0),
       Q => R_DATA_OUT_0
  );

U_R1 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(1),
       Q => R_DATA_OUT_1
  );

U_R2 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(2),
       Q => R_DATA_OUT_2
  );

U_R3 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(3),
       Q => R_DATA_OUT_3
  );

U_R4 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(4),
       Q => R_DATA_OUT_4
  );

U_R5 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(5),
       Q => R_DATA_OUT_5
  );

U_R6 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(6),
       Q => R_DATA_OUT_6
  );

U_R7 : REGISTER_16
  port map(
       CLK => CLK,
       D => U_BUS,
       EN => R_IN(7),
       Q => R_DATA_OUT_7
  );


end BEHV;
