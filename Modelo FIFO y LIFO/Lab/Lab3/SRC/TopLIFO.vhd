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
	
    Port ( CLK: in STD_LOGIC;
			  SW : in  STD_LOGIC_VECTOR (7 downto 0);
           BTN : in  STD_LOGIC_VECTOR (3 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0);
           CAT : out  STD_LOGIC_VECTOR (7 downto 0);
           AN : out  STD_LOGIC_VECTOR (3 downto 0));
end TOP;

architecture Behavioral of TOP is
signal push_tick: std_logic;
signal btn1_tick: std_logic;
signal btn2_tick: std_logic;
signal btn3_tick: std_logic;
signal pop_tick: std_logic;
signal DPi: std_logic_vector(3 downto 0);
signal DDi:std_logic_vector(15 downto 0);
signal words_signal:std_logic_vector(4 downto 0);
signal empty_tick:std_logic;
signal full_tick:std_logic;
begin

push_tick<=btn3_tick or btn2_tick;
pop_tick<=btn1_tick or btn2_tick;
DPi(3 downto 0)<=not(empty_tick) & not(full_tick) & "11";
DDi(15 downto 8)<="000" & words_signal;
	
Disp_inst: entity DISPLAY(BlackBox)
  Port map (
    C   => CLK,    -- CLK=50MHz
    DD  => DDi,    -- i(15:0) DD(15:12)=D3 ... DD(3:0)=D0
    DP  => DPi,    -- i(3:0)  points DP3 izda DP0 dcha		
    AN  => AN ,    -- o(3:0)  AN3 izda AN0 dcha
    CAT => CAT     -- CAT(7)=DP, CAT(6)=CG, CAT(0)=CA
  );
	
LIFO_inst: entity LIFO(FWFT)
generic map(B=>4, W=>8)
  Port map(
    clk     => clk,
    rst     =>btn(0),		-- active high synchronous reset
    push    =>push_tick,
    pop     =>pop_tick,
    w_data  =>SW,
    E       =>empty_tick,
    F       =>full_tick,
    words   =>words_signal,
    r_data  =>DDi(7 downto 0)
  );
  				 
				 
DEB_inst1: entity DEBEDGE(BlackBox)

  port map(
    clk   => CLK, 
    rst   => BTN(0), 
    sw    => btn(1),
    deb   => open,
    posedge => btn1_tick
  );
  
  DEB_inst2: entity DEBEDGE(BlackBox)

  port map(
    clk   => CLK, 
    rst   => BTN(0), 
    sw    => btn(2),
    deb   => open,
    posedge => btn2_tick
  );
  
  DEB_inst3: entity DEBEDGE(BlackBox)

  port map(
    clk   => CLK, 
    rst   => BTN(0), 
    sw    => btn(3),
    deb   => open,
    posedge => btn3_tick
  );


LED<=SW;


end Behavioral;

