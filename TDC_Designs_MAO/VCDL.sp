* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 06 15:33:35 2019
* Design:           Counter_TDC
* Cell:             gated_ring_TDC
* Interface:        view0
* View:             view0
* View type:        connectivity
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty cells: yes
* Exclude .model:   no
* Exclude .end:     no
* Exclude simulator commands:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Counter_TDC\Counter_TDC
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********

*************** Subcircuits *****************
.subckt VCDL_inv Enable In Out Gnd Vdd 
MNMOS_1 Out In N_1 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=500 $w=400 $h=600
MNMOS_2 N_1 Enable Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=-100 $w=400 $h=600
MNMOS_3 N_1 N_1 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-100 $w=400 $h=600 $m
MPMOS_1 Out In N_2 Vdd PMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1100 $w=400 $h=600
MPMOS_2 N_2 Enable Vdd Vdd PMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1700 $w=400 $h=600
MPMOS_3 N_2 N_2 Vdd Vdd PMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=1700 $w=400 $h=600 $m
.ends


***** Top Level *****
XVCDL_inv_1 Enable In Out Gnd Vdd VCDL_inv $ $x=400 $y=500 $w=1800 $h=1400

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 1.5V
.include "C:\Users\makif\Desktop\130tech\45nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({0110111111} pw=10n lt=10n ht=10n on=1.5 off=0 rt=0.001n ft=0.001n delay=0)
VStop Enable 0 BIT ({0011100000} pw=10n lt=10n ht=10n on=1.5 off=0 rt=0.001n ft=0.001n delay=0)


.tran 0.1n 100n start=0

.print tran   v(In,Gnd) v(Out,Gnd) v(Enable,Gnd)
.end

