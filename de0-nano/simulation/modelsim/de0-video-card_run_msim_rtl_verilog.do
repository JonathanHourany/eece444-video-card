transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/fox/programming/eece444-video-card/de0-nano {C:/Users/fox/programming/eece444-video-card/de0-nano/Top.v}
vlog -vlog01compat -work work +incdir+C:/Users/fox/programming/eece444-video-card/de0-nano {C:/Users/fox/programming/eece444-video-card/de0-nano/Controller.v}

