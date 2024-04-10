----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28 noviembre de 2022
-- Design Name: 
-- Module Name: TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:     ------------------ User Controls -----------------------------
--
--      SW(7:6) - Play Mode         : 00: stereo; 01: monoR; 10: monoL; 11: monoLR 
--      SW(5)   - Play Tone Mode    :  0: Variable Freq; 1: Fixed Freq
--      SW(4)   - Sel setting Mode  :  0: Amplitude;     1: Frequency
--      SW(3)   -
--      SW(2)   -
--      SW(1)   - Sel Sample source :  0: RAM;          1: embedded Tone Generator
--      SW(0)   - Output sel        :  0: Not filtered; 1: Filtered 
--
--      BTN(3)  - Increment Tone Freq/Ampl
--      BTN(2)  - Decrement Tone Freq/Ampl
--
--      BTN(0)  - Master Reset
--
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
-- Apellidos : 
-- Nombre    :
-- DNI       : 
-- Puesto    :
-- Placa     :
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use WORK.all;

entity TOP is
  Port ( 
    CLK     : in  STD_LOGIC;  -- 50MHz clock from external osc
    SW      : in  STD_LOGIC_VECTOR ( 7 downto 0);
    BTN     : in  STD_LOGIC_VECTOR ( 3 downto 0);
    
    i2sMCLK : out STD_LOGIC;  --JB1   256 x i2sLRCK
    i2sLRCK : out STD_LOGIC;  --JB2   44100Hz/25600Hz/48000Hz
    i2sSCLK : out STD_LOGIC;  --JB3   always LOW
    i2sSDIN : out STD_LOGIC;  --JB4   @ 32 x i2sLRCK
    
    FlashRPn: out   STD_LOGIC; 
    RamWait : in    STD_LOGIC; 
    RamAdr  : out   STD_LOGIC_VECTOR (23 downto 1); 
    RamOEn  : out   STD_LOGIC; 
    RamWRn  : out   STD_LOGIC; 
    RamADVn : out   STD_LOGIC; 
    RamClk  : out   STD_LOGIC; 
    RamCre  : out   STD_LOGIC; 
    RamCSn  : out   STD_LOGIC; 
    RamLBn  : out   STD_LOGIC; 
    RamUBn  : out   STD_LOGIC; 
    RamDB   : inout STD_LOGIC_VECTOR (15 downto 0);
    
    LED     : out STD_LOGIC_VECTOR ( 7 downto 0);
    CAT     : out STD_LOGIC_VECTOR ( 7 downto 0);
    AN      : out STD_LOGIC_VECTOR ( 3 downto 0)
  );
end TOP;

architecture Behavioral of TOP is

  signal SYSCLK, MRST, RSTin, CLK50: STD_LOGIC;

  signal DPi: STD_LOGIC_VECTOR (3 downto 0);
  signal DDi: STD_LOGIC_VECTOR (15 downto 0);
  
  signal Sample, Sample_ram, Sample_tone, Filtered, SampleOut: STD_LOGIC_VECTOR (15 downto 0);
  signal tone_info: STD_LOGIC_VECTOR (19 downto 0);
  signal RamAdri  : STD_LOGIC_VECTOR (22 downto 0);
  
  signal DCD_en : STD_LOGIC_VECTOR (3 downto 0);
  signal StMono : STD_LOGIC_VECTOR (1 downto 0) :="00"; -- 00 stereo; 01 monoR; 10 monoL; 11 monoLR
  signal Mode, FixVar, OutSel, SrcSel, Incr, Decr : STD_LOGIC;

