v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -0 20 -0 {lab=inb}
N -100 -80 -100 -50 {lab=VDDA}
N -100 -80 70 -80 {lab=VDDA}
N 70 -80 70 -50 {lab=VDDA}
N -100 50 -100 80 {lab=VSSA}
N -100 80 70 80 {lab=VSSA}
N 70 50 70 80 {lab=VSSA}
N -190 -0 -150 -0 {lab=in}
N 140 -0 180 -0 {lab=out}
N 0 -110 0 -80 {lab=VDDA}
N 0 80 0 110 {lab=VSSA}
N -0 -40 0 -0 {lab=inb}
C {ipin.sym} -170 -150 0 0 {name=p1 lab=in}
C {opin.sym} 110 -150 0 0 {name=p2 lab=out}
C {iopin.sym} -100 -150 0 0 {name=p3 lab=VDDA}
C {iopin.sym} 0 -150 0 0 {name=p4 lab=VSSA}
C {gate_not_x1.sym} -110 0 0 0 {name=X1}
C {gate_not_x1.sym} 60 0 0 0 {name=X2}
C {lab_pin.sym} -190 0 0 0 {name=p5 sig_type=std_logic lab=in}
C {lab_pin.sym} 180 0 0 1 {name=p6 sig_type=std_logic lab=out}
C {lab_pin.sym} 0 -110 0 1 {name=p7 sig_type=std_logic lab=VDDA}
C {lab_pin.sym} 0 110 0 1 {name=p8 sig_type=std_logic lab=VSSA}
C {lab_pin.sym} 0 -40 0 0 {name=p9 sig_type=std_logic lab=inb}
