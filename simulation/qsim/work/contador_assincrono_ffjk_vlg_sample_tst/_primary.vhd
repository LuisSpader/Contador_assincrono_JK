library verilog;
use verilog.vl_types.all;
entity contador_assincrono_ffjk_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_assincrono_ffjk_vlg_sample_tst;
