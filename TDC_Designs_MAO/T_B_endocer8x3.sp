* SPICE export by:  SEDIT 13.00
* Export time:      Mon Jan 28 14:57:13 2019
* Design:           Counter_TDC
* Cell:             T_B_endocer8x3
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
.subckt new_INV In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out In Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out In Vdd Vdd PMOS W=2.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends


********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER == 0 --------
Xnew_INV_1 N_3 D0 Gnd Vdd new_INV  
Xnew_INV_2 N_2 D1 Gnd Vdd new_INV  
Xnew_INV_3 N_1 D2 Gnd Vdd new_INV  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_10 N_3 B2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_1 N_1 B6 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_11 N_2 B1 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_2 B6 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_12 N_3 B0 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_3 B6 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_1 B5 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 N_2 B5 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_6 N_1 B4 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_7 N_3 B4 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_8 N_1 B3 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_9 N_2 B2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 N_1 Gnd Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 N_2 Gnd Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 N_3 Gnd Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  

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
VGiris B1 Gnd 3.3V
VGiris2 B4 Gnd 3.3V
.tran 1n 1000n start=0
.print tran   v(B0,Gnd)  v(D0,Gnd) v(D1,Gnd) v(D2,Gnd) 
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)
.end

