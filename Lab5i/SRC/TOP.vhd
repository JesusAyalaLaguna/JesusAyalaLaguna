----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    4 de abril de 2024 
-- Design Name: 
-- Module Name:    TOP - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TOP is
  Port ( 
    CLK     : in  STD_LOGIC;
    --------------------------------------------
    --------------------------------------------
    SW      : in  STD_LOGIC_VECTOR (7 downto 0);
    BTN     : in  STD_LOGIC_VECTOR (3 downto 0);
    LED     : out STD_LOGIC_VECTOR (7 downto 0);
    CAT     : out STD_LOGIC_VECTOR (7 downto 0);
    AN      : out STD_LOGIC_VECTOR (3 downto 0)
  );
end TOP;

architecture Behavioral of TOP is
signal MCLK: std_logic;
signal MRST: std_logic;
signal DcmLocked: std_logic;
signal en_tick: std_logic;
signal mem_tick: std_logic;
   
begin
MRST<=not(DcmLocked);
   ------------------------------------------
   --    M     D     CLKFX (MHz)  TCLK (ns)
   --    2     1     100          10
   ------------------------------------------
--    DCM instance
   DCM_inst: entity miDCM
	generic map(M=>2, D=>5)
	Port map(
	CLKIN_IN=>CLK,
	RST_IN=>BTN(0),
	CLKFX_OUT=> MCLK,
	CLKIN_IBUFG_OUT=>open,
	CLK0_OUT=>open,
	LOCKED_OUT=>DcmLocked);
	
	MemCtrlBuf_inst: entity MemCtrlBuf
  port map(
    clk    => MCLK,
    rst    => MRST,
    en     => en_tick,
    mem    => mem_tick,
    ras_n  => LED(0),
    cas_n  => LED(1),
    estado => LED (7 downto 6)
  );
  
  Debedge_inst: entity DEBEDGE
  generic map (N => 19)
  port map(
    clk     => MCLK,
    rst     => MRST,
    sw      => btn(3),
    deb     => open,
    posedge => en_tick
  );
  
  Debedge_inst2: entity DEBEDGE
  generic map (N => 19)
  port map(
    clk     => MCLK,
    rst     => MRST,
    sw      => btn(1),
    deb     => mem_tick,
    posedge => open
  );
  
cat<=sw;
an<=btn;
led(5 downto 2) <= "0000";
  
end Behavioral;