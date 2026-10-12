v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 510 -120 1310 280 {flags=graph
y1=0
y2=2
ypos1=-0.2
ypos2=1.8
divy=5
subdivy=1
unity=1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="count3
count2
count1
count0
BUS_NAME;count3,count2,count1,count0
clk
rst"
color="4 4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
x1=0
x2=3e-07}
N -210 20 -210 40 {lab=CLK}
N -210 20 -30 20 {lab=CLK}
N -140 -20 -140 20 {lab=CLK}
N -80 -20 -30 -20 {lab=RST}
N -80 -60 -80 -20 {lab=RST}
N 170 -50 220 -50 {lab=count3}
N 220 -50 220 100 {lab=count3}
N 170 -20 280 -20 {lab=count2}
N 280 -20 280 100 {lab=count2}
N 170 10 340 10 {lab=count1}
N 340 10 340 100 {lab=count1}
N 170 40 400 40 {lab=count0}
N 400 40 400 100 {lab=count0}
N -290 -200 -290 -160 {lab=RST}
N -290 -200 -240 -200 {lab=RST}
C {vsource.sym} -290 20 0 0 {name=V1 value=1.8 savecurrent=false}
C {vdd.sym} -290 -10 0 0 {name=l7 lab=VDD}
C {gnd.sym} -290 50 0 0 {name=l8 lab=0}
C {vsource.sym} -210 70 0 0 {name=V2
value="pulse(0 'VDD' '0.5/freq' '0.01/freq' '0.01/freq' '0.5/freq' '1/freq')" 
savecurrent=false}
C {gnd.sym} -210 100 0 0 {name=l10 lab=0}
C {lab_pin.sym} -140 -20 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -80 -60 0 0 {name=p2 sig_type=std_logic lab=RST}
C {vdd.sym} 70 -90 0 0 {name=l1 lab=VDD}
C {gnd.sym} 70 80 0 0 {name=l2 lab=0}
C {capa.sym} 220 130 0 0 {name=C1
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 220 160 0 0 {name=l5 lab=0}
C {capa.sym} 280 130 0 0 {name=C2
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 280 160 0 0 {name=l3 lab=0}
C {capa.sym} 340 130 0 0 {name=C3
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 160 0 0 {name=l4 lab=0}
C {capa.sym} 400 130 0 0 {name=C4
m=1
value=25f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 400 160 0 0 {name=l6 lab=0}
C {lab_pin.sym} 220 -50 2 0 {name=p3 sig_type=std_logic lab=count3}
C {lab_pin.sym} 280 -20 2 0 {name=p4 sig_type=std_logic lab=count2}
C {lab_pin.sym} 340 10 2 0 {name=p5 sig_type=std_logic lab=count1}
C {lab_pin.sym} 400 40 2 0 {name=p6 sig_type=std_logic lab=count0}
C {gnd.sym} -290 -100 0 0 {name=l11 lab=0}
C {lab_pin.sym} -240 -200 2 0 {name=p7 sig_type=std_logic lab=RST}
C {devices/code.sym} -480 -310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {code_shown.sym} -120 -310 0 0 {name=include only_toplevel=false value="
.inc /foss/designs/digital/counter_4b.spice
"}
C {code_shown.sym} 390 -320 0 0 {name=SPICE only_toplevel=false 
value="
.param freq=100e6 VDD=1.8
**** interactive sim
.control
  save all
  tran 500p 300n 
  write TB_counter_4b.raw
.endc
"}
C {devices/launcher.sym} -395 -415 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload
simulation .raw file" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/launcher.sym} -400 -490 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {vsource.sym} -290 -130 0 0 {name=V3
value="pulse(0 'VDD' 12n '0.01/freq' '0.01/freq' 180n 200n)" 
savecurrent=false}
C {counter_4b.sym} 70 0 0 0 {name=x1}
