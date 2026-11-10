transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/LATCHRS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/LATCHD.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/GOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/GNOT.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/GNOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/GAND.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/FLIPFLOPD_POS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/MUX.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/regcor.v}

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/PIPO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/PIPO/TB_regcor.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TB_regcor

add wave *
view structure
view signals
run 100 ns
