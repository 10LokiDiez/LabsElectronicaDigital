transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/GAND.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/GOR.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/GNOT.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/GATE3.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/GXNOR.vhd}
vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/GNOR.vhd}

vcom -93 -work work {C:/Users/sidim/Downloads/LABORATORIO DE ELECTRONICA/lb1/GATE3/tb_GATE3.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_GATE3

add wave *
view structure
view signals
run 800 ns
