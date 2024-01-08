v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PLL benchmark 3.3V edition} 1180 0 2 0 0.4 0.4 {}
T {LF : experimental parameter only
VCO : under construction} 300 -380 0 0 0.3 0.3 {}
N 50 -310 50 -260 {
lab=data}
N 550 -260 570 -260 {
lab=#net1}
N 730 -260 750 -260 {
lab=ctrl}
N 570 -240 570 -220 {
lab=GND}
N 1070 -100 1070 -80 {
lab=GND}
N 410 -260 430 -260 {
lab=#net2}
N 230 -260 250 -260 {
lab=UP}
N 230 -240 250 -240 {
lab=DOWN}
N 50 -240 70 -240 {
lab=clk}
N 50 -260 70 -260 {
lab=data}
N 910 -260 930 -260 {
lab=#net3}
N 1010 -210 1010 -150 {
lab=6f}
N 50 -310 1090 -310 {
lab=data}
N 1090 -310 1090 -260 {
lab=data}
N 230 -200 350 -200 {
lab=#net4}
N 230 -180 350 -180 {
lab=#net5}
N 230 -160 350 -160 {
lab=#net6}
N 230 -140 350 -140 {
lab=#net7}
N -50 -170 70 -170 {
lab=#net8}
N 570 -210 650 -210 {
lab=GND}
N 570 -220 570 -210 {
lab=GND}
N 750 -260 750 -200 {
lab=ctrl}
N 680 -200 750 -200 {
lab=ctrl}
N 680 -200 680 -180 {
lab=ctrl}
N 910 -260 910 -220 {
lab=#net3}
N 910 -220 980 -220 {
lab=#net3}
N 230 -160 230 -150 {
lab=#net6}
N 230 -150 680 -150 {
lab=#net6}
N 680 -160 680 -150 {
lab=#net6}
N 230 -140 230 -130 {
lab=#net7}
N 230 -130 680 -130 {
lab=#net7}
N 680 -140 680 -130 {
lab=#net7}
N 980 -160 990 -160 {
lab=#net3}
N 990 -220 990 -160 {
lab=#net3}
N 980 -220 990 -220 {
lab=#net3}
C {devices/code_shown.sym} 40 -550 0 0 {name=NGSPICE only_toplevel=true
value="
vpwr VDD 0 pulse(0 3.6 4n 1p 1p 200u 200u) dc 0
vext clk 0 pulse(0 3.6 4n 40p 40p 62.5n 125n) dc 0
* .option temp=27
* .option tnom=27
.include ~/TOP_pex_extracted.spice
.control
save all
tran  0.05n 250u
write pll_bench.raw
.endc
"}
C {devices/lab_wire.sym} 240 -260 0 0 {name=p10 sig_type=std_logic lab=UP}
C {devices/lab_wire.sym} 240 -240 0 0 {name=p11 sig_type=std_logic lab=DOWN}
C {devices/lab_wire.sym} 740 -260 0 1 {name=p9 sig_type=std_logic lab=ctrl}
C {devices/lab_wire.sym} 50 -260 0 0 {name=p5 sig_type=std_logic lab=data}
C {devices/ipin.sym} 50 -240 0 0 {name=p4 lab=clk}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Noritsuna Imamura"}
C {lf.sym} 490 -260 0 0 {name=x3}
C {ctrlsel.sym} 650 -250 0 0 {name=x4}
C {devices/gnd.sym} 570 -210 0 0 {name=l3 lab=GND}
C {sw.sym} 1070 -140 0 0 {name=x7}
C {devices/gnd.sym} 1070 -80 0 0 {name=l4 lab=GND}
C {devices/opin.sym} 1130 -150 0 0 {name=p1 lab=OUT}
C {pfd2.sym} 150 -250 0 0 {name=x1}
C {devices/opin.sym} 1010 -180 0 1 {name=p2 lab=6f}
C {devices/code_shown.sym} 560 -550 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.include $::180MCU_STDCELLS/gf180mcu_fd_sc_mcu7t5v0.spice
"}
C {fdiv2.sym} 1010 -240 0 0 {name=x6}
C {cs-vth-ref.sym} -190 -30 0 0 {name=X15}
C {devices/vdd.sym} -110 -210 0 0 {name=l7 lab=VDD}
C {devices/gnd.sym} -110 -50 0 0 {name=l8 lab=GND}
C {csbias.sym} 150 -170 0 0 {name=x8}
C {cp.sym} 330 -250 0 0 {name=x2}
C {vco_pex.sym} 830 -160 0 0 {name=x9 prefix=TOP}
C {devices/vdd.sym} 980 -180 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 980 -140 0 0 {name=l5 lab=GND}
