* SPICE export by:  SEDIT 13.00
* Export time:      Sat Feb 09 16:01:00 2019
* Design:           Counter_TDC
* Cell:             SR
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
MNMOS_1 N_3 S Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_2 Q N_3 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_3 Gnd Q N_3 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_4 Gnd N_4 Q 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_1 N_1 S Vdd Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_2 Q N_3 N_2 Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_3 N_1 Q N_3 Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_4 Vdd N_4 N_2 Vdd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
.tran 0.1n 100n start=0
.print tran v(R,Gnd) v(S,Gnd) v(Q,Gnd)


*VS S 0 dc 0 PULSE (0 3.3 0 0.1n 0.1n 10n 10n)
*VR R 0 dc 0 PULSE (0 3.3 15n 0.1n 0.1n 10n 10n)

VStart S 0 BIT ({0100111111} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)
VStopt R 0 BIT ({0001100111} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)
*VR R 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)
*VS S 0 dc 0 PULSE (0 3.3 15p 0.1p 0.1p 10p 20p)
.end

