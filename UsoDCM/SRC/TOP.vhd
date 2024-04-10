----------------------------------------------------------------------------------
-- Company: UMA
-- Engineer: Jesus Ayala Laguna
-- 
-- Create Date:    09:14:34 02/21/2024 
-- Design Name: TOP
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
	 generic ( N: NATURAL:=25;
				  MAX: NATURAL:=5e6);
    Port ( CLK: in STD_LOGIC;
			  SW : in  STD_LOGIC_VECTOR (7 downto 0);
           BTN : in  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0);
           CAT : out  STD_LOGIC_VECTOR (7 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end TOP;

architecture Behavioral of TOP is
signal Q,Q_tick: UNSIGNED(N-1 downto 0):=(others=>'0'); 
signal Tick: STD_LOGIC;
signal MCLK: STD_LOGIC;
signal DcmLocked: STD_LOGIC;
signal MRST:STD_LOGIC;
signal DDi: STD_LOGIC_VECTOR(15 downto 0);
signal DPi: STD_LOGIC_VECTOR(3 downto 0);
signal BTN_tick:std_logic;
signal ce1,ce2:std_logic;
begin
MRST<=not(DcmLocked);

DCM_inst: entity miDCM
generic map(M=>2, D=>2)
Port map(
	CLKIN_IN=>CLK,
	RST_IN=>BTN(0),
	CLKFX_OUT=> open,
	CLKIN_IBUFG_OUT=>open,
	CLK0_OUT=>MCLK,
	LOCKED_OUT=>DcmLocked);
	
Disp_inst: entity DISPLAY(BlackBox)
  Port map (
    C   => MCLK,    -- CLK=50MHz
    DD  => DDi,    -- i(15:0) DD(15:12)=D3 ... DD(3:0)=D0
    DP  => DPi,    -- i(3:0)  points DP3 izda DP0 dcha		
    AN  => AN ,    -- o(3:0)  AN3 izda AN0 dcha
    CAT => CAT     -- CAT(7)=DP, CAT(6)=CG, CAT(0)=CA
  );
	
BCD0_inst: entity BCD(Behavioral)
  Port map ( CE => tick,
             RST => MRST,
             CLK => MCLK,
             Q =>DDi(3 downto 0),
             ceo => ce1,
             tc => open);
BCD1_inst: entity BCD(Behavioral)
  Port map ( CE => ce1,
             RST => MRST,
             CLK => MCLK,
             Q =>DDi(7 downto 4),
             ceo => ce2,
             tc => open);				 
BCD2_inst: entity BCD(Behavioral)
  Port map ( CE => ce2,
             RST => MRST,
             CLK => MCLK,
             Q =>DDi(11 downto 8),
             ceo => open,
             tc => open);					 
				 
DEB_inst: entity DEBEDGE(BlackBox)

  port map(
    clk   => MCLK, 
    rst   => MRST, 
    sw    => BTN(0),
    deb   => open,
    posedge => btn_tick
  );

--Q<=(others=>'0') when (MRST='1') else Q+1 when rising_edge(tick);

process
	begin
	wait until rising_edge(MCLK);
	if(Q_tick=MAX) then Q_tick<= (others=>'0');
		else Q_tick<= Q_tick+1;
	end if; 
end process;
Tick<='1' when Q_tick=MAX else '0';

 
LED <= "0000000"&Q(N-1);



end Behavioral;

