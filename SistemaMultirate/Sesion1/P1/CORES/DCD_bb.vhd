----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:57 01/08/2014 
-- Design Name: 
-- Module Name:    DCD - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
-- INSTANCE TEMPLATE
----------------------------------------------------------------------------------

--  DCD_inst: entity DCD(BlackBox)
--  Port map (
--    C     => MCLK,
--    R     => MRST,
--    Mode  => StMono ,  
--    En    => DCD_en
--  );

----------------------------------------------------------------------------------
-- MODEL -------------------------------------------------------------------------
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCD is
  Port (
    C    : in  STD_LOGIC;
    R    : in  STD_LOGIC;
    Mode : in  STD_LOGIC_VECTOR(1 downto 0); -- 00: stereo; others: mono
    En   : out STD_LOGIC_VECTOR (3 downto 0)
  );
end DCD;

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- NO MODIFICAR 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

architecture BlackBox of DCD is
  signal En_0_or00001 : STD_LOGIC; 
  signal Mcount_Cnt_cy_1_rt_17 : STD_LOGIC; 
  signal Mcount_Cnt_cy_2_rt_19 : STD_LOGIC; 
  signal Mcount_Cnt_cy_3_rt_21 : STD_LOGIC; 
  signal Mcount_Cnt_cy_4_rt_23 : STD_LOGIC; 
  signal Mcount_Cnt_cy_5_rt_25 : STD_LOGIC; 
  signal Mcount_Cnt_cy_6_rt_27 : STD_LOGIC; 
  signal Mcount_Cnt_cy_7_rt_29 : STD_LOGIC; 
  signal Mcount_Cnt_xor_8_rt_31 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Cnt : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal NlwRenamedSig_OI_En : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal Mcount_Cnt_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_Cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
