* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 06 22:27:23 2019
* Design:           Counter_TDC
* Cell:             ring_oscillator
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
.subckt INV A Out Gnd Vdd 
* Design: LogicGates / Cell: INV / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 06/13/07 23:17:11
* Revision: 64 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4600 $y=3600 $w=400 $h=600
.ends

.subckt NAND2C A B Out1 Out2 Gnd Vdd 
* Design: LogicGates / Cell: NAND2C / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NAND with complementary output.
* Date: 06/13/07 23:17:11
* Revision: 62 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out1 A 1 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=3500 $y=3600 $w=400 $h=600
MN2 1 B Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=3500 $y=2800 $w=400 $h=600
MN3 Out2 Out1 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5900 $y=3600 $w=400 $h=600
MP1 Out1 A Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=3500 $y=4400 $w=400 $h=600
MP2 Out1 B Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4700 $y=4400 $w=400 $h=600
MP3 Out2 Out1 Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=5900 $y=4400 $w=400 $h=600
.ends


***** Top Level *****
XINV_1 N_7 N_1 Gnd Vdd INV $ $x=350 $y=100 $w=900 $h=600
XINV_2 N_1 N_2 Gnd Vdd INV $ $x=1250 $y=100 $w=900 $h=600
XINV_3 N_2 N_3 Gnd Vdd INV $ $x=2150 $y=100 $w=900 $h=600
XINV_4 N_3 N_4 Gnd Vdd INV $ $x=3050 $y=100 $w=900 $h=600
XINV_5 N_4 N_5 Gnd Vdd INV $ $x=3950 $y=100 $w=900 $h=600
XINV_6 N_5 O6 Gnd Vdd INV $ $x=4850 $y=100 $w=900 $h=600
XINV_7 O6 O7 Gnd Vdd INV $ $x=5750 $y=100 $w=900 $h=600
XNAND2C_1 O7 Enable N_6 N_7 Gnd Vdd NAND2C $ $x=-700 $y=400 $w=1200 $h=600

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 5V
.include "C:\Users\makif\Desktop\130tech\130nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

*VStart In 0 BIT ({0110111111} pw=10n lt=10n ht=10n on=1.5 off=0 rt=0.001n ft=0.001n delay=0)
VStop Enable 0 BIT ({0011100000} pw=10n lt=10n ht=10n on=5 off=0 rt=0.001n ft=0.001n delay=0)


.tran 0.1n 100n start=0

.print tran    v(O6,Gnd) v(O7,Gnd) v(Enable,Gnd)
.end

