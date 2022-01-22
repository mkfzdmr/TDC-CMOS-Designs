* SPICE export by:  SEDIT 13.00
* Export time:      Mon Jan 28 15:23:31 2019
* Design:           Counter_TDC
* Cell:             DLL_TDC
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Counter_TDC\Counter_TDC
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********

*************** Subcircuits *****************
.subckt buffer In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 N_1 In Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 Out N_1 Gnd 0 NMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP1 N_1 In Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out N_1 Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
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

.subckt new_INV In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out In Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out In Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt new_DFF Clk D INV_Q Q Gnd Vdd  
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C  
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C  
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C  
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C  
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C  
.ends

.subckt T_B_endocer8x3 B0 B1 B2 B3 B4 B5 B6 D0 D1 D2 Gnd Vdd  
*-------- Devices: SPICE.ORDER == 0 --------
Xnew_INV_1 N_3 D0 Gnd Vdd new_INV  
Xnew_INV_2 N_2 D1 Gnd Vdd new_INV  
Xnew_INV_3 N_1 D2 Gnd Vdd new_INV  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_10 N_3 B2 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_1 N_1 B6 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_11 N_2 B1 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_2 B6 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_12 N_3 B0 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_3 B6 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_1 B5 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 N_2 B5 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_6 N_1 B4 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_7 N_3 B4 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_8 N_1 B3 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_9 N_2 B2 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 N_1 Gnd Vdd Vdd PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 N_2 Gnd Vdd Vdd PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 N_3 Gnd Vdd Vdd PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

Xnew_DFF_1 Stop T8 N_2 N_1 Gnd Vdd new_DFF  
Xnew_DFF_2 Stop T7 N_3 N_11 Gnd Vdd new_DFF  
Xnew_DFF_3 Stop T6 N_4 N_13 Gnd Vdd new_DFF  
Xnew_DFF_4 Stop T5 N_5 N_15 Gnd Vdd new_DFF  
Xnew_DFF_5 Stop T4 N_6 N_17 Gnd Vdd new_DFF  
Xnew_DFF_6 Stop T3 N_7 N_19 Gnd Vdd new_DFF  
Xnew_DFF_7 Stop T2 N_8 N_21 Gnd Vdd new_DFF  
Xnew_DFF_8 Stop T1 N_9 N_23 Gnd Vdd new_DFF  
Xbuffer_1 T3 T4 Gnd Vdd buffer  
Xbuffer_2 T4 T5 Gnd Vdd buffer  
Xbuffer_3 T5 T6 Gnd Vdd buffer  
Xbuffer_4 T2 T3 Gnd Vdd buffer  
Xbuffer_5 T1 T2 Gnd Vdd buffer  
Xbuffer_6 Start T1 Gnd Vdd buffer  
Xbuffer_7 T6 T7 Gnd Vdd buffer  
Xbuffer_8 T7 T8 Gnd Vdd buffer  
XT_B_endocer8x3_1 N_23 N_21 N_19 N_17 N_15 N_13 N_11 D0 D1 D2 Gnd Vdd T_B_endocer8x3  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********


VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.tran 0.01p 100p start=0


*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart Start 0 BIT ({0011111111} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.01n ft=0.01n delay=99.83n)
VStop Stop 0 BIT ({1110000000} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.01n ft=0.01n delay=0)

*VClock Clock 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 0.6n 1.2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)

.tran 1n 1000n start=0
.print tran   v(Start,Gnd) v(T2,Gnd) v(T3,Gnd) v(T4,Gnd) v(T5,Gnd) v(T6,Gnd)v(T7,Gnd) v(Stop,Gnd) 
.print tran   v(D0,Gnd) v(D1,Gnd) v(D2,Gnd)
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)

.end