begin
  En(3) <= NlwRenamedSig_OI_En(3);
  En(2) <= NlwRenamedSig_OI_En(2);
  En(1) <= NlwRenamedSig_OI_En(1);
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => NlwRenamedSig_OI_En(3)
    );
  Cnt_0 : FDR
    port map (
      C => C,
      D => Result(0),
      R => R,
      Q => Cnt(0)
    );
  Cnt_1 : FDR
    port map (
      C => C,
      D => Result(1),
      R => R,
      Q => Cnt(1)
    );
  Cnt_2 : FDR
    port map (
      C => C,
      D => Result(2),
      R => R,
      Q => Cnt(2)
    );
  Cnt_3 : FDR
    port map (
      C => C,
      D => Result(3),
      R => R,
      Q => Cnt(3)
    );
  Cnt_4 : FDR
    port map (
      C => C,
      D => Result(4),
      R => R,
      Q => Cnt(4)
    );
  Cnt_5 : FDR
    port map (
      C => C,
      D => Result(5),
      R => R,
      Q => Cnt(5)
    );
  Cnt_6 : FDR
    port map (
      C => C,
      D => Result(6),
      R => R,
      Q => Cnt(6)
    );
  Cnt_7 : FDR
    port map (
      C => C,
      D => Result(7),
      R => R,
      Q => Cnt(7)
    );
  Cnt_8 : FDR
    port map (
      C => C,
      D => Result(8),
      R => R,
      Q => Cnt(8)
    );
  Mcount_Cnt_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => NlwRenamedSig_OI_En(3),
      S => Mcount_Cnt_lut(0),
      O => Mcount_Cnt_cy(0)
    );
  Mcount_Cnt_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_Cnt_lut(0),
      O => Result(0)
    );
  Mcount_Cnt_cy_1_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(0),
      DI => N0,
      S => Mcount_Cnt_cy_1_rt_17,
      O => Mcount_Cnt_cy(1)
    );
  Mcount_Cnt_xor_1_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(0),
      LI => Mcount_Cnt_cy_1_rt_17,
      O => Result(1)
    );
  Mcount_Cnt_cy_2_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(1),
      DI => N0,
      S => Mcount_Cnt_cy_2_rt_19,
      O => Mcount_Cnt_cy(2)
    );
  Mcount_Cnt_xor_2_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(1),
      LI => Mcount_Cnt_cy_2_rt_19,
      O => Result(2)
    );
  Mcount_Cnt_cy_3_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(2),
      DI => N0,
      S => Mcount_Cnt_cy_3_rt_21,
      O => Mcount_Cnt_cy(3)
    );
  Mcount_Cnt_xor_3_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(2),
      LI => Mcount_Cnt_cy_3_rt_21,
      O => Result(3)
    );
  Mcount_Cnt_cy_4_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(3),
      DI => N0,
      S => Mcount_Cnt_cy_4_rt_23,
      O => Mcount_Cnt_cy(4)
    );
  Mcount_Cnt_xor_4_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(3),
      LI => Mcount_Cnt_cy_4_rt_23,
      O => Result(4)
    );
  Mcount_Cnt_cy_5_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(4),
      DI => N0,
      S => Mcount_Cnt_cy_5_rt_25,
      O => Mcount_Cnt_cy(5)
    );
  Mcount_Cnt_xor_5_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(4),
      LI => Mcount_Cnt_cy_5_rt_25,
      O => Result(5)
    );
  Mcount_Cnt_cy_6_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(5),
      DI => N0,
      S => Mcount_Cnt_cy_6_rt_27,
      O => Mcount_Cnt_cy(6)
    );
  Mcount_Cnt_xor_6_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(5),
      LI => Mcount_Cnt_cy_6_rt_27,
      O => Result(6)
    );
  Mcount_Cnt_cy_7_Q : MUXCY
    port map (
      CI => Mcount_Cnt_cy(6),
      DI => N0,
      S => Mcount_Cnt_cy_7_rt_29,
      O => Mcount_Cnt_cy(7)
    );
  Mcount_Cnt_xor_7_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(6),
      LI => Mcount_Cnt_cy_7_rt_29,
      O => Result(7)
    );
  Mcount_Cnt_xor_8_Q : XORCY
    port map (
      CI => Mcount_Cnt_cy(7),
      LI => Mcount_Cnt_xor_8_rt_31,
      O => Result(8)
    );
  En_0_or0000111 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Cnt(2),
      I1 => Cnt(3),
      I2 => Cnt(0),
      I3 => Cnt(1),
      O => NlwRenamedSig_OI_En(2)
    );
  En_0_or00002 : LUT4
    generic map(
      INIT => X"02AA"
    )
    port map (
      I0 => NlwRenamedSig_OI_En(1),
      I1 => Mode(1),
      I2 => Mode(0),
      I3 => Cnt(8),
      O => En(0)
    );
  Mcount_Cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(1),
      O => Mcount_Cnt_cy_1_rt_17
    );
  Mcount_Cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(2),
      O => Mcount_Cnt_cy_2_rt_19
    );
  Mcount_Cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(3),
      O => Mcount_Cnt_cy_3_rt_21
    );
  Mcount_Cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(4),
      O => Mcount_Cnt_cy_4_rt_23
    );
  Mcount_Cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(5),
      O => Mcount_Cnt_cy_5_rt_25
    );
  Mcount_Cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(6),
      O => Mcount_Cnt_cy_6_rt_27
    );
  Mcount_Cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(7),
      O => Mcount_Cnt_cy_7_rt_29
    );
  Mcount_Cnt_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Cnt(8),
      O => Mcount_Cnt_xor_8_rt_31
    );
  Mcount_Cnt_lut_0_INV_0 : INV
    port map (
      I => Cnt(0),
      O => Mcount_Cnt_lut(0)
    );
  En_0_or000011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Cnt(7),
      I1 => Cnt(6),
      I2 => Cnt(5),
      I3 => Cnt(4),
      O => En_0_or00001
    );
  En_0_or00001_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => En_0_or00001,
      S => NlwRenamedSig_OI_En(2),
      O => NlwRenamedSig_OI_En(1)
    );

end BlackBox;
