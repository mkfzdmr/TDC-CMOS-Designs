* SPICE export by:  S-Edit 16.30
* Export time:      Sat Mar 09 00:09:14 2019
* Design:           Counter_TDC
* Cell:             VCDL_inv
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

***** Top Level *****
MNMOS_1 Out In N_1 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=500 $w=400 $h=600
MNMOS_2 N_1 Enable Gnd 0 NMOS W=10u L=260n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=-100 $w=400 $h=600
MPMOS_1 Out In N_2 Vdd PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1100 $w=400 $h=600
MPMOS_2 N_2 INV_Enable Vdd Vdd PMOS W=10u L=260n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1700 $w=400 $h=600

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 1.5V


.include "C:\Users\makif\Desktop\130tech\130nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({0110101010} pw=10n lt=10n ht=10n on=1.5 off=0 rt=0.01n ft=0.01n delay=0)
VStop Enable 0 BIT ({0011111000} pw=10n lt=10n ht=10n on=1.5 off=0 rt=0.01n ft=0.01n delay=0)
VStop2 INV_Enable 0 BIT ({110000011} pw=10n lt=10n ht=10n on=1.5 off=0 rt=0.01n ft=0.01n delay=0)

.tran 0.1n 100n start=0

.print tran   v(In,Gnd) v(Out,Gnd) v(Enable,Gnd) v(INV_Enable,Gnd)
.end
