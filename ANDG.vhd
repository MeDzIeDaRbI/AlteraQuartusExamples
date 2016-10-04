library ieee;
use ieee.std_logic_1164.all;
-----------------------------------------------
entity ANDG is
port ( A, B: in std_logic;
		 C: out std_logic);
end ANDG;
architecture structural1 of ANDG is
begin
	C<=A and B;
end structural1;