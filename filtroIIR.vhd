library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library IEEE_PROPOSED;
use IEEE_PROPOSED.FIXED_PKG.all;


entity MiSistema is
  port(
    CLK : in  STD_LOGIC;
    RST : in  STD_LOGIC;
    EN  : in  STD_LOGIC;
    X   : in  STD_LOGIC_VECTOR (15 downto 0);
    Y   : out STD_LOGIC_VECTOR (15 downto 0)
  );
end MiSistema;

architecture IIR3 of MiSistema is
	signal sample : sfixed(0 downto -15);
	type DType is array(0 to 3) of sfixed(6 downto -30);
	signal W: DType := (others => (others=> '0'));
	constant a: DType:= (to_sfixed(1, 6, -30), to_sfixed(-1.5984510007156600419619, 6, -30),to_sfixed(1.0294623243839249315, 6, -30),to_sfixed(-0.232202665255198226, 6, -30));
	constant b: DType:=(to_sfixed(0.024851082301633325, 6, -30), to_sfixed(0.074553246904899977, 6, -30),to_sfixed(0.0745532469048999779, 6, -30),to_sfixed(0.024851082301633325988, 6, -30));
	signal result : sfixed(0 downto -15) := to_sfixed(0, 0, -15);
begin
sample <= to_sfixed(X, sample);
process 
variable tmp: sfixed(6 downto -30);
variable WAux: DType;
begin
	wait until rising_edge(CLK);
	if RST='1' then
		W <= (others => to_sfixed(0,6, -30));
		result <= to_sfixed(0, 0, -15);
	elsif EN='1' then
        
	WAux := W;

	-- multiply/accumulate (MAC) operation
	tmp := resize(sample*b(0) + W(0), tmp);
	for i in 1 to Waux'length-1 loop
		Waux(i-1) := resize(sample * b(i) - tmp * a(i) + Waux(i), Waux(i-1));
	end loop;
	W <= WAux;
        result <= resize(tmp, result);
	end if;

end process;
Y <= to_slv(result);-- TO STD LOGIC VECTOR
end IIR3;