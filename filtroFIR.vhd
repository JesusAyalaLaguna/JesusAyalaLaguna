library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
library IEEE_PROPOSED;
use IEEE_PROPOSED.FIXED_PKG.all;
entity FIR7 is port( CLK, RST, EN : in STD_LOGIC;
	X: in STD_LOGIC_VECTOR(15 downto 0); 
	Y: out STD_LOGIC_VECTOR(15 downto 0));
end FIR7;
architecture BehavSfixed of FIR7 is
	signal sample : sfixed(0 downto -15);
	type DType is array(0 to 7) of sfixed(0 downto -15);
	signal D: DType;
	constant W0: sfixed(0 downto -15):=to_sfixed(0.08503894508, sample);
	constant W1: sfixed(0 downto -15):=to_sfixed(0.1002882272, sample);
	constant W2: sfixed(0 downto -15):=to_sfixed(0.1243481711, sample);
	constant W3: sfixed(0 downto -15):=to_sfixed(0.1444613785, sample);
	constant W4: sfixed(0 downto -15):=to_sfixed(0.1444613785, sample);
	constant W5: sfixed(0 downto -15):=to_sfixed(0.1243481711, sample);
	constant W6: sfixed(0 downto -15):=to_sfixed(0.1002882272, sample);
	constant W7: sfixed(0 downto -15):=to_sfixed(0.08503894508, sample);
	signal result : sfixed(8 downto -30);
begin
sample <= to_sfixed(X, sample);
process begin
	wait until rising_edge(CLK);
	if RST='1' then
		D <= (others => to_sfixed(0,sample));
		result <= (others => '0');
	elsif EN='1' then
	-- multiply/accumulate (MAC) operation
	result <= D(0)*W0 + D(1)*W1 + D(2)*W2 + D(3)*W3 +
		  D(4)*W4 + D(5)*W5 + D(6)*W6 + D(7)*W7;
	D <= sample & D(0 to 6); -- update register values by shifting
	end if;
end process;
Y <= to_slv(resize(result,sample));-- TO STD LOGIC VECTOR
end BehavSfixed;