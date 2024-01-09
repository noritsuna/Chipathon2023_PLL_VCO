v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -570 400 -530 {
lab=VDD}
N 400 -530 430 -530 {
lab=VDD}
N 430 -530 430 -420 {
lab=VDD}
N 400 -420 430 -420 {
lab=VDD}
N 400 -500 430 -500 {
lab=VDD}
N 400 -470 400 -450 {
lab=#net1}
N 400 -390 400 -320 {
lab=Y}
N 360 -420 360 -290 {
lab=A}
N 400 -260 400 -240 {
lab=#net2}
N 400 -180 400 -140 {
lab=VSS}
N 400 -290 430 -290 {
lab=VSS}
N 430 -290 430 -180 {
lab=VSS}
N 400 -180 430 -180 {
lab=VSS}
N 400 -210 430 -210 {
lab=VSS}
N 400 -350 580 -350 {
lab=Y}
N 300 -350 360 -350 {
lab=A}
N 300 -500 360 -500 {
lab=VC_P}
N 310 -210 360 -210 {
lab=VC_N}
C {symbols/pfet_03v3.sym} 380 -500 0 0 {name=M1
L=0.33u
W=0.9u
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
C {symbols/pfet_03v3.sym} 380 -420 0 0 {name=M2
L=0.33u
W=1.8u
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
C {symbols/nfet_03v3.sym} 380 -290 0 0 {name=M3
L=0.33u
W=0.84u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dn
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 380 -210 0 0 {name=M4
L=0.33u
W=0.42u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dn
spiceprefix=X
}
C {devices/iopin.sym} 400 -570 0 1 {name=p1 lab=VDD}
C {devices/iopin.sym} 400 -140 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 300 -350 0 0 {name=p4 lab=A}
C {devices/ipin.sym} 310 -210 0 0 {name=p3 lab=VC_N}
C {devices/ipin.sym} 300 -500 0 0 {name=p5 lab=VC_P}
C {devices/opin.sym} 580 -350 0 0 {name=p6 lab=Y}
