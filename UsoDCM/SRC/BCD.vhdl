----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:31:15 03/06/2024 
-- Design Name: 
-- Module Name:    BCD - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD is
    Port ( CE : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           ceo : out  STD_LOGIC;
           tc : out  STD_LOGIC);
end BCD;

architecture Behavioral of BCD is
	signal Qn,Qr: unsigned(3 downto 0);
	signal Tc_tick: std_logic;
begin
	process
	begin
		wait until rising_Edge(CLK);
		if(RST='1' or Qn=9) then Qr<=(others=>'0');
		elsif(CE='1') then Qr<=Qr+1;
		end if;
		
	end process;
	Qn<=Qr;
	Tc_tick<='1' when Qn=9 else '0';
	Tc<=tc_tick;
	ceo<=Tc_tick and ce;
	Q<=std_logic_vector(Qn);
end Behavioral;

