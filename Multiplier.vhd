---------------------------------------------
-- PROJECT       : N BITS MULTIPLIER
-- ARBI MED ZIED : medzied.arbi@supcom.tn
-- WIEM HEDHILI  : wiem.hedhili@supcom.tn
-- SYSTEL B      : 08/02/2016
-- SUPCOM
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---------------------------------------------
entity Multiplier is
   port
   (
      A, B: in std_logic_vector(3 downto 0);
      S: out std_logic_vector(7 downto 0)
   );
end entity Multiplier;
---------------------------------------------
architecture arch of Multiplier is

begin

   S <= std_logic_vector(unsigned(A) * unsigned(B));

end architecture arch;