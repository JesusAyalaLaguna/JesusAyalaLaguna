---------------------------------------------------------------------
-- Apellidos :Ayala Laguna
-- Nombre    :Jesus
-- D.N.I.    :79378137P
-- Puesto    :4
---------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity LIFO is
  generic(B: NATURAL:=2;
  W: NATURAL:= 8); 
  port(
    clk     : in  std_logic;
    rst     : in  std_logic;			-- active high synchronous reset
    push    : in  std_logic;
    pop     : in  std_logic;
    w_data  : in  std_logic_vector(W-1 downto 0);
    E       : out std_logic;
    F       : out std_logic;
    words   : out std_logic_vector(B downto 0);
    r_data  : out std_logic_vector(W-1 downto 0)
  );
  
end LIFO;


architecture FWFT of LIFO is
  type reg_file_type is array (2**B-1 downto 0) of 
  std_logic_vector (W-1 downto 0);
  signal array_reg: reg_file_type;
  signal wr_en: std_logic;
  signal rd_en: std_logic;
  signal wr_ptr: unsigned(B-1 downto 0);
  signal rd_ptr: unsigned(B-1 downto 0);
  signal words_signal: unsigned(B downto 0);
  signal empty: std_logic;
  signal full: std_logic;
  
begin
  --MODELO RAM
  process
  begin
	wait until rising_edge(clk);
    --if(rst='1') then array_reg<= (others=>(others=>'0'));
    if wr_en='1' then array_reg(to_integer(wr_ptr)) <= w_data;
    end if;
  end process;
    r_data<= array_reg(to_integer(rd_ptr));
    
    --MODELO PUNTERO ESCRITURA
    process 
      begin
        wait until rising_edge(clk);
        if (rst='1') then 
          wr_ptr<=(others=>'0');
          rd_ptr<=(others=>'1');
        elsif wr_en='1' then 
          wr_ptr<=wr_ptr+1;
          rd_ptr<=rd_ptr+1;
        elsif rd_en='1' then 
          rd_ptr<=rd_ptr-1;
          wr_ptr<=wr_ptr-1;
        end if;
  end process;
  

  process 
      begin
        wait until rising_edge(clk);
        if(rst='1') then 
        words_signal<=(others=>'0');
        else 
          if (wr_en='1') then words_signal<=words_signal+1;
          elsif(rd_en='1') then words_signal<=words_signal-1;
          end if;  
        end if;
   end process;
    wr_en<=(push and not full) ;
    rd_en<=(pop and not empty) ;
    full<='1' when words_signal=(2**B) else '0';
    empty<='1' when words_signal=0 else '0';
    
    -- LOGICA DE ESTADO
  F<=full;
  E<=empty;
  words<=std_logic_vector(words_signal);
end FWFT;
