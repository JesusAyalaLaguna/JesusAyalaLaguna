-------------------------------------------------------
-- Asignatura : Diseño de Sistemas en Chip (SoC)
-- Titulacion : 4º GITT
--
-- Descripcion: LAB numero 5 intro
-- Fecha      : 11 de abril de 2024
--
-- Apellidos  :  Ayala Laguna
-- Nombre     :  Jesus
-- DNI        :  79378137P
-------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
entity MemCtrlBuf is
  port (
    clk    : in  STD_LOGIC;
    rst    : in  STD_LOGIC;
	 en     : in  STD_LOGIC;
    mem    : in  STD_LOGIC;
    ras_n  : out STD_LOGIC;
    cas_n  : out STD_LOGIC;
	 estado : out std_logic_vector(1 downto 0)
  );
end MemCtrlBuf;

architecture CleverEncoding of MemCtrlBuf is
  constant idle: std_logic_vector(2 downto 0) :="110";
  constant r: std_logic_vector(2 downto 0) :="010";
  constant c: std_logic_vector(2 downto 0) :="000";
  constant p: std_logic_vector(2 downto 0) :="111";
  signal state_reg, state_next:std_logic_vector(2 downto 0);
begin
--state register
  process
  begin
    wait until rising_edge(CLK);
    if rst='1' then
    state_reg<=idle;
    elsif en='1' then
    state_reg<=state_next;
    end if;
  end process;

--next state logic
  process(state_reg,mem)
  begin
  state_next<=state_reg;
  case state_reg is 
    when idle =>
      if mem='1' then state_next<=r;
      end if;
    when r => state_next<=c;
    when c => state_next<=p;
    when p => 
      if mem='1' then state_next<=r;
      else state_next<=idle;
      end if;
    when others=> state_next<=idle;
  end case;
  end process;

-- moore output logic
  ras_n<=state_reg(2);
  cas_n<=state_reg(1);
end CleverEncoding; 

architecture OutputLookAhead of MemCtrlBuf is
 type mc_state_type is (idle,r,c,p);
  signal state_reg, state_next:mc_state_type;

begin
--state register
  process
  begin
    wait until rising_edge(CLK);
    if rst='1' then
    state_reg<=idle;
    elsif en='1' then
    state_reg<=state_next;
    end if;
  end process;

--next state logic
  process(state_reg,mem)
  begin
  state_next<=state_reg;
  case state_reg is 
    when idle =>
      if mem='1' then state_next<=r;
      end if;
    when r => state_next<=c;
    when c => state_next<=p;
    when p => 
      if mem='1' then state_next<=r;
      else state_next<=idle;
      end if;
  end case;
  end process;



-- moore output logic
  process
    begin
      wait until rising_edge(clk);
      if rst='1' then
        ras_n<='1';
        cas_n<='1';
     elsif en='1' then 
       case state_next is 
          when idle =>
            ras_n<='1';
            cas_n<='1';
			 
          when r => 
            ras_n<='0';
            cas_n<='1';
			 
          when c => 
            ras_n<='0';
            cas_n<='0';
			 
          when p => 
            ras_n<='1';
            cas_n<='1';
       end case;
     end if;
   end process;
	
--Salidas estado
with state_reg select estado <=
  "00" when idle,
  "01" when r,
  "10" when c,
  "11" when p;

end OutputLookAhead; 