begin
  -------------------------------------------------------------------------------
  -- User controls
  -------------------------------------------------------------------------------
  StMono <= SW(7 downto 6);
  FixVar <= SW(5);    -- Play Tone Mode : 0: Variable Freq; 1: Fixed Freq
  Mode   <= SW(4);    -- setting Mode   : 0: Frequency;     1: Amplitude
  SrcSel <= SW(1);    -- Sel Sample src : 0: RAM;           1: Embedded Tone Gen
  OutSel <= SW(0);    -- Output sel     : 0: Not Filtered;  1: Filtered

  Incr   <= BTN(3);   -- Increment Tone Freq/Ampl
  Decr   <= BTN(2);   -- Decrement Tone Freq/Ampl
  RSTin  <= BTN(0);

  Disp_inst: entity DISPLAY(BlackBox)
  Port map (
    C   => CLK50,  -- CLK=50MHz
    DD  => DDi,    -- i(15:0)  DD(15:12)=D3 ... DD(3:0)=D0
    DP  => DPi,    -- i(3:0)   DotPoint DP3=izda ... DP0=dcha		
    CAT => CAT,    -- o(7:0)   CAT(7)=DP, CAT(6)=CG, CAT(0)=CA
    AN  => AN      -- o(3:0)   AN3=izda ... AN00dcha
  );

  DPi <= "1111" when SrcSel='0' else
         "1011" when Mode='1' else "0111";
  DDi <=  tone_info (19 downto 4) when SrcSel='1' else
          RamAdri(22 downto 7);
  
  LED <= sample(7 downto 0);

  -------------------------------------------------------------------------------
  -- Clocking
  -------------------------------------------------------------------------------
                                  
  Inst_miDCM: entity miDCM        
  generic map ( M => 2, D => 1 )  
  PORT MAP(                       
    CLKIN_IN      => clk,         
    RST_IN        => RSTin,    
    CLKFX_OUT     => SYSCLK,  -- CLKIN_IN * M /D
    CLK0_OUT      => CLK50, -- only for DISPLAY
    RST_OUT       => MRST
  );

  DCD_inst: entity DCD(Behavioral) 
  Port map (
    C     => SYSCLK,
    R     => MRST,
    Mode  => StMono,  
    En    => DCD_en
  );
  -------------------------------------------------------------------------------
  -- Sample sources
  -------------------------------------------------------------------------------
  Inst_RamCtrl: entity RamCtrl
  Port Map(
    CLK         => SYSCLK,
    RST         => MRST,
    SampleDirOffset => STD_LOGIC_VECTOR( TO_UNSIGNED(      0, 23) ) , --in(23:1)
    SampleLength    => STD_LOGIC_VECTOR( TO_UNSIGNED( 926100, 23) ) , --in(23:1)
    ReadFinish  => open,
    GetTick     => DCD_en(0),  -- from DCD
    DataOut     => Sample_ram,
    RamDB       => RamDB,
    RamAdr      => RamAdri,
    RamClk      => RamClk,
    RamOEn      => RamOEn,
    RamCSn      => RamCSn,
    RamWRn      => RamWRn,
    RamLBn      => RamLBn,
    RamUBn      => RamUBn,
    RamCre      => RamCre,
    RamADVn     => RamADVn,
    FlashRPn    => FlashRPn
  );
  RamAdr <= RamAdri;
  
  SEN_GEN: entity SENO(Structure_44100)  -- SELECT CORRECT SAMPLIG FREQ ARCHITECTURE
  port map (
    CLK   => SYSCLK,
    RST   => MRST,
    EN    => DCD_en(0),
    FIX   => FixVar,
    UP    => Incr,
    DOWN  => Decr,
    MODE  => Mode,
    FOUT  => tone_info,
    WAVE  => Sample_tone
  );
  
  Sample <= Sample_ram  when SrcSel='0' else 
            Sample_tone;

  -------------------------------------------------------------------------------
  -- Processing
  -------------------------------------------------------------------------------

  Filtered <= Sample;

  -------------------------------------------------------------------------------
  -- Audio Output
  -------------------------------------------------------------------------------
  SampleOut <=  Sample    when OutSel='0' else 
                Filtered;

  Inst_i2sCtrl: entity i2sCtrl
  port map (
    MCLK     => SYSCLK,         -- 2 x i2sMCLK
    RST      => MRST,
    Mode     => StMono ,      -- in(1:0), 00 stereo, 01 monoR, 10 monoL, 11 monoLR

    En1      => DCD_en(1),    -- from DCD: toggling i2sLRCK
    En2      => DCD_en(2),    -- from DCD: clocking out i2sDATA
    En3      => DCD_en(3),    -- from DCD: toggling i2sMCLK

    SampleIn => SampleOut,    -- in(15:0)
    i2sMCLK  => i2sMCLK  ,    -- out DIRECT to audio CODEC 256 x i2sLRCK
    i2sLRCK  => i2sLRCK  ,    -- out DIRECT to audio CODEC
    i2sSCLK  => i2sSCLK  ,    -- out DIRECT to audio CODEC
    i2sSDIN  => i2sSDIN       -- out always low
  );

end Behavioral;
