* SPICE export by:  SEDIT 13.00
* Export time:      Sat Feb 09 20:53:10 2019
* Design:           Counter_TDC
* Cell:             SR2
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
.subckt NOR2 A B Out Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: NOR2 / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NOR
* Date: 7/12/2007 10:24:48 PM
* Revision: 33

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out B Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 Out A Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out B 1 Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 1 A Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XNOR2_1 R N_1 Q Gnd Vdd NOR2  
XNOR2_2 Q S N_1 Gnd Vdd NOR2  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
.tran 0.1n 100n start=0
.print tran v(R,Gnd) v(S,Gnd) v(Q,Gnd)


*VS S 0 dc 0 PULSE (0 3.3 0 0.1n 0.1n 10n 10n)
*VR R 0 dc 0 PULSE (0 3.3 15n 0.1n 0.1n 10n 10n)

VStart S 0 BIT ({0000111111} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)
VStopt R 0 BIT ({0000000111} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)
*VR R 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)
*VS S 0 dc 0 PULSE (0 3.3 15p 0.1p 0.1p 10p 20p)
.end

