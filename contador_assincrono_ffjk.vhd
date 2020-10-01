library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;

entity contador_assincrono_ffjk is
generic(n: natural:= 2);
	port(J, K: in std_logic;
			clk: in std_logic;
			contagem: out std_logic_vector(n-1 downto 0)
			--S,SN: out std_logic
			);
end contador_assincrono_ffjk;

architecture comportamento of contador_assincrono_ffjk is
	--signal s_aux: std_logic_vector(n-1 downto 0);
	signal j_aux, k_aux: std_logic_vector(n-1 downto 0);
	signal clk_aux: std_logic_vector(n downto 0);
	signal q_aux: std_logic_vector(n-1 downto 0);
	
	component flip_flop_jk
	port(J, K: in std_logic;
			clk: in std_logic;
			Q, Q_not: out std_logic);
	end component;
	
begin	

j_aux(0)<= J;
k_aux(0)<= K;
clk_aux(0)<= clk;

	GENERIC_contador: for i in 0 to (n-1) generate
		ff_aux: flip_flop_jk port map(
					--j_aux(i), k_aux(i), clk_aux(i), clk_aux(i+1), qn_aux(i)  --J | K | clk | Q | Q_not
					--j_aux(i) , k_aux(i), clk_aux(i), q_aux(i), clk_aux(i+1)  --J | K | clk | Q | Q_not
					j_aux(i) , k_aux(i), clk_aux(i), clk_aux(i+1), q_aux(i)  --J | K | clk | Q | Q_not
					);
	end generate GENERIC_contador;
	
contagem<= clk_aux(n downto 1);
--S<= clk_aux(n);
--SN<= q_aux(n-1);

end architecture;