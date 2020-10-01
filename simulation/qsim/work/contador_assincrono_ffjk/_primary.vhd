library verilog;
use verilog.vl_types.all;
entity contador_assincrono_ffjk is
    port(
        J               : in     vl_logic;
        K               : in     vl_logic;
        clk             : in     vl_logic;
        contagem        : out    vl_logic_vector(1 downto 0)
    );
end contador_assincrono_ffjk;
