transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/esl22/git/ESL_lab/PWM/FDIV.vhd}
vcom -93 -work work {/home/esl22/git/ESL_lab/PWM/PWM.vhd}
vcom -93 -work work {/home/esl22/git/ESL_lab/PWM/restbench.vhd}
vcom -93 -work work {/home/esl22/git/ESL_lab/PWM/DutyCycleCounter.vhd}
vcom -93 -work work {/home/esl22/git/ESL_lab/PWM/toplevel.vhd}

vcom -93 -work work {/home/esl22/git/ESL_lab/PWM/restbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
