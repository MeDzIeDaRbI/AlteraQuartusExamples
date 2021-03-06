library ieee;
use ieee.std_logic_1164.all;

entity DFF_raz is
port (
        D,CLK,RAZ:in std_logic;
	     Q:out std_logic
		);
end DFF_raz;

architecture one of DFF_raz is
begin
   process (clk) is
   begin
      if rising_edge(clk) then  
         if (raz='0') then   
            q <= '0';
			elsif(raz='1') then
			   q <= d;
		   end if ;
		end if;
	end process;
end one;