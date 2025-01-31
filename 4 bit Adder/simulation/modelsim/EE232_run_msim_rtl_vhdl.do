transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/91626/Desktop/IIT Goa/3rd sem/EE232/NOT_1.vhd}

vcom -93 -work work {C:/Users/91626/Desktop/IIT Goa/3rd sem/EE232/OR_2_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  OR_2_TB

add wave *
view structure
view signals
run -all
