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
	 ASYNC   : in  STD_LOGIC;
    --------------------------------------------
    SW      : in  STD_LOGIC_VECTOR (7 downto 0);
    BTN     : in  STD_LOGIC_VECTOR (3 downto 0);
    LED     : out STD_LOGIC_VECTOR (7 downto 0);
    CAT     : out STD_LOGIC_VECTOR (7 downto 0);
    AN      : out STD_LOGIC_VECTOR (3 downto 0);
	 MSB_MCLK : out STD_LOGIC; --R19
	 MSB_ASYNC: out STD_LOGIC  --R25
  );
end TOP;

architecture Behavioral of TOP is
signal MCLK: std_logic;
signal MRST: std_logic;
signal DcmLocked: std_logic;
signal Da,Db,Dc,Dd: std_logic;
signal Qa,Qb,Qc,Qd: std_logic;
signal count: UNSIGNED(7 downto 0);
signal MCLK_count, ASYNC_count: UNSIGNED(7 downto 0):=(others=>'0');
signal Sd1,Sd2,sq1,sq2: std_logic;
signal sel: std_logic;
   
begin
   CAT  <= not SW;
   AN   <= btn;
   MRST <= not(DcmLocked);
   
   ------------------------------------------
   --    M     D     CLKFX (MHz)  TCLK (ns)
   --    2     1     100          10
   ------------------------------------------
--    DCM instance
   DCM_inst: entity miDCM
	generic map(M=>13, D=>2)
	Port map(
	CLKIN_IN=>CLK,
	RST_IN=>BTN(0),
	CLKFX_OUT=> MCLK,
	CLKIN_IBUFG_OUT=>open,
	CLK0_OUT=>open,
	LOCKED_OUT=>DcmLocked);
   

   ------------------------------------------
   -- Flip-Flop under Test

process
begin 
wait until rising_edge(MCLK);
	if (MRST='1') 
		then Qa<='0';
	else	Qa<=Da;
	end if;
end process;


Db<=Qa;
process
begin 
wait until rising_edge(MCLK);
	if (MRST='1') 
		then Qb<='0';
	else	Qb<=Db;
	end if;
end process;


Dc<=Qa;
process
begin 
wait until (MCLK'EVENT and MCLK='0');
	if (MRST='1') 
		then Qc<='0';
	else	Qc<=Dc;
	end if;
end process;


Dd<=Qb xor Qc;
process
begin 
wait until (MCLK'EVENT and MCLK='0');
	if (MRST='1') 
		then Qd<='0';
	else	Qd<=Dd;
	end if;
end process;


   ------------------------------------------
   -- Metastability detector
process(MRST,Qd)
begin 
if MRST='1' then 
	count<= (others=>'0');
elsif (rising_edge(Qd)) then
	count<= count+1;
end if;
end process;

LED<=std_logic_vector(count);


--Conadores auxiliares
process
begin 
wait until rising_edge(MCLK);
mclk_count<=mclk_count+1;
end process;

process
begin 
wait until rising_edge(ASYNC);
async_count<=async_count+1;
end process;
MSB_MCLK<=mclk_count(7);
MSB_ASYNC<=async_count(7);
   ------------------------------------------
   -- Metastability States Counter



   ------------------------------------------
   -- synchronyzer
 sd1<=ASYNC;
process
begin 
wait until rising_edge(MCLK);
	if (MRST='1') 
		then sq1<='0';
	else	sq1<=sd1;
	end if;
end process;

sd2<=sq1;
process
begin 
wait until rising_edge(MCLK);
	if (MRST='1') 
		then sq2<='0';
	else	sq2<=sd2;
	end if;
end process;
   
sel<=SW(0);	
Da<= ASYNC when sel='0' else sq2;

end Behavioral;

