transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/projects/plis/RS-p21 {C:/Users/Administrator/Desktop/projects/plis/RS-p21/lab1.v}

vlog -vlog01compat -work work +incdir+C:/Users/Administrator/Desktop/projects/plis/RS-p21 {C:/Users/Administrator/Desktop/projects/plis/RS-p21/testbranch.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L flex10ke_ver -L rtl_work -L work -voptargs="+acc" testbranch

add wave *
view structure
view signals
run -all
