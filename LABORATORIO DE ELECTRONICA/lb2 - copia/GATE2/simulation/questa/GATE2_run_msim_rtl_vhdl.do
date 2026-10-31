transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb2 - copia/GATE2/GATE2.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb2 - copia/GATE2/GNOT.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb2 - copia/GATE2/GAND.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb2 - copia/GATE2/GOR.vhd}

vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb2 - copia/GATE2/tb_GATE2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_GATE2

add wave *
view structure
view signals
run 1600 ns
