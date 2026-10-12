v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 540 -90 1340 310 {flags=graph
y1=-0.019
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.545061e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="in
out
outb"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/TB_not.raw
linewidth_mult=4
x2=1.9487163e-08
hilight_wave=-1}
T {tcleval(trise: [to_eng [xschem raw value trise_not 0]])} 550 -240 0 0 0.4 0.4 {floater=1}
T {tcleval(tfall: [to_eng [xschem raw value tfall_not 0]])} 550 -210 0 0 0.4 0.4 {floater=1}
T {tcleval(tDrise: [to_eng [xschem raw value tplh_not 0]])} 550 -180 0 0 0.4 0.4 {floater=1}
T {tcleval(tDfall: [to_eng [xschem raw value tphl_not 0]])} 550 -150 0 0 0.4 0.4 {floater=1}
T {tcleval(trise: [to_eng [xschem raw value trise_buffer 0]])} 740 -240 0 0 0.4 0.4 {floater=1}
T {tcleval(tfall: [to_eng [xschem raw value tfall_buffer 0]])} 740 -210 0 0 0.4 0.4 {floater=1}
T {tcleval(tDrise: [to_eng [xschem raw value tplh_buffer 0]])} 740 -180 0 0 0.4 0.4 {floater=1}
T {tcleval(tDfall: [to_eng [xschem raw value tphl_buffer 0]])} 740 -150 0 0 0.4 0.4 {floater=1}
T {Inverter} 550 -280 0 0 0.4 0.4 {floater=1}
T {Buffer} 740 -280 0 0 0.4 0.4 {floater=1}
N 40 40 90 40 {lab=outb}
N 90 40 90 60 {lab=outb}
N -210 100 -210 140 {lab=in}
N 310 40 360 40 {lab=#net1}
N 360 40 360 60 {lab=#net1}
N 90 40 190 40 {lab=outb}
N 90 10 90 40 {lab=outb}
N 40 240 90 240 {lab=out}
N 90 240 90 260 {lab=out}
N 310 240 360 240 {lab=#net2}
N 360 240 360 260 {lab=#net2}
N 90 240 190 240 {lab=out}
N 90 210 90 240 {lab=out}
N -140 40 -80 40 {lab=in}
N -140 40 -140 240 {lab=in}
N -140 240 -80 240 {lab=in}
N -210 140 -140 140 {lab=in}
N -210 140 -210 180 {lab=in}
C {devices/code.sym} 230 -260 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {vdd.sym} -30 -10 0 0 {name=l1 lab=VDD}
C {gnd.sym} -30 90 0 0 {name=l2 lab=0}
C {capa.sym} 90 90 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 90 120 0 0 {name=l5 lab=0}
C {vsource.sym} -330 -170 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -330 -200 0 0 {name=l7 lab=VDD}
C {gnd.sym} -330 -140 0 0 {name=l8 lab=0}
C {vsource.sym} -210 210 0 1 {name=V2
value="pulse(0 'VDD' '0.5/freq' '0.01/freq' '0.01/freq' '0.5/freq' '1/freq')" 
savecurrent=false}
C {gnd.sym} -210 240 0 1 {name=l10 lab=0}
C {lab_pin.sym} -210 100 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} 90 10 2 0 {name=p2 sig_type=std_logic lab=outb}
C {code_shown.sym} -200 370 0 0 {name=SPICE only_toplevel=false 
value="
.param freq=250e6 VDD=1.8
.param vhigh=\{VDD*0.9\} vlow=\{VDD*0.1\} vswitch=\{VDD*0.5\}

 .csparam vdd1=\{VDD\}
**** interactive sim
.control
  save all
  tran 10p 30n 
  let vlow = \{0.1*vdd1\}
  let vhigh = \{0.9*vdd1\}
  let vswitch = \{0.5*vdd1\}
  meas tran trise_not    trig V(outb) val=vlow    td=0 rise=1 targ V(outb) val=vhigh   td=0 rise=1
  meas tran tfall_not    trig V(outb) val=vhigh   td=0 fall=1 targ V(outb) val=vlow    td=0 fall=1 
  meas tran tplh_not     trig V(in)   val=vswitch td=0 fall=1 targ V(outb) val=vswitch td=0 rise=1
  meas tran tphl_not     trig V(in)   val=vswitch td=0 rise=1 targ V(outb) val=vswitch td=0 fall=1
  meas tran trise_buffer trig V(out)  val=vlow    td=0 rise=1 targ V(out)  val=vhigh   td=0 rise=1
  meas tran tfall_buffer trig V(out)  val=vhigh   td=0 fall=1 targ V(out)  val=vlow    td=0 fall=1 
  meas tran tplh_buffer  trig V(in)   val=vswitch td=0 rise=1 targ V(out)  val=vswitch td=0 rise=1
  meas tran tphl_buffer  trig V(in)   val=vswitch td=0 fall=1 targ V(out)  val=vswitch td=0 fall=1
  write TB_not.raw
.endc
"}
C {devices/launcher.sym} -135 -165 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload
simulation .raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/launcher.sym} -140 -240 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vdd.sym} 240 -10 0 0 {name=l13 lab=VDD}
C {gnd.sym} 240 90 0 0 {name=l14 lab=0}
C {capa.sym} 360 90 0 0 {name=C4
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 120 0 0 {name=l15 lab=0}
C {gate_not_x1.sym} -40 40 0 0 {name=X1}
C {gate_not_x1.sym} 230 40 0 0 {name=X2}
C {vdd.sym} -30 190 0 0 {name=l3 lab=VDD}
C {gnd.sym} -30 290 0 0 {name=l4 lab=0}
C {capa.sym} 90 290 0 0 {name=C2
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 90 320 0 0 {name=l6 lab=0}
C {lab_pin.sym} 90 210 2 0 {name=p3 sig_type=std_logic lab=out}
C {vdd.sym} 240 190 0 0 {name=l9 lab=VDD}
C {gnd.sym} 240 290 0 0 {name=l11 lab=0}
C {capa.sym} 360 290 0 0 {name=C3
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 320 0 0 {name=l12 lab=0}
C {gate_not_x1.sym} 230 240 0 0 {name=X4}
C {gate_buffer_x1.sym} -30 240 0 0 {name=X3}
