----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:59:56 04/23/2013 
-- Design Name: 
-- Module Name:    i2sCtrl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments:             INCLUYE CDC (Clock Default Driver)
--
----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
-- Instance Template
----------------------------------------------------------------------------------
--Inst_i2sCtrl: entity i2sCtrl(BlackBox)
--  port map (
--    MCLK      => MCLK, -- 2 x i2sMCLK
--    RST       => MRST, -- synchronous active high
--    Mode      =>   ,   -- in(1:0); 00 stereo, 01 monoR, 10 monoL, 11 monoLR
--    En1       => DCD_en(1),
--    En2       => DCD_en(2),
--    En3       => DCD_en(3),
--    SampleIn  =>   ,   -- in(15:0)
--    i2sMCLK   =>   ,   -- out; DIRECT to audio CODEC
--    i2sLRCK   =>   ,   -- out; DIRECT to audio CODEC 
--    i2sSCLK   =>   ,   -- out; DIRECT to audio CODEC always low
--    i2sSDIN   =>       -- out; DIRECT to audio CODEC
--  );



----------------------------------------------------------------------------------
-- MODELO  -----------------------------------------------------------------------
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity i2sCtrl is
  Port (
    MCLK      : in   STD_LOGIC;    -- 2 x i2sMCLK
    RST       : in   STD_LOGIC;    -- synchronous active high
    Mode      : in   STD_LOGIC_VECTOR ( 1 downto 0); --00 stereo, 01 monoR, 10 monoL, 11 monoLR
    En1       : in   STD_LOGIC;
    En2       : in   STD_LOGIC;
    En3       : in   STD_LOGIC;
    SampleIn  : in   STD_LOGIC_VECTOR (15 downto 0);
    i2sMCLK   : out  STD_LOGIC;    -- 256 x i2sLRCK
    i2sLRCK   : out  STD_LOGIC;    -- =FS; 0-left; 1-right
    i2sSCLK   : out  STD_LOGIC;    -- always LOW
    i2sSDIN   : out  STD_LOGIC     -- 32 x i2sLRCK serial sample data MSB first
  );
end i2sCtrl;


----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
-- NO MODIFICAR 
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

