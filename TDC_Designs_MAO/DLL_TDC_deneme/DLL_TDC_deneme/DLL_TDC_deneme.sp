* SPICE export by:  SEDIT 13.00
* Export time:      Thu Feb 07 23:18:18 2019
* Design:           Counter_TDC
* Cell:             DLL_TDC_deneme
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
.subckt buffer In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 N_1 In Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 Out N_1 Gnd 0 NMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP1 N_1 In Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out N_1 Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

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

.subckt encoder8x3 B1 B2 B3 B4 B5 B6 B7 D0 D1 D2 Gnd Vdd  
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
.ends

.subckt new_DFF Clk D INV_Q Q Gnd Vdd  
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C  
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C  
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C  
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C  
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

Xnew_DFF_1 Stop N_1 N_3 N_2 Gnd Vdd new_DFF  
Xnew_DFF_2 Stop N_4 N_5 B7 Gnd Vdd new_DFF  
Xnew_DFF_3 Stop N_6 N_7 B6 Gnd Vdd new_DFF  
Xnew_DFF_4 Stop N_8 N_9 B5 Gnd Vdd new_DFF  
Xnew_DFF_5 Stop N_10 N_11 B4 Gnd Vdd new_DFF  
Xnew_DFF_6 Stop T4 N_12 B1 Gnd Vdd new_DFF  
Xnew_DFF_7 Stop T8 N_13 B2 Gnd Vdd new_DFF  
Xnew_DFF_8 Stop T12 N_14 B3 Gnd Vdd new_DFF  
Xencoder8x3_1 B1 B2 B3 B4 B5 B6 B7 D0 D1 D2 Gnd Vdd encoder8x3  
Xbuffer_1 T3 T4 Gnd Vdd buffer  
Xbuffer_2 T4 T5 Gnd Vdd buffer  
Xbuffer_3 T5 T6 Gnd Vdd buffer  
Xbuffer_4 T2 T3 Gnd Vdd buffer  
Xbuffer_5 T1 T2 Gnd Vdd buffer  
Xbuffer_10 N_16 N_17 Gnd Vdd buffer  
Xbuffer_6 Start T1 Gnd Vdd buffer  
Xbuffer_11 N_15 N_16 Gnd Vdd buffer  
Xbuffer_7 T6 T7 Gnd Vdd buffer  
Xbuffer_12 T8 N_15 Gnd Vdd buffer  
Xbuffer_8 T7 T8 Gnd Vdd buffer  
Xbuffer_9 N_17 T12 Gnd Vdd buffer  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.tran 0.01p 100p start=0
.include "C:\Users\makif\Desktop\130tech\130nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart Start 0 BIT ({0001111111} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=9.8n)
VStop Stop 0 BIT ({0111000000} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)

*VClock Stop 0 PULSE (0 3.3V 0 0.001n 0.001n 1n 2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)


.tran 0.1n 100n start=0
.print tran   v(Start,Gnd) v(T4,Gnd) v(T8,Gnd) v(T12,Gnd) v(Stop,Gnd) 
*v(T2,Gnd) v(T3,Gnd) v(T4,Gnd) v(T5,Gnd) v(T6,Gnd)v(T7,Gnd) 
*.print tran   v(D1,Gnd)
* v(D1,Gnd) v(D2,Gnd)
.print tran   v(B1,Gnd) v(B2,Gnd) v(B3,Gnd)
* v(B1,Gnd) v(B2,Gnd) v(B3,Gnd) v(B4,Gnd) v(B5,Gnd) v(B6,Gnd)
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)
.end

