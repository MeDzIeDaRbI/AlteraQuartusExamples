---------------------------------------------
-- PROJECT       : N BITS ADDER
-- ARBI MED ZIED : medzied.arbi@supcom.tn
-- WIEM HEDHILI  : wiem.hedhili@supcom.tn
-- SYSTEL B      : 08/02/2016
-- SUPCOM
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------
entity addN is
	generic(N: INTEGER:=4);
	port( A, B : in STD_LOGIC_VECTOR(N-1 downto 0);
			S : out STD_LOGIC_VECTOR(N downto 0));
end addN;
---------------------------------------------
architecture ADDER of addN is
	component adder1 is
		port ( A, B,Cin: in std_logic;
				 SUM,COUt : out std_logic);
		end component ;
		
	signal C1 :STD_LOGIC_VECTOR(N downto 0);
	begin
	
		C1(0)<='0';
		GE:for i in 0 to N-1 generate
			G1: adder1 PORT MAP (A(i),B(i),C1(i),S(i),COUt=>C1(i+1));
		end generate;
		S(N)<=C1(N);
		
end ADDER;