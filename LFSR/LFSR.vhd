library ieee;
use ieee.std_logic_1164.all;

entity LFSR is
	port(
			clk, START : in std_logic;
			S : out std_logic_vector(7 downto 0));
	end LFSR;
	
architecture one1 of LFSR is

	signal A : std_logic_vector(8 downto 0);
	signal set, reset : std_logic_vector(8 downto 1);
	signal D :std_logic;
	component DFF_SR is
		port (
        D, clk, set, reset : in std_logic;
        Q : out std_logic
	   );
	end component;
	begin
	process (start) is
	begin
	if (start ='0') then
	   set <= "10000000";
		reset<= "01111111";
	else 
		set <= "00000000";
		reset<= "00000000";
	end if ;
	 end process;
	 A(0)<=A(3)xor A(8);
	 GE:for i in 1 to 8 Generate 
		 G2: DFF_SR PORT MAP (A(i-1),clk,set(i),reset(i),A(i));
		 --D  <= A(i);
	    end generate;
	 S <= A(8 downto 1) ;
end one1;