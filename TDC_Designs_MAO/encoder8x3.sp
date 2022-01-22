* SPICE export by:  SEDIT 13.00
* Export time:      Thu Feb 07 23:02:01 2019
* Design:           Counter_TDC
* Cell:             encoder8x3
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
MN1 Out A Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out A Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
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
MN1 Out1 A 1 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 1 B Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN3 Out2 Out1 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out1 A Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out1 B Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP3 Out2 Out1 Vdd Vdd PMOS W=2.5u L=250n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends


********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER == 0 --------
XINV_1 N_4 D0 Gnd Vdd INV  
XINV_2 N_3 D1 Gnd Vdd INV  
XINV_3 N_2 D2 Gnd Vdd INV  
XINV_4 B2 N_11 Gnd Vdd INV  
XINV_5 B3 N_13 Gnd Vdd INV  
XNAND2C_1 N_11 B1 N_12 N_10 Gnd Vdd NAND2C  
XINV_6 B4 N_15 Gnd Vdd INV  
XNAND2C_2 N_13 B2 N_14 N_9 Gnd Vdd NAND2C  
XINV_7 B5 N_17 Gnd Vdd INV  
XNAND2C_3 N_15 B3 N_16 N_8 Gnd Vdd NAND2C  
XINV_8 B6 N_19 Gnd Vdd INV  
XNAND2C_4 N_17 B4 N_18 N_7 Gnd Vdd NAND2C  
XINV_9 B7 N_21 Gnd Vdd INV  
XNAND2C_5 N_19 B5 N_20 N_6 Gnd Vdd NAND2C  
XNAND2C_6 N_21 B6 N_22 N_5 Gnd Vdd NAND2C  
XNAND2C_7 Vdd B7 N_23 N_1 Gnd Vdd NAND2C  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_10 N_4 N_8 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_1 N_2 N_1 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_2 N_3 N_1 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_11 N_3 N_9 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_3 N_4 N_1 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_12 N_4 N_10 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_4 N_2 N_5 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_5 N_3 N_5 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_6 N_2 N_6 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_7 N_4 N_6 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_8 N_2 N_7 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_9 N_3 N_8 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_1 N_2 Gnd Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_2 N_3 Gnd Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_3 N_4 Gnd Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"

*.tran 0.01p 100p start=0


*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

*VStart Start 0 BIT ({1011110001} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)
*VStop Stop 0 BIT ({0000011111} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

*VClock Clock 0 dc 0 PULSE (0 3.3V 0 0.1n 0.1n 60n 120n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)
VGiris B2 Gnd 3.3V
VGiris3 B3 Gnd 3.3V
VGiris4 B4 Gnd 3.3V
VGiris2 B5 Gnd 3.3V
.tran 1n 1000n start=0
.print tran   v(B1,Gnd)  v(D0,Gnd) v(D1,Gnd) v(D2,Gnd) 
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)
.end

* thermometter to gray code to binary  yapýldý