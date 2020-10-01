library verilog;
use verilog.vl_types.all;
entity contador_assincrono_ffjk_vlg_check_tst is
    port(
        contagem        : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end contador_assincrono_ffjk_vlg_check_tst;
