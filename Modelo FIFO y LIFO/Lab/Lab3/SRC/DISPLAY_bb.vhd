-------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:30:52 24/12/2012 
-- Design Name: 
-- Module Name:    DISPLAY - BlackBox
-- Project Name: 
-- Target Devices: netlist for Spartan3e
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- SIGNALS DECLARATION --------------------------------------------------------
-------------------------------------------------------------------------------
--  signal DDi: STD_LOGIC_VECTOR(15 downto 0);
--  signal DPi: STD_LOGIC_VECTOR(3 downto 0);



-------------------------------------------------------------------------------
-- INSTANCE TEMPLATE ----------------------------------------------------------
-------------------------------------------------------------------------------

--Disp_inst: entity DISPLAY(BlackBox)
--  Port map (
--    C   => CLK,    -- CLK=50MHz
--    DD  => DDi,    -- i(15:0) DD(15:12)=D3 ... DD(3:0)=D0
--    DP  => DPi,    -- i(3:0)  points DP3 izda DP0 dcha		
--    AN  => AN ,    -- o(3:0)  AN3 izda AN0 dcha
--    CAT => CAT     -- CAT(7)=DP, CAT(6)=CG, CAT(0)=CA
--  );






-------------------------------------------------------------------------------
-- MODEL ----------------------------------------------------------------------
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DISPLAY is
  Generic (
    N : NATURAL := 16
  );
  Port (
    C   : in   STD_LOGIC;                      -- CLK=50MHz
    DD  : in   STD_LOGIC_VECTOR (15 downto 0);
    DP  : in   STD_LOGIC_VECTOR ( 3 downto 0);
    AN  : out  STD_LOGIC_VECTOR ( 3 downto 0);
    CAT : out  STD_LOGIC_VECTOR ( 7 downto 0)  -- CAT(7)=DP,CAT(6)=CG,CAT(0)=CA
  );
end DISPLAY;































-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- NO MODIFICAR ---------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

