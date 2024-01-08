v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 -130 -170 -110 {
lab=VDD}
N -170 -50 -170 -30 {
lab=GND}
N 70 -230 70 -210 {
lab=VDD}
N 70 -50 70 -30 {
lab=GND}
N 130 -170 170 -170 {
lab=vb}
N 70 -220 210 -220 {
lab=VDD}
N 210 -220 210 -200 {
lab=VDD}
N 210 -170 220 -170 {
lab=VDD}
N 220 -210 220 -170 {
lab=VDD}
N 210 -210 220 -210 {
lab=VDD}
N 70 -40 210 -40 {
lab=GND}
N 210 -140 210 -120 {
lab=#net1}
N 210 -60 210 -40 {
lab=GND}
N 180 -90 210 -90 {
lab=GND}
N 180 -90 180 -40 {
lab=GND}
N 250 -90 370 -90 {
lab=#net1}
N 210 -40 410 -40 {
lab=GND}
N 410 -60 410 -40 {
lab=GND}
N 410 -90 430 -90 {
lab=GND}
N 430 -90 430 -40 {
lab=GND}
N 410 -40 430 -40 {
lab=GND}
N 210 -220 410 -220 {
lab=VDD}
N 410 -220 410 -200 {
lab=VDD}
N 390 -170 410 -170 {
lab=VDD}
N 390 -220 390 -170 {
lab=VDD}
N 410 -140 410 -120 {
lab=#net2}
N 450 -170 520 -170 {
lab=#net2}
N 410 -220 560 -220 {
lab=VDD}
N 560 -220 560 -200 {
lab=VDD}
N 560 -170 580 -170 {
lab=VDD}
N 580 -220 580 -170 {
lab=VDD}
N 560 -220 580 -220 {
lab=VDD}
N 480 -170 480 -130 {
lab=#net2}
N 210 -130 290 -130 {
lab=#net1}
N 290 -130 290 -90 {
lab=#net1}
N 410 -130 480 -130 {
lab=#net2}
N 430 -40 480 -40 {
lab=GND}
N 480 -40 560 -40 {
lab=GND}
N 560 -50 560 -40 {
lab=GND}
N 560 -140 560 -110 {
lab=#net3}
C {devices/code.sym} -120 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/gnd.sym} 70 -30 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -190 -300 0 0 {name=control only_toplevel=false value=".control
save all
dc Vdd 3 3.6 0.1
plot i(vout)
dc temp -50 125 5
plot i(vout)
.endc"}
C {devices/vdd.sym} -170 -130 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} -170 -30 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -170 -80 0 0 {name=Vdd value=3.3 savecurrent=false}
C {devices/vdd.sym} 70 -230 0 0 {name=l4 lab=VDD}
C {cs-vth-ref.sym} -10 -30 0 0 {name=X1}
C {devices/lab_pin.sym} 150 -170 3 1 {name=p1 sig_type=std_logic lab=vb}
C {symbols/pfet_03v3.sym} 190 -170 0 0 {name=M4
L=0.56u
W=2.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ammeter.sym} 560 -80 0 0 {name=Vout savecurrent=true}
C {symbols/nfet_03v3.sym} 230 -90 0 1 {name=M29
L=0.34u
W=6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 540 -170 0 0 {name=M1
L=0.34u
W=0.8u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 390 -90 0 0 {name=M27
L=0.34u
W=1.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 430 -170 0 1 {name=M26
L=0.34u
W=1.6u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
