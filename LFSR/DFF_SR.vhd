library ieee;
use ieee.std_logic_1164.all;

entity DFF_SR is
port (
        D, clk, set, reset : in std_logic;
        Q : out std_logic
	   );
end DFF_SR;
architecture one of DFF_SR is
--
begin
   process (clk) is
   begin
         if (reset='1') then   
            q <= '0';
         elsif (set='1') then
            q <= '1';
         else
				if rising_edge(clk) then  
					q <= d;
				end if;
         end if;
   end process;
	
end one;
