transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/KR/GUC/Semester 5/DSD/Team39_Batch1/project/seven_segment.vhd}
vcom -93 -work work {C:/KR/GUC/Semester 5/DSD/Team39_Batch1/project/motor_driver.vhd}
vcom -93 -work work {C:/KR/GUC/Semester 5/DSD/Team39_Batch1/project/motor_driver_pkg.vhd}
vcom -93 -work work {C:/KR/GUC/Semester 5/DSD/Team39_Batch1/project/Smart_Parking.vhd}

vcom -93 -work work {C:/KR/GUC/Semester 5/DSD/Team39_Batch1/project/simulation/modelsim/Smart_Parking.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Smart_Parking_tb

add wave *
view structure
view signals
run -all
