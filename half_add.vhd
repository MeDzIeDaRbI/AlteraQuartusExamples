---------------------------------------------
-- PROJECT       : HALF ADDER
-- ARBI MED ZIED : medzied.arbi@supcom.tn
-- WIEM HEDHILI  : wiem.hedhili@supcom.tn
-- SYSTEL B      : 08/02/2016
-- SUPCOM
---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------
entity half_add is

	port ( A, B    : in std_logic;
		    SUM,COU : out std_logic);
			 
end half_add;
---------------------------------------------
architecture structural of half_add is
	
	begin
		SUM<=A XOR B;
		COU<=A AND B;
		
end structural;