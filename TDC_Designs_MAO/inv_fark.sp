* SPICE export by:  S-Edit 16.30
* Export time:      Thu May 09 23:09:13 2019
* Design:           Counter_TDC
* Cell:             inv_fark
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
.subckt inv45 A Out Gnd Vdd 
* Design: Counter_TDC / Cell: inv45 / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 06/13/07 23:17:11
* Revision: 1 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=1.5u L=45n AS=1.35p PS=4.8u AD=1.35p PD=4.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=1.5u L=45n M=2 AS=2.7p PS=9.6u AD=1.875p PD=5.5u $ $x=4600 $y=3600 $w=400 $h=600
.ends

.subckt inv130 A Out Gnd Vdd 
* Design: Counter_TDC / Cell: inv130 / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 05/09/19 23:06:58
* Revision: 1 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=1.5u L=130n AS=1.35p PS=4.8u AD=1.35p PD=4.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=1.5u L=130n M=2 AS=2.7p PS=9.6u AD=1.875p PD=5.5u $ $x=4600 $y=3600 $w=400 $h=600
.ends

.subckt inv180 A Out Gnd Vdd 
* Design: Counter_TDC / Cell: inv180 / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 05/09/19 23:06:58
* Revision: 1 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=1.5u L=180n AS=1.35p PS=4.8u AD=1.35p PD=4.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=1.5u L=180n M=2 AS=2.7p PS=9.6u AD=1.875p PD=5.5u $ $x=4600 $y=3600 $w=400 $h=600
.ends


***** Top Level *****
Xinv45_1 In Out45nm Gnd Vdd inv45 $ $x=650 $y=500 $w=900 $h=600
Xinv130_1 In Out130nm Gnd Vdd inv130 $ $x=650 $y=-300 $w=900 $h=600
Xinv180_1 In Out180nm Gnd Vdd inv180 $ $x=650 $y=-1000 $w=900 $h=600

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 3V
.include "C:\Users\makif\Desktop\130tech\45nm.md"


VStart In 0 BIT ({0001111111} pw=1n lt=1n ht=1n on=1 off=0 rt=0.001n ft=0.001n delay=0)

.tran 0.01n 10n start=0
.print tran   v(In,Gnd) v(Out45nm,Gnd) v(Out130nm,Gnd) v(Out180nm,Gnd) 
.end

