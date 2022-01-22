 * SPICE export by:  SEDIT 13.00
* Export time:      Sat Feb 09 21:00:11 2019
* Design:           Counter_TDC
* Cell:             counter_TDC2
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

*************** Subcircuits *****************
.subckt NAND2C A B Out1 Out2 Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: NAND2C / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NAND with complementary output.
* Date: 6/13/2007 11:17:11 PM
* Revision: 62

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out1 A 1 0 NMOS W=130n L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 1 B Gnd 0 NMOS W=130n L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN3 Out2 Out1 Gnd 0 NMOS W=130n L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out1 A Vdd Vdd PMOS W=130n L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out1 B Vdd Vdd PMOS W=130n L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP3 Out2 Out1 Vdd Vdd PMOS W=130n L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt NOR2 A B Out Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: NOR2 / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NOR
* Date: 7/12/2007 10:24:48 PM
* Revision: 33

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out B Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 Out A Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out B 1 Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 1 A Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt SR2 Q R S Gnd Vdd  
XNOR2_1 R N_1 Q Gnd Vdd NOR2  
XNOR2_2 Q S N_1 Gnd Vdd NOR2  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XNAND2C_1 Clock time N_1 Out Gnd Vdd NAND2C  
XSR2_1 time Stop Start Gnd Vdd SR2  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Desktop\130tech\130nm.md"
.include "C:\Users\Hp\Desktop\counter_TDC2\130tech\130nm.md"




*VS S 0 dc 0 PULSE (0 3.3 0 0.1n 0.1n 10n 10n)
*VR R 0 dc 0 PULSE (0 3.3 15n 0.1n 0.1n 10n 10n)
VClock Clock 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 10u 20u)
VStart Start 0 BIT ({0000111111} pw=1n lt=1n ht=1n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)
VStopt Stop 0 BIT ({1000000111} pw=1n lt=1n ht=1n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)

.tran 0.01n 10n start=0
.print tran v(Stop,Gnd) v(Start,Gnd) v(Out,Gnd) v(Clock,Gnd) v(Time,Gnd)
.end

