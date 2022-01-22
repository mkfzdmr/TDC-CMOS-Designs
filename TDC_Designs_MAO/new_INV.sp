* SPICE export by:  SEDIT 13.00
* Export time:      Sun Jan 27 13:15:12 2019
* Design:           Counter_TDC
* Cell:             new_INV
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Counter_TDC\Counter_TDC
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out In Gnd 0 NMOS W=5u L=0.13u AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out In Vdd Vdd PMOS W=5u L=0.13u M=1 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********


VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Desktop\130tech\130nm.md"

.tran 0.01p 100p start=0
.print tran v(In,Gnd) v(Out,Gnd) 

*VIn In 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 0.1n 0.2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)


.end

