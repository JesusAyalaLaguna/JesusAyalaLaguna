-------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    28/12/2022
-- Design Name: 
-- Module Name:    DCD - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Apellidos : Ayala Laguna
-- Nombre    : Jesus
-- DNI       : 79378137P
-- Puesto    : --
-- Placa     : --
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- INSTANCE TEMPLATE
-------------------------------------------------------------------------------

--DCD_inst: entity DCD
--  Port map (
--    C     => MCLK,
--    R     => MRST,
--    Mode  => StMono ,  
--    En    => DCD_en
--  );

-------------------------------------------------------------------------------
-- MODEL ----------------------------------------------------------------------
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCD is
  generic (
    T3: NATURAL := 1;  -- n
    T2: NATURAL := 16;
    T1: NATURAL := 256;
    T0: NATURAL := 512
  );
  Port ( 
    C    : in   STD_LOGIC;                      -- clokc input
    R    : in   STD_LOGIC;                      -- synchr reset active high
    Mode : in   STD_LOGIC_VECTOR (1 downto 0);  -- 00:stereo, others: mono
    En   : out  STD_LOGIC_VECTOR (3 downto 0)
  );
end DCD;

architecture Behavioral of DCD is  
signal C0, C1, C2, C3: NATURAL ;
signal Tick0, Tick1, Tick2, Tick3: STD_LOGIC;
signal MCLK,DATA,LRCK,procesamiento: STD_LOGIC:='0';
  begin
process(C) 
begin 
if (c'event and c='1') then
	if(R='1') then
	C0<=0; C1<=0; C2<=0; C3<=0;
	else
		if C3 = T3-1 then C3 <= 0;
		else C3 <= C3 + 1; end if;
		if C2 = T2-1 then C2 <= 0;
		else C2 <= C2 + 1; end if;
		if C1 = T1-1 then C1 <= 0;
		else C1 <= C1 + 1; end if;
		if C0 = T0-1 then C0 <= 0;
		else C0 <= C0 + 1; end if;
	end if;
	if(Tick3='1') then 
	MCLK<= not(MCLK);
	end if;
	if(Tick2='1') then 
	DATA<= not(DATA);
	end if;
	if(Tick1='1') then 
	LRCK<= not(LRCK);
	end if;
	
end if;
end process;
Tick3 <= '1' when C3=T3-1 else '0';
Tick2 <= '1' when C2=T2-1 else '0';
Tick1 <= '1' when C1=T1-1 else '0';Tick0 <= '1' when C0=T0-1 else '0';
En(3) <= Tick3;
En(2) <= Tick2;
En(1) <= Tick1;
En(0) <= Tick1 when mode="00" else Tick0;
end Behavioral;

