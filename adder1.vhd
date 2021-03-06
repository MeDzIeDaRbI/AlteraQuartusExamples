---------------------------------------------
-- PROJECT       : 1 BIT ADDER
-- ARBI MED ZIED : medzied.arbi@supcom.tn
-- WIEM HEDHILI  : wiem.hedhili@supcom.tn
-- SYSTEL B      : 08/02/2016
-- SUPCOM
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------
entity adder1 is
	port ( A, B,Cin: in std_logic;
			 SUM,COUt : out std_logic);
	end adder1;
---------------------------------------------
architecture structural of adder1 is

	--import half adder
	component half_add is
		port ( A,B: in std_logic;
				 Sum,Cou: out std_logic);
	end component ;
	
	-- internal signals
	signal S1,C1,COU1 :std_logic;
	--
	begin
		G1: half_add PORT MAP (A=>A,b =>B,Sum=>S1,Cou=>C1);
		G2: half_add PORT MAP (A=>Cin,B=>S1,Sum=>SUM,Cou=>COU1);
		COUt<= COU1 or C1;
end structural;