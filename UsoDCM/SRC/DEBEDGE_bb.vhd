
--------------------------------------------------------------------------------
-- INSTANCE TEMPLATE
--------------------------------------------------------------------------------

--DEB_inst: entity WORK.DEBEDGE()

--  port map(
--    clk   => MCLK, 
--    rst   => MRST, 
--    sw    => BTN(),
--    deb   => open,
--    posedge => btn_tick
--  );

--------------------------------------------------------------------------------




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DEBEDGE is
  generic (N : NATURAL := 19);
  port (
    clk     : in  STD_LOGIC; 
    rst     : in  STD_LOGIC; 
    sw      : in  STD_LOGIC; 
    deb     : out STD_LOGIC;
    posedge : out STD_LOGIC
  );
end DEBEDGE;









--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------




library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

architecture BlackBox of DEBEDGE is

  signal N3 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC;
  signal posedge_FFd_in : STD_LOGIC;
  
  signal EA_FSM_FFd_q : STD_LOGIC_VECTOR(3 downto 1);
  signal EA_FSM_FFd_in : STD_LOGIC_VECTOR(3 downto 1);
  
  signal tick : STD_LOGIC; 
  signal N0   : STD_LOGIC; 
  signal N1   : STD_LOGIC; 
  signal Mcount_Qr_cy  : STD_LOGIC_VECTOR ( N downto 0 ); 
  signal Mcount_Qr_lut : STD_LOGIC_VECTOR ( N-1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( N-1 downto 0 ); 
  signal Qr     : STD_LOGIC_VECTOR ( N-1 downto 0 ); 
begin
--  t <= Qr(N-1);
  
  DEB <= EA_FSM_FFd_q(3);
  
  posedge_FFd : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => posedge_FFd_in,
      R => RST,
      Q => posedge
    );

  posedge_FFd_in1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => EA_FSM_FFd_q(3),
      I1 => EA_FSM_FFd_in(3),
      O  => posedge_FFd_in
    );
  --------------------------------------------------------------
  EA_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => EA_FSM_FFd_in(1),
      R => RST,
      Q => EA_FSM_FFd_q(1)
    );
  EA_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => EA_FSM_FFd_in(2),
      R => RST,
      Q => EA_FSM_FFd_q(2)
    );
  EA_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => EA_FSM_FFd_in(3),
      R => RST,
      Q => EA_FSM_FFd_q(3)
    );
  EA_FSM_FFd_in3 : LUT4
    generic map(
      INIT => X"F0B8"
    )
    port map (
      I0 => SW,
      I1 => EA_FSM_FFd_q(2),
      I2 => EA_FSM_FFd_q(3),
      I3 => N3,
      O => EA_FSM_FFd_in(3)
    );
  EA_FSM_FFd_in2 : LUT4
    generic map(
      INIT => X"6006"
    )
    port map (
      I0 => SW,
      I1 => EA_FSM_FFd_q(3),
      I2 => EA_FSM_FFd_q(2),
      I3 => N8,
      O => EA_FSM_FFd_in(2)
    );
  EA_FSM_FFd3_In : LUT4
    generic map(
      INIT => X"0067"
    )
    port map (
      I0 => tick,
      I1 => EA_FSM_FFd_q(1),
      I2 => EA_FSM_FFd_q(2),
      I3 => N6,
      O  => EA_FSM_FFd_in(1)
    );
  EA_FSM_FFd_in21 : LUT2_D
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => tick,
      I1 => EA_FSM_FFd_q(1),
      LO => N8,
      O  => N3
    );
  EA_FSM_FFd3_In_SW0 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => SW,
      I1 => EA_FSM_FFd_q(3),
      LO => N6
    );
  --------------------------------------------------------------

  XST_GND : GND
    port map (
      G => N0
    );
    
  XST_VCC : VCC
    port map (
      P => N1
    );
    
--  Qr_N : FD
--    generic map(
--      INIT => '0'
--    )
--    port map (
--      C => CLK,
--      D => Mcount_Qr_cy(N),
--      Q => tick
--    );
  tick <= Mcount_Qr_cy(N);
    
  TIMER: for i in 0 to N-1 generate
  
  begin

    Qr_i : FD
      generic map(
        INIT => '0'
      )
      port map (
        C => CLK,
        D => Result(i),
        Q => Qr(i)
      );
    
    Mcount_Qr_cy_i : LUT1 -- route-thru
      generic map(
        INIT => X"2"
      )
      port map (
        I0 => Qr(i),
        O  => Mcount_Qr_lut(i)
      );
      
    Mcount_Qr_xorcy_i : XORCY
      port map (
        CI => Mcount_Qr_cy(i),
        LI => Mcount_Qr_lut(i),
        O  => Result(i)
      );

--    LOWER_BITS: if i < N-1 generate
      Mcount_Qr_muxcy_i : MUXCY
        port map (
          CI => Mcount_Qr_cy(i),  -- S=1
          DI => N0,               -- S=0
          S  => Mcount_Qr_lut(i),
          O  => Mcount_Qr_cy(i+1)
        );
--    end generate LOWER_BITS;
 
  end generate TIMER;
  
  Mcount_Qr_cy(0) <= N1;


end BlackBox;

