v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -460 300 -350 {
lab=OUT}
N 300 -350 360 -350 {
lab=OUT}
N -410 -520 -410 -420 {
lab=#net1}
N -410 -610 -410 -580 {
lab=VDD}
N -140 -610 -140 -580 {
lab=VDD}
N -140 -590 -110 -590 {
lab=VDD}
N -110 -590 -110 -550 {
lab=VDD}
N -140 -550 -110 -550 {
lab=VDD}
N -440 -550 -410 -550 {
lab=VDD}
N -440 -590 -440 -550 {
lab=VDD}
N -440 -590 -410 -590 {
lab=VDD}
N 50 -550 50 -460 {
lab=#net1}
N -140 -520 -140 -290 {
lab=#net2}
N -140 -230 -140 -180 {
lab=VSS}
N -410 -360 -410 -290 {
lab=#net3}
N -410 -230 -410 -180 {
lab=VSS}
N -410 -390 -380 -390 {
lab=VSS}
N -380 -390 -380 -200 {
lab=VSS}
N -410 -440 -330 -440 {
lab=#net1}
N -330 -440 -330 -330 {
lab=#net1}
N -170 -260 -140 -260 {
lab=VSS}
N -170 -210 -140 -210 {
lab=VSS}
N -140 -320 40 -320 {
lab=#net2}
N -100 -260 40 -260 {
lab=#net2}
N -510 -390 -490 -390 {
lab=VCTRL}
N -490 -390 -450 -390 {
lab=VCTRL}
N 660 -350 710 -350 {
lab=#net4}
N 1010 -350 1060 -350 {
lab=#net5}
N 1360 -350 1410 -350 {
lab=#net6}
N 1710 -350 1760 -350 {
lab=#net7}
N 2060 -350 2230 -350 {
lab=OUT}
N 300 -460 2140 -460 {
lab=OUT}
N 2140 -460 2140 -350 {
lab=OUT}
N 40 -320 40 -260 {
lab=#net2}
N 40 -260 2230 -260 {
lab=#net2}
N 360 -330 360 -260 {
lab=#net2}
N 710 -330 710 -260 {
lab=#net2}
N 1060 -330 1060 -260 {
lab=#net2}
N 1410 -330 1410 -260 {
lab=#net2}
N 1760 -330 1760 -260 {
lab=#net2}
N 2230 -330 2230 -260 {
lab=#net2}
N 50 -550 2230 -550 {
lab=#net1}
N 2230 -550 2230 -370 {
lab=#net1}
N 360 -550 360 -370 {
lab=#net1}
N 710 -550 710 -370 {
lab=#net1}
N 1060 -550 1060 -370 {
lab=#net1}
N 1410 -550 1410 -370 {
lab=#net1}
N 1760 -550 1760 -370 {
lab=#net1}
N 660 -330 660 -200 {
lab=VSS}
N 660 -200 2530 -200 {
lab=VSS}
N 2530 -330 2530 -200 {
lab=VSS}
N 660 -620 660 -370 {
lab=VDD}
N 660 -620 2530 -620 {
lab=VDD}
N 2530 -620 2530 -370 {
lab=VDD}
N 1010 -620 1010 -370 {
lab=VDD}
N 1360 -620 1360 -370 {
lab=VDD}
N 1710 -620 1710 -370 {
lab=VDD}
N 2060 -620 2060 -370 {
lab=VDD}
N 2530 -350 2530 -330 {
lab=VSS}
N 2060 -330 2060 -200 {
lab=VSS}
N 1710 -330 1710 -200 {
lab=VSS}
N 1360 -330 1360 -200 {
lab=VSS}
N 1010 -330 1010 -200 {
lab=VSS}
N -430 -260 -430 -220 {
lab=VSS}
N -430 -220 -410 -220 {
lab=VSS}
N -350 -300 -330 -300 {
lab=VSS}
N -350 -220 -330 -220 {
lab=VSS}
N -330 -270 -330 -250 {
lab=#net8}
N -350 -300 -350 -220 {
lab=VSS}
N -370 -550 -180 -550 {
lab=#net1}
N -410 -460 50 -460 {
lab=#net1}
N -320 -550 -320 -460 {
lab=#net1}
N -170 -260 -170 -210 {
lab=VSS}
N -350 -220 -350 -190 {
lab=VSS}
N -380 -200 -380 -190 {
lab=VSS}
N -410 -620 660 -620 {
lab=VDD}
N -410 -620 -410 -610 {
lab=VDD}
N -140 -620 -140 -610 {
lab=VDD}
N 40 -200 660 -200 {
lab=VSS}
N 40 -200 40 -180 {
lab=VSS}
N -410 -180 40 -180 {
lab=VSS}
N -330 -190 -330 -180 {
lab=VSS}
N -350 -190 -350 -180 {
lab=VSS}
N -380 -190 -380 -180 {
lab=VSS}
N -500 -180 -410 -180 {
lab=VSS}
N -510 -620 -410 -620 {
lab=VDD}
C {devices/opin.sym} 2140 -460 0 0 {name=p1 lab=OUT}
C {symbols/pfet_03v3.sym} -160 -550 0 0 {name=M25
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
C {symbols/pfet_03v3.sym} -390 -550 0 1 {name=M26
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
C {symbols/nfet_03v3.sym} -430 -390 0 0 {name=M27
L=0.33u
W=0.8u
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
C {symbols/nfet_03v3.sym} -120 -260 0 1 {name=M28
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
C {devices/ipin.sym} -510 -390 0 0 {name=p2 lab=VCTRL}
C {vco_inverter.sym} 510 -350 0 0 {name=x1}
C {vco_inverter.sym} 860 -350 0 0 {name=x2}
C {vco_inverter.sym} 1210 -350 0 0 {name=x3}
C {vco_inverter.sym} 1560 -350 0 0 {name=x4}
C {vco_inverter.sym} 1910 -350 0 0 {name=x5}
C {vco_inverter_end.sym} 2380 -350 0 0 {name=x6}
C {symbols/nfet_03v3.sym} -310 -300 0 1 {name=M7
L=0.33u
W=8u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dn
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -310 -220 0 1 {name=M8
L=0.33u
W=8u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_dn
spiceprefix=X
}
C {devices/ipin.sym} -290 -300 0 1 {name=p5 lab=VCNB}
C {devices/ipin.sym} -290 -220 0 1 {name=p6 lab=VCNS}
C {devices/iopin.sym} -510 -620 0 1 {name=p3 lab=VDD}
C {devices/iopin.sym} -500 -180 0 1 {name=p4 lab=VSS}
C {symbols/ppolyf_u.sym} -410 -260 0 0 {name=R1
W=0.8e-6
L=260e-6
model=ppolyf_u
spiceprefix=X
m=1}
