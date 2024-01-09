v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 630 -740 630 -720 {
lab=VDD}
N 630 -660 630 -640 {
lab=GND}
N -1110 -570 -1110 -540 {
lab=VDD}
N -1110 -380 -1110 -180 {
lab=GND}
N -1050 -500 -980 -500 {
lab=#net1}
N -820 -490 10 -490 {
lab=#net2}
N 10 -490 10 -390 {
lab=#net2}
N 10 -390 140 -390 {
lab=#net2}
N -820 -470 -10 -470 {
lab=#net3}
N -10 -470 -10 -370 {
lab=#net3}
N -10 -370 140 -370 {
lab=#net3}
N 70 -570 140 -570 {
lab=VCTRL}
N 140 -570 140 -410 {
lab=VCTRL}
N 80 -570 80 -550 {
lab=VCTRL}
N 80 -490 80 -460 {
lab=GND}
N 440 -390 470 -390 {
lab=OUT}
N 440 -430 440 -410 {
lab=VDD}
N 440 -370 440 -350 {
lab=GND}
C {devices/code_shown.sym} 30 -1120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ff
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_ff
.lib $::180MCU_MODELS/sm141064.ngspice moscap_ff
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_ff
.include $::180MCU_STDCELLS/gf180mcu_fd_sc_mcu7t5v0.spice
"}
C {devices/code_shown.sym} 600 -870 0 0 {name=param only_toplevel=false value="
.param vdd=3.6
.param Vin=0.5"}
C {devices/code_shown.sym} 30 -900 0 0 {name=NGSPICE only_toplevel=true
value="
*.option temp=-40
*.option tnom=-40
.include ~/TOP_pex_extracted.spice
.control
save all
tran  0.05n 220u
write vco_bench.raw
.endc
"}
C {devices/vdd.sym} 630 -740 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 630 -640 0 0 {name=l20 lab=GND}
C {devices/vsource.sym} 630 -690 0 0 {name=Vdd value=vdd}
C {devices/ipin.sym} 70 -570 0 0 {name=p2 lab=VCTRL}
C {devices/vdd.sym} 440 -430 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 440 -350 0 0 {name=l2 lab=GND}
C {cs-vth-ref.sym} -1190 -360 0 0 {name=X7}
C {csbias.sym} -900 -500 0 0 {name=x8}
C {devices/vdd.sym} -1110 -570 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -1110 -180 0 0 {name=l4 lab=GND}
C {vco_pex.sym} 290 -390 0 0 {name=x9 prefix=TOP}
C {devices/vsource.sym} 80 -520 0 0 {name=Vin value=Vin
}
C {devices/gnd.sym} 80 -460 0 0 {name=l5 lab=GND}
C {devices/iopin.sym} 470 -390 0 0 {name=p3 lab=OUT}
