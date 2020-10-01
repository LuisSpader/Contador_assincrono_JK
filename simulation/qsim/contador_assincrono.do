onerror {quit -f}
vlib work
vlog -work work contador_assincrono.vo
vlog -work work contador_assincrono.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.contador_assincrono_ffjk_vlg_vec_tst
vcd file -direction contador_assincrono.msim.vcd
vcd add -internal contador_assincrono_ffjk_vlg_vec_tst/*
vcd add -internal contador_assincrono_ffjk_vlg_vec_tst/i1/*
add wave /*
run -all
