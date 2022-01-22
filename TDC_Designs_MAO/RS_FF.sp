* SPICE export by:  SEDIT 13.00
* Export time:      Sat Jan 26 20:17:59 2019
* Design:           Counter_TDC
* Cell:             RS_FF
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
.subckt INV A Out Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: INV / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 6/13/2007 11:17:11 PM
* Revision: 64

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out A Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out A Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt NAND2C A B Out1 Out2 Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: NAND2C / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NAND with complementary output.
* Date: 6/13/2007 11:17:11 PM
* Revision: 62

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out1 A 1 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 1 B Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN3 Out2 Out1 Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out1 A Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out1 B Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP3 Out2 Out1 Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XINV_1 S N_2 Gnd Vdd INV  
XINV_2 R N_4 Gnd Vdd INV  
XNAND2C_1 N_2 N_5 Q N_1 Gnd Vdd NAND2C  
XNAND2C_2 Q N_4 N_5 N_3 Gnd Vdd NAND2C  

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

