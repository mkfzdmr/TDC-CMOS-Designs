* SPICE export by:  S-Edit 16.30
* Export time:      Mon Mar 04 11:23:41 2019
* Design:           Counter_TDC
* Cell:             inv_45nm
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
MNMOS_1 Out In Gnd 0 NMOS W=135n L=32n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=800 $w=400 $h=600
MPMOS_1 Out In Vdd Vdd PMOS W=135n L=32n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1400 $w=400 $h=600

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********

VPower Vdd Gnd 1V
.include "C:\Users\makif\Desktop\130tech\32nm.md"
.tran 0.1n 100n start=0
.print tran v(In,Gnd) v(Out,Gnd) 

*VIn In 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 0.1n 0.2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
VIn In 0 dc 0 PULSE (0 1 0 0.001n 0.001n 10n 20n)

.end

