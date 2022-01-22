* SPICE export by:  SEDIT 13.00
* Export time:      Sat Feb 02 00:10:54 2019
* Design:           Counter_TDC
* Cell:             S_T_4
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

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 N_4 Vcc In In NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 In In N_5 N_5 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_5 N_5 N_4 N_4 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_4 N_5 Vcc Vcc NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 Out Vcc N_6 N_6 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_6 N_6 N_4 Gnd Gnd NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_7 Vcc Out N_6 N_6 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 In In N_1 N_1 PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 N_1 N_1 N_2 N_2 PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 N_2 N_1 Vcc Vcc PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_4 N_2 Vcc In In PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_5 N_3 N_2 Vdd Vdd PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_6 Out Vcc N_3 N_3 PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_7 Vcc Out N_3 N_3 PMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
VPower2 Vcc Gnd 1V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.tran 0.01p 100p start=0


*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({0011111100} pw=10p lt=10p ht=10p on=3.3 off=0 rt=0.01p ft=0.01p delay=0)
*VStop Stop 0 BIT ({1110000000} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.01n ft=0.01n delay=0)

*VClock Clock 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 0.6n 1.2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)
*VStart In Gnd BIT ({0011101100} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)
*.tran 0.1n 100n start=0
.tran 0.1p 100p start=0
.print tran   v(In,Gnd) v(Out,Gnd) 
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)
.end

