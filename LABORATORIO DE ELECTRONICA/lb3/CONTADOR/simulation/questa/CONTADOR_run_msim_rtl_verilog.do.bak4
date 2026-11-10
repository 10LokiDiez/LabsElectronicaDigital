transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/LATCHRS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/LATCHD.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/GOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/GNOT.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/GNOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/GAND.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/FLIPFLOPD_POS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/GXOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/CONTADOR.v}

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/CONTADOR {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/CONTADOR/TB_CONTADOR.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TB_CONTADOR

add wave *
view structure
view signals
run 100 ns
