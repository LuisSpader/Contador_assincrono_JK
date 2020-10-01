library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity contador_assincrono_jk is
generic(n: natural:= 4);
	port(J, K: in std_logic;
			clk: in std_logic;
			S,SN: out std_logic
			);
end contador_assincrono_jk;

architecture comportamento of contador_assincrono_jk is
	signal s_aux: std_logic_vector(n-1 downto 0);
	signal j_aux, k_aux: std_logic_vector(n-1 downto 0);
	signal clk_aux: std_logic_vector(n-1 downto 0);
	signal qn_aux: std_logic_vector(n-1 downto 0);
	
	component ff_jk_2
	port(j,k,clock: in std_logic;
       q, qb: out std_logic);
	end component;
	
begin	

j_aux(0)<= J;
k_aux(0)<= K;
clk_aux(0)<= clk;

	GENERIC_ADDER_FUNCTION: for i in 0 to (n-1) generate
		Adder_i: ff_jk_2 port map(
					j_aux(i), k_aux(i), clk_aux(i), clk_aux(i+1), qn_aux(i)  --A | B | Cin | S | COUT
					);
	end generate GENERIC_ADDER_FUNCTION;


end architecture;