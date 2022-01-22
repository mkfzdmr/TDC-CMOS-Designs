* SPICE export by:  SEDIT 13.00
* Export time:      Fri Feb 01 23:35:52 2019
* Design:           Counter_TDC
* Cell:             S_T_3
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
MNMOS_1 Out In N_3 N_3 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_3 In N_4 N_4 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_4 In Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 Vdd N_3 N_4 N_4 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 Vdd Out N_3 N_3 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 N_1 In Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 N_2 In N_1 N_1 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 Out In N_2 N_2 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_4 Gnd N_2 N_1 N_1 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_5 Gnd Out N_2 N_2 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.tran 0.01p 100p start=0


*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)


*VStop Stop 0 BIT ({1110000000} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.01n ft=0.01n delay=0)

*VClock Clock 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 0.6n 1.2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)

VStart In Gnd BIT ({0011101100} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)
.tran 0.1n 100n start=0
.print tran   v(In,Gnd) v(Out,Gnd) 
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)
.end

