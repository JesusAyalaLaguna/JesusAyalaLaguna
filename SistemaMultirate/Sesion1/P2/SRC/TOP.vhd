----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28/11/2022
-- Design Name: 
-- Module Name: TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description:
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
use work.all;

entity TOP is
  Port ( 
    CLK     : in  STD_LOGIC;                      -- 50MHz clock from external osc
    SW      : in  STD_LOGIC_VECTOR ( 7 downto 0);
    BTN     : in  STD_LOGIC_VECTOR ( 3 downto 0); 
    LED     : out STD_LOGIC_VECTOR ( 7 downto 0);
    CAT     : out STD_LOGIC_VECTOR ( 7 downto 0);
    AN      : out STD_LOGIC_VECTOR ( 3 downto 0)
  );
end TOP;

architecture mult_sfixed of TOP is
  signal DPi : STD_LOGIC_VECTOR (3 downto 0);
  signal DDi : STD_LOGIC_VECTOR (15 downto 0);
  signal DISP   : STD_LOGIC_VECTOR (3 downto 0);
  
  signal alu_res :
  signal a_add_b :
  signal a_sub_b :
  signal a_mul_b :
  signal inv_a   :

begin

  Disp_inst: entity DISPLAY(BlackBox)
  Port map (
    C   => CLK,    -- CLK=50MHz
    DD  => DDi,    -- i(15:0)  DD(15:12)=D3 ... DD(3:0)=D0
    DP  => DPi,    -- i(3:0)   DotPoint DP3=izda ... DP0=dcha    
    CAT => CAT,    -- o(7:0)   CAT(7)=DP, CAT(6)=CG, CAT(0)=CA
    AN  => AN      -- o(3:0)   AN3=izda ... AN00dcha
  );

  DPi <=  "0111" when Q(3)='0' else "1000";  -- negativo o positivo

  with DISP select
  DDi <=  x"0000" when "0000",  --   0.000
          x"0125" when "0001",  --   0.125
          x"0250" when "0010",  --   0.250
          x"0375" when "0011",  --   0.375
          x"0500" when "0100",  --   0.500
          x"0625" when "0101",  --   0.625
          x"0750" when "0110",  --   0.750
          x"0875" when "0111",  --   0.850
          x"1000" when "1000",  --  -1.000
          x"0875" when "1001",  --  -0.875
          x"0750" when "1010",  --  -0.750
          x"0625" when "1011",  --  -0.625
          x"0500" when "1100",  --  -0.500
          x"0375" when "1101",  --  -0.375
          x"0250" when "1110",  --  -0.250
          x"0125" when others;  --  -0.125
		  
---------------------------------------------------------
  -- PRIMERO: convertir STD_LOGIC_VECTOR a SFIXED
  
  
  -- SEGUNDO: procesamiento con SFIXED
  
  
  with SEL select
  alu_res <= a_add_b when "00",    -- a + b
             a_sub_b when "01",    -- a - b
			 a_mul_b when "10"     -- a * b
			 inv_a   when others;  -- a * (-1) 
  
  
  -- TERCERO: redimensionado de los resultados
  
  
  -- CUARTO: convertir SFIXED a STD_LOGIC_VECTOR
  
  
  ------------------------------------------------------

  LED  <= ;    -- resultado binario sin redimensionar (STD_LOGIC_VECTOR)
  DISP <= ;    -- resultado binario redimensionado (STD_LOGIC_VECTOR)
  
---------------------------------------------------------
end mult_sfixed;

