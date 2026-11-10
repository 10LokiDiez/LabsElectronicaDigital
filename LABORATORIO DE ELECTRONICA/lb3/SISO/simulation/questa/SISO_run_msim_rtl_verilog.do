transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/FLIPFLOPD_POS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/LATCHRS.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/LATCHD.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/GOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/GNOT.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/GNOR.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/GAND.v}
vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/SISO.v}

vlog  -work work +incdir+C:/Users/sidim/Documents/LABORATORIO\ DE\ ELECTRONICA/lb3/SISO {C:/Users/sidim/Documents/LABORATORIO DE ELECTRONICA/lb3/SISO/TB_SISO.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  TB_SISO

add wave *
view structure
view signals
run 120 ns
