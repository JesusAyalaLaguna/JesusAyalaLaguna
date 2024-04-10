---------------------------------------------------------------------
-- Apellidos :Ayala Laguna
-- Nombre    :Jesus
-- D.N.I.    :79378137P
-- Puesto    :4
---------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity reg_file is
  generic(B: NATURAL:=15;
  W: NATURAL:= 8); 
  port(
    clk     : in  std_logic;
    rst     : in  std_logic;			-- active high synchronous reset
    wr_en   : in  std_logic;
    w_addr  : in  std_logic_vector(B-1 downto 0);
    w_data  : in  std_logic_vector(W-1 downto 0);
    r_addr  : in  std_logic_vector(B-1 downto 0);
    r_data  : out std_logic_vector(W-1 downto 0)
  );  
end reg_file;

-- banco de registros basado en FF
architecture BRAM of reg_file is
  type reg_file_type is array (2**B-1 downto 0) of 
  std_logic_vector (W-1 downto 0);
  signal array_reg: reg_file_type;
begin
  process
  begin
	wait until rising_edge(clk);
    --if(rst='1') then array_reg<= (others=>(others=>'0'));
    if wr_en='1' then array_reg(to_integer(unsigned(w_addr))) <= w_data;
    end if;
	 r_data<= array_reg(to_integer(unsigned(r_addr)));
  end process;
    
end BRAM;
