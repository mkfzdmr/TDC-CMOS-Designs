* SPICE export by:  S-Edit 16.30
* Export time:      Wed Mar 06 23:15:56 2019
* Design:           Counter_TDC
* Cell:             Counter
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

.subckt new_DFF Clk D INV_Q Q Gnd Vdd 
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C $ $x=-2900 $y=3500 $w=1200 $h=600
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C $ $x=-1000 $y=3700 $w=1200 $h=600
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C $ $x=-1000 $y=4900 $w=1200 $h=600
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C $ $x=1000 $y=3900 $w=1200 $h=600
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C $ $x=1000 $y=5100 $w=1200 $h=600
.ends


***** Top Level *****
Xnew_DFF_1 In N_1 N_1 Q0 Gnd Vdd new_DFF $ $x=900 $y=-1250 $w=800 $h=300
Xnew_DFF_2 Q0 N_2 N_2 Q1 Gnd Vdd new_DFF $ $x=2100 $y=-1250 $w=800 $h=300
Xnew_DFF_3 Q1 N_3 N_3 Q2 Gnd Vdd new_DFF $ $x=3300 $y=-1250 $w=800 $h=300
Xnew_DFF_4 Q2 N_4 N_4 Q3 Gnd Vdd new_DFF $ $x=4700 $y=-1250 $w=800 $h=300

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Desktop\130tech\130nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({0101010101} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)



.tran 0.1n 100n start=0

.print tran    v(Q0,Gnd) v(Q1,Gnd) v(Q2,Gnd) v(Q3,Gnd) v(In,Gnd)
.end

