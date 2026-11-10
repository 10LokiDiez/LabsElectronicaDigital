transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/LATCHRS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/GOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/GNOT.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/GNOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/GAND.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/LATCHD_PC.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/FLIPFLOPD_POS_PC.v}

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/FLIPFLOPDPRE {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/FLIPFLOPDPRE/TB_FLIPFLOPDPRE.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TB_FLIPFLOPDPRE

add wave *
view structure
view signals
run 100 us