architecture BlackBox of DISPLAY is
  signal Mmux_CAT_7_3_62 : STD_LOGIC; 
  signal Mmux_CAT_7_4_63 : STD_LOGIC; 
  signal Mmux_HEX_3_64 : STD_LOGIC; 
  signal Mmux_HEX_31_65 : STD_LOGIC; 
  signal Mmux_HEX_32_66 : STD_LOGIC; 
  signal Mmux_HEX_33_67 : STD_LOGIC; 
  signal Mmux_HEX_4_68 : STD_LOGIC; 
  signal Mmux_HEX_41_69 : STD_LOGIC; 
  signal Mmux_HEX_42_70 : STD_LOGIC; 
  signal Mmux_HEX_43_71 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal HEX : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mcount_Q_REG_cy : STD_LOGIC_VECTOR ( N-1 downto 0 ); 
  signal Mcount_Q_REG_lut : STD_LOGIC_VECTOR (N-1 downto 0 ); 
  signal Q_REG : STD_LOGIC_VECTOR ( N-1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( N-1 downto 0 ); 

begin
  
--  T <= Q_REG(N-1);
  --------------------------------------------------------------
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  --------------------------------------------------------------
  Mmux_CAT_7_2_f5 : MUXF5
    port map (
      I0 => Mmux_CAT_7_4_63,
      I1 => Mmux_CAT_7_3_62,
      S => Q_REG(N-1),
      O => CAT(7)
    );
  Mmux_CAT_7_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DP(0),
      I2 => DP(1),
      O => Mmux_CAT_7_4_63
    );
  Mmux_CAT_7_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DP(2),
      I2 => DP(3),
      O => Mmux_CAT_7_3_62
    );
  Mmux_HEX_2_f5_2 : MUXF5
    port map (
      I0 => Mmux_HEX_43_71,
      I1 => Mmux_HEX_33_67,
      S => Q_REG(N-1),
      O => HEX(3)
    );
  Mmux_HEX_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(3),
      I2 => DD(7),
      O => Mmux_HEX_43_71
    );
  Mmux_HEX_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(11),
      I2 => DD(15),
      O => Mmux_HEX_33_67
    );
  Mmux_HEX_2_f5_1 : MUXF5
    port map (
      I0 => Mmux_HEX_42_70,
      I1 => Mmux_HEX_32_66,
      S => Q_REG(N-1),
      O => HEX(2)
    );
  Mmux_HEX_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(2),
      I2 => DD(6),
      O => Mmux_HEX_42_70
    );
  Mmux_HEX_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(10),
      I2 => DD(14),
      O => Mmux_HEX_32_66
    );
  Mmux_HEX_2_f5_0 : MUXF5
    port map (
      I0 => Mmux_HEX_41_69,
      I1 => Mmux_HEX_31_65,
      S => Q_REG(N-1),
      O => HEX(1)
    );
  Mmux_HEX_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(1),
      I2 => DD(5),
      O => Mmux_HEX_41_69
    );
  Mmux_HEX_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(9),
      I2 => DD(13),
      O => Mmux_HEX_31_65
    );
  Mmux_HEX_2_f5 : MUXF5
    port map (
      I0 => Mmux_HEX_4_68,
      I1 => Mmux_HEX_3_64,
      S => Q_REG(N-1),
      O => HEX(0)
    );
  Mmux_HEX_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(0),
      I2 => DD(4),
      O => Mmux_HEX_4_68
    );
  Mmux_HEX_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => DD(8),
      I2 => DD(12),
      O => Mmux_HEX_3_64
    );

  --------------------------------------------------------------

  Mdecod_AN31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => Q_REG(N-1),
      O  => AN(3)
    );
  Mdecod_AN21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Q_REG(N-1),
      I1 => Q_REG(N-2),
      O  => AN(2)
    );
  Mdecod_AN11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => Q_REG(N-1),
      O  => AN(1)
    );
  Mdecod_AN01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Q_REG(N-2),
      I1 => Q_REG(N-1),
      O  => AN(0)
    );

  --------------------------------------------------------------

  Mrom_LED61 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => HEX(1),
      I1 => HEX(2),
      I2 => HEX(3),
      I3 => HEX(0),
      O  => CAT(6)
    );
  Mrom_LED51 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => HEX(1),
      I1 => HEX(3),
      I2 => HEX(0),
      I3 => HEX(2),
      O  => CAT(5)
    );
  Mrom_LED41 : LUT4
    generic map(
      INIT => X"445C"
    )
    port map (
      I0 => HEX(3),
      I1 => HEX(0),
      I2 => HEX(2),
      I3 => HEX(1),
      O  => CAT(4)
    );
  Mrom_LED31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => HEX(1),
      I1 => HEX(3),
      I2 => HEX(0),
      I3 => HEX(2),
      O  => CAT(3)
    );
  Mrom_LED21 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => HEX(1),
      I1 => HEX(3),
      I2 => HEX(2),
      I3 => HEX(0),
      O  => CAT(2)
    );
  Mrom_LED111 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => HEX(0),
      I1 => HEX(2),
      I2 => HEX(1),
      I3 => HEX(3),
      O  => CAT(1)
    );
  Mrom_LED11 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => HEX(0),
      I1 => HEX(1),
      I2 => HEX(2),
      I3 => HEX(3),
      O  => CAT(0)
    );

  --------------------------------------------------------------

  qr_gen: for i in 0 to N-1 generate
    qr_reg : FD
--    generic map(
--      INIT => '0'
--    )
    port map (
      C => c,
      D => Result(i),
      Q => Q_REG(i)
    );
    Mcount_qr_xor_Q : XORCY
    port map (
      CI => Mcount_Q_REG_cy(i),
      LI => Mcount_Q_REG_lut(i),
      O  => Result(i)
    );
	  Mcount_qr_cy_rt_PASS : LUT1
      generic map(
        INIT => X"2"
      )
      port map (
        I0 => Q_REG(i),
        O  => Mcount_Q_REG_lut(i)
      );
    LOWER_BITS: if i < N-1 generate  
	  count_qr_cy_Q : MUXCY
      port map (
        CI => Mcount_Q_REG_cy(i),
        DI => N0,
        S  => Mcount_Q_REG_lut(i),
        O  => Mcount_Q_REG_cy(i+1)
      );
    end generate LOWER_BITS; 
  end generate qr_gen;
  Mcount_Q_REG_cy(0) <= N1;

end BlackBox;






-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------