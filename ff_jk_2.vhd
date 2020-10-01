library ieee;
use ieee.std_logic_1164.all;
 
entity ff_jk_2 is
port(j,k,clock: in std_logic;
       q, qb: out std_logic);
end ff_jk_2;

architecture comportamento of ff_jk_2 is
begin

	process(clock)
	variable aux: std_logic;
	begin
	if(clock='1' and clock'event) then
			if(j='0' and k='0')then
				aux:=aux;
			elsif(j='1' and k='1')then
				aux:= not aux;
			elsif(j='0' and k='1')then
				aux:='0';
			else
				aux:='1';
			end if;
	end if;
	
q<=aux;
q <=not aux;

end process;
end comportamento;