v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -140 160 -100 {lab=out}
N 80 -170 120 -170 {lab=in}
N 80 -170 80 -70 {lab=in}
N 80 -70 120 -70 {lab=in}
N 160 -120 270 -120 {lab=out}
N 30 -120 80 -120 {lab=in}
N 160 -240 160 -200 {lab=VDDA}
N 160 -240 240 -240 {lab=VDDA}
N 240 -240 240 -170 {lab=VDDA}
N 160 -170 240 -170 {lab=VDDA}
N 160 -70 240 -70 {lab=VSSA}
N 240 -70 240 -10 {lab=VSSA}
N 160 -10 240 -10 {lab=VSSA}
N 160 -40 160 -10 {lab=VSSA}
N 160 -10 160 30 {lab=VSSA}
N 160 -280 160 -240 {lab=VDDA}
C {sky130_fd_pr/nfet_01v8.sym} 140 -70 0 0 {name=M1
W=0.5
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -170 0 0 {name=M2
W=1.5
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -10 -350 0 0 {name=p1 lab=in}
C {iopin.sym} 130 -350 2 0 {name=p2 lab=VDDA}
C {iopin.sym} 220 -350 2 0 {name=p3 lab=VSSA}
C {opin.sym} 280 -350 0 0 {name=p4 lab=out}
C {lab_pin.sym} 30 -120 0 0 {name=p5 sig_type=std_logic lab=in}
C {lab_pin.sym} 270 -120 0 1 {name=p6 sig_type=std_logic lab=out}
C {lab_pin.sym} 160 -280 0 1 {name=p7 sig_type=std_logic lab=VDDA}
C {lab_pin.sym} 160 30 0 1 {name=p8 sig_type=std_logic lab=VSSA}