architecture BlackBox of i2sCtrl is
  signal Mcount_SCnt_cy_10_rt_6 : STD_LOGIC; 
  signal Mcount_SCnt_cy_11_rt_8 : STD_LOGIC; 
  signal Mcount_SCnt_cy_12_rt_10 : STD_LOGIC; 
  signal Mcount_SCnt_cy_13_rt_12 : STD_LOGIC; 
  signal Mcount_SCnt_cy_14_rt_14 : STD_LOGIC; 
  signal Mcount_SCnt_cy_1_rt_16 : STD_LOGIC; 
  signal Mcount_SCnt_cy_2_rt_18 : STD_LOGIC; 
  signal Mcount_SCnt_cy_3_rt_20 : STD_LOGIC; 
  signal Mcount_SCnt_cy_4_rt_22 : STD_LOGIC; 
  signal Mcount_SCnt_cy_5_rt_24 : STD_LOGIC; 
  signal Mcount_SCnt_cy_6_rt_26 : STD_LOGIC; 
  signal Mcount_SCnt_cy_7_rt_28 : STD_LOGIC; 
  signal Mcount_SCnt_cy_8_rt_30 : STD_LOGIC; 
  signal Mcount_SCnt_cy_9_rt_32 : STD_LOGIC; 
  signal Mcount_SCnt_xor_15_rt_34 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal SCnt_not0001 : STD_LOGIC; 
  signal i2sEnab_92 : STD_LOGIC; 
  signal i2sEnab_cmp_eq0000 : STD_LOGIC; 
  signal i2sEnab_cmp_eq000019_94 : STD_LOGIC; 
  signal i2sEnab_cmp_eq000041_95 : STD_LOGIC; 
  signal i2sEnab_cmp_eq000053_96 : STD_LOGIC; 
  signal i2sEnab_cmp_eq00008_97 : STD_LOGIC; 
  signal NlwRenamedSig_OI_i2sLRCKi : STD_LOGIC; 
  signal i2sLRCKi_mux0001 : STD_LOGIC; 
  signal i2sLRCKi_not0001 : STD_LOGIC; 
  signal NlwRenamedSig_OI_i2sMCLKi : STD_LOGIC; 
  signal i2sMCLKi_not0001 : STD_LOGIC; 
  signal NlwRenamedSig_OI_i2sSCLK : STD_LOGIC; 
  signal i2sSDINi_104 : STD_LOGIC; 
  signal i2sSDINi_not0001 : STD_LOGIC; 
  signal shReg_not0001 : STD_LOGIC; 
  signal Mcount_SCnt_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_SCnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal SCnt : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal shReg : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal shReg_mux0005 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  i2sSCLK <= NlwRenamedSig_OI_i2sSCLK;
  i2sSDIN <= i2sSDINi_104;
  i2sMCLK <= NlwRenamedSig_OI_i2sMCLKi;
  i2sLRCK <= NlwRenamedSig_OI_i2sLRCKi;
  XST_GND : GND
    port map (
      G => NlwRenamedSig_OI_i2sSCLK
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  shReg_0 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(0),
      R => RST,
      Q => shReg(0)
    );
  shReg_1 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(1),
      R => RST,
      Q => shReg(1)
    );
  shReg_2 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(2),
      R => RST,
      Q => shReg(2)
    );
  shReg_3 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(3),
      R => RST,
      Q => shReg(3)
    );
  shReg_4 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(4),
      R => RST,
      Q => shReg(4)
    );
  shReg_5 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(5),
      R => RST,
      Q => shReg(5)
    );
  shReg_6 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(6),
      R => RST,
      Q => shReg(6)
    );
  shReg_7 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(7),
      R => RST,
      Q => shReg(7)
    );
  shReg_8 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(8),
      R => RST,
      Q => shReg(8)
    );
  shReg_9 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(9),
      R => RST,
      Q => shReg(9)
    );
  shReg_10 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(10),
      R => RST,
      Q => shReg(10)
    );
  shReg_11 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(11),
      R => RST,
      Q => shReg(11)
    );
  shReg_12 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(12),
      R => RST,
      Q => shReg(12)
    );
  shReg_13 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(13),
      R => RST,
      Q => shReg(13)
    );
  shReg_14 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(14),
      R => RST,
      Q => shReg(14)
    );
  shReg_15 : FDRE
    port map (
      C => MCLK,
      CE => shReg_not0001,
      D => shReg_mux0005(15),
      R => RST,
      Q => shReg(15)
    );
  i2sMCLKi : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => En3,
      D => i2sMCLKi_not0001,
      R => RST,
      Q => NlwRenamedSig_OI_i2sMCLKi
    );
  i2sLRCKi : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => i2sLRCKi_not0001,
      D => i2sLRCKi_mux0001,
      R => RST,
      Q => NlwRenamedSig_OI_i2sLRCKi
    );
  i2sEnab : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => i2sEnab_cmp_eq0000,
      D => N1,
      R => RST,
      Q => i2sEnab_92
    );
  i2sSDINi : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => i2sSDINi_not0001,
      D => shReg(15),
      Q => i2sSDINi_104
    );
  SCnt_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(0),
      R => RST,
      Q => SCnt(0)
    );
  SCnt_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(1),
      R => RST,
      Q => SCnt(1)
    );
  SCnt_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(2),
      R => RST,
      Q => SCnt(2)
    );
  SCnt_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(3),
      R => RST,
      Q => SCnt(3)
    );
  SCnt_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(4),
      R => RST,
      Q => SCnt(4)
    );
  SCnt_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(5),
      R => RST,
      Q => SCnt(5)
    );
  SCnt_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(6),
      R => RST,
      Q => SCnt(6)
    );
  SCnt_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(7),
      R => RST,
      Q => SCnt(7)
    );
  SCnt_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(8),
      R => RST,
      Q => SCnt(8)
    );
  SCnt_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(9),
      R => RST,
      Q => SCnt(9)
    );
  SCnt_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(10),
      R => RST,
      Q => SCnt(10)
    );
  SCnt_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(11),
      R => RST,
      Q => SCnt(11)
    );
  SCnt_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(12),
      R => RST,
      Q => SCnt(12)
    );
  SCnt_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(13),
      R => RST,
      Q => SCnt(13)
    );
  SCnt_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(14),
      R => RST,
      Q => SCnt(14)
    );
  SCnt_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => MCLK,
      CE => SCnt_not0001,
      D => Result(15),
      R => RST,
      Q => SCnt(15)
    );
  Mcount_SCnt_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_i2sSCLK,
      DI => N1,
      S => Mcount_SCnt_lut(0),
      O => Mcount_SCnt_cy(0)
    );
  Mcount_SCnt_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_i2sSCLK,
      LI => Mcount_SCnt_lut(0),
      O => Result(0)
    );
  Mcount_SCnt_cy_1_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(0),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_1_rt_16,
      O => Mcount_SCnt_cy(1)
    );
  Mcount_SCnt_xor_1_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(0),
      LI => Mcount_SCnt_cy_1_rt_16,
      O => Result(1)
    );
  Mcount_SCnt_cy_2_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(1),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_2_rt_18,
      O => Mcount_SCnt_cy(2)
    );
  Mcount_SCnt_xor_2_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(1),
      LI => Mcount_SCnt_cy_2_rt_18,
      O => Result(2)
    );
  Mcount_SCnt_cy_3_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(2),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_3_rt_20,
      O => Mcount_SCnt_cy(3)
    );
  Mcount_SCnt_xor_3_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(2),
      LI => Mcount_SCnt_cy_3_rt_20,
      O => Result(3)
    );
  Mcount_SCnt_cy_4_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(3),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_4_rt_22,
      O => Mcount_SCnt_cy(4)
    );
  Mcount_SCnt_xor_4_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(3),
      LI => Mcount_SCnt_cy_4_rt_22,
      O => Result(4)
    );
  Mcount_SCnt_cy_5_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(4),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_5_rt_24,
      O => Mcount_SCnt_cy(5)
    );
  Mcount_SCnt_xor_5_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(4),
      LI => Mcount_SCnt_cy_5_rt_24,
      O => Result(5)
    );
  Mcount_SCnt_cy_6_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(5),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_6_rt_26,
      O => Mcount_SCnt_cy(6)
    );
  Mcount_SCnt_xor_6_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(5),
      LI => Mcount_SCnt_cy_6_rt_26,
      O => Result(6)
    );
  Mcount_SCnt_cy_7_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(6),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_7_rt_28,
      O => Mcount_SCnt_cy(7)
    );
  Mcount_SCnt_xor_7_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(6),
      LI => Mcount_SCnt_cy_7_rt_28,
      O => Result(7)
    );
  Mcount_SCnt_cy_8_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(7),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_8_rt_30,
      O => Mcount_SCnt_cy(8)
    );
  Mcount_SCnt_xor_8_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(7),
      LI => Mcount_SCnt_cy_8_rt_30,
      O => Result(8)
    );
  Mcount_SCnt_cy_9_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(8),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_9_rt_32,
      O => Mcount_SCnt_cy(9)
    );
  Mcount_SCnt_xor_9_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(8),
      LI => Mcount_SCnt_cy_9_rt_32,
      O => Result(9)
    );
  Mcount_SCnt_cy_10_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(9),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_10_rt_6,
      O => Mcount_SCnt_cy(10)
    );
  Mcount_SCnt_xor_10_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(9),
      LI => Mcount_SCnt_cy_10_rt_6,
      O => Result(10)
    );
  Mcount_SCnt_cy_11_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(10),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_11_rt_8,
      O => Mcount_SCnt_cy(11)
    );
  Mcount_SCnt_xor_11_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(10),
      LI => Mcount_SCnt_cy_11_rt_8,
      O => Result(11)
    );
  Mcount_SCnt_cy_12_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(11),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_12_rt_10,
      O => Mcount_SCnt_cy(12)
    );
  Mcount_SCnt_xor_12_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(11),
      LI => Mcount_SCnt_cy_12_rt_10,
      O => Result(12)
    );
  Mcount_SCnt_cy_13_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(12),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_13_rt_12,
      O => Mcount_SCnt_cy(13)
    );
  Mcount_SCnt_xor_13_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(12),
      LI => Mcount_SCnt_cy_13_rt_12,
      O => Result(13)
    );
  Mcount_SCnt_cy_14_Q : MUXCY
    port map (
      CI => Mcount_SCnt_cy(13),
      DI => NlwRenamedSig_OI_i2sSCLK,
      S => Mcount_SCnt_cy_14_rt_14,
      O => Mcount_SCnt_cy(14)
    );
  Mcount_SCnt_xor_14_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(13),
      LI => Mcount_SCnt_cy_14_rt_14,
      O => Result(14)
    );
  Mcount_SCnt_xor_15_Q : XORCY
    port map (
      CI => Mcount_SCnt_cy(14),
      LI => Mcount_SCnt_xor_15_rt_34,
      O => Result(15)
    );
  SCnt_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => i2sEnab_92,
      I1 => En1,
      O => SCnt_not0001
    );
  i2sSDINi_not00011 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => En2,
      I1 => i2sEnab_92,
      I2 => RST,
      O => i2sSDINi_not0001
    );
  i2sEnab_cmp_eq000019 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => SCnt(13),
      I1 => SCnt(15),
      I2 => SCnt(14),
      I3 => SCnt(12),
      O => i2sEnab_cmp_eq000019_94
    );
  i2sEnab_cmp_eq000041 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => SCnt(6),
      I1 => SCnt(7),
      I2 => SCnt(5),
      I3 => SCnt(4),
      O => i2sEnab_cmp_eq000041_95
    );
  i2sEnab_cmp_eq000053 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => SCnt(2),
      I1 => SCnt(3),
      I2 => SCnt(1),
      I3 => SCnt(0),
      O => i2sEnab_cmp_eq000053_96
    );
  i2sEnab_cmp_eq000067 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => i2sEnab_cmp_eq00008_97,
      I1 => i2sEnab_cmp_eq000019_94,
      I2 => i2sEnab_cmp_eq000041_95,
      I3 => i2sEnab_cmp_eq000053_96,
      O => i2sEnab_cmp_eq0000
    );
  shReg_mux0005_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => SampleIn(0),
      I1 => N4,
      O => shReg_mux0005(0)
    );
  shReg_mux0005_9_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N3,
      I1 => shReg(8),
      I2 => SampleIn(9),
      I3 => N2,
      O => shReg_mux0005(9)
    );
  shReg_mux0005_8_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(7),
      I2 => SampleIn(8),
      I3 => N2,
      O => shReg_mux0005(8)
    );
  shReg_mux0005_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(6),
      I2 => SampleIn(7),
      I3 => N2,
      O => shReg_mux0005(7)
    );
  shReg_mux0005_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(5),
      I2 => SampleIn(6),
      I3 => N2,
      O => shReg_mux0005(6)
    );
  shReg_mux0005_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(4),
      I2 => SampleIn(5),
      I3 => N2,
      O => shReg_mux0005(5)
    );
  shReg_mux0005_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(3),
      I2 => SampleIn(4),
      I3 => N2,
      O => shReg_mux0005(4)
    );
  shReg_mux0005_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(2),
      I2 => SampleIn(3),
      I3 => N2,
      O => shReg_mux0005(3)
    );
  shReg_mux0005_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(1),
      I2 => SampleIn(2),
      I3 => N2,
      O => shReg_mux0005(2)
    );
  shReg_mux0005_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(0),
      I2 => SampleIn(1),
      I3 => N2,
      O => shReg_mux0005(1)
    );
  shReg_mux0005_15_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(14),
      I2 => SampleIn(15),
      I3 => N2,
      O => shReg_mux0005(15)
    );
  shReg_mux0005_14_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(13),
      I2 => SampleIn(14),
      I3 => N2,
      O => shReg_mux0005(14)
    );
  shReg_mux0005_13_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(12),
      I2 => SampleIn(13),
      I3 => N2,
      O => shReg_mux0005(13)
    );
  shReg_mux0005_12_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(11),
      I2 => SampleIn(12),
      I3 => N2,
      O => shReg_mux0005(12)
    );
  shReg_mux0005_11_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(10),
      I2 => SampleIn(11),
      I3 => N2,
      O => shReg_mux0005(11)
    );
  shReg_mux0005_10_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N11,
      I1 => shReg(9),
      I2 => SampleIn(10),
      I3 => N2,
      O => shReg_mux0005(10)
    );
  Mcount_SCnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(1),
      O => Mcount_SCnt_cy_1_rt_16
    );
  Mcount_SCnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(2),
      O => Mcount_SCnt_cy_2_rt_18
    );
  Mcount_SCnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(3),
      O => Mcount_SCnt_cy_3_rt_20
    );
  Mcount_SCnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(4),
      O => Mcount_SCnt_cy_4_rt_22
    );
  Mcount_SCnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(5),
      O => Mcount_SCnt_cy_5_rt_24
    );
  Mcount_SCnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(6),
      O => Mcount_SCnt_cy_6_rt_26
    );
  Mcount_SCnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(7),
      O => Mcount_SCnt_cy_7_rt_28
    );
  Mcount_SCnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(8),
      O => Mcount_SCnt_cy_8_rt_30
    );
  Mcount_SCnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(9),
      O => Mcount_SCnt_cy_9_rt_32
    );
  Mcount_SCnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(10),
      O => Mcount_SCnt_cy_10_rt_6
    );
  Mcount_SCnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(11),
      O => Mcount_SCnt_cy_11_rt_8
    );
  Mcount_SCnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(12),
      O => Mcount_SCnt_cy_12_rt_10
    );
  Mcount_SCnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(13),
      O => Mcount_SCnt_cy_13_rt_12
    );
  Mcount_SCnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(14),
      O => Mcount_SCnt_cy_14_rt_14
    );
  Mcount_SCnt_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => SCnt(15),
      O => Mcount_SCnt_xor_15_rt_34
    );
  shReg_not00011 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => En2,
      I1 => En1,
      I2 => i2sEnab_92,
      O => shReg_not0001
    );
  i2sLRCKi_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => En1,
      I1 => i2sEnab_92,
      O => i2sLRCKi_not0001
    );
  Mcount_SCnt_lut_0_INV_0 : INV
    port map (
      I => SCnt(0),
      O => Mcount_SCnt_lut(0)
    );
  i2sMCLKi_not00011_INV_0 : INV
    port map (
      I => NlwRenamedSig_OI_i2sMCLKi,
      O => i2sMCLKi_not0001
    );
  i2sLRCKi_mux00011_INV_0 : INV
    port map (
      I => NlwRenamedSig_OI_i2sLRCKi,
      O => i2sLRCKi_mux0001
    );
  i2sEnab_cmp_eq00008 : LUT4_L
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => SCnt(11),
      I1 => SCnt(10),
      I2 => SCnt(9),
      I3 => SCnt(8),
      LO => i2sEnab_cmp_eq00008_97
    );
  shReg_mux0005_10_21 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => En1,
      I1 => i2sEnab_92,
      LO => N3,
      O => N11
    );
  shReg_mux0005_10_31 : LUT4_D
    generic map(
      INIT => X"00DB"
    )
    port map (
      I0 => Mode(0),
      I1 => Mode(1),
      I2 => NlwRenamedSig_OI_i2sLRCKi,
      I3 => N11,
      LO => N4,
      O => N2
    );

end BlackBox;

