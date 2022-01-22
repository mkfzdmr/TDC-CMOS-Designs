* SPICE export by:  SEDIT 13.00
* Export time:      Sun Feb 10 16:03:17 2019
* Design:           Counter_TDC
* Cell:             deneme
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
.subckt Buf2 In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: Buf2 / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2x Buffer
* Date: 6/13/2007 11:17:11 PM
* Revision: 33

*-------- Devices: SPICE.ORDER > 0 --------
MN1 1 In Gnd Gnd NMOS W=1.5u  L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u  
MN2 Out 1 Gnd Gnd NMOS W=1.5u  L=45n M=4 AS=7.625p PS=21.1u AD=6.25p PD=15u  
MP1 1 In Vdd Vdd PMOS W=1.5u  L=45n M=4 AS=7.625p PS=21.1u AD=6.25p PD=15u  
MP2 Out 1 Vdd Vdd PMOS W=1.5u  L=45n M=8 AS=13.875p PS=36.1u AD=12.5p PD=30u  
.ends

.subckt buffer In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 N_1 In Gnd 0 NMOS W=1.5u  L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 Out N_1 Gnd 0 NMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP1 N_1 In Vdd Vdd PMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out N_1 Vdd Vdd PMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt buffer_new In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 N_1 In Gnd 0 NMOS W=1.5u  L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN2 Out In Gnd 0 NMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP1 N_1 N_1 Vdd Vdd PMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
MP2 Out N_1 Vdd Vdd PMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
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
MN1 Out A Gnd 0 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out A Vdd Vdd PMOS W=1.5u  L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt new_INV In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MN1 Out In Gnd 0 NMOS W=1.5u  L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MP1 Out In Vdd Vdd PMOS W=1.5u  L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u 
.ends

.subckt S_T_3 In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 Out In N_3 N_3 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_3 In N_4 N_4 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_4 In Gnd Gnd NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 Vdd N_3 N_4 N_4 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 Vdd Out N_3 N_3 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 N_1 In Vdd Vdd PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 N_2 In N_1 N_1 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 Out In N_2 N_2 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_4 Gnd N_2 N_1 N_1 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_5 Gnd Out N_2 N_2 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt S_T_4 In Out Vcc Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 N_4 Vcc In In NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 In In N_5 N_5 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_5 N_5 N_4 N_4 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_4 N_5 Vcc Vcc NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 Out Vcc N_6 N_6 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_6 N_6 N_4 Gnd Gnd NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_7 Vcc Out N_6 N_6 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 In In N_1 N_1 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 N_1 N_1 N_2 N_2 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 N_2 N_1 Vcc Vcc PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_4 N_2 Vcc In In PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_5 N_3 N_2 Vdd Vdd PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_6 Out Vcc N_3 N_3 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_7 Vcc Out N_3 N_3 PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt schimit_trigger In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 Out In N_2 N_2 NMOS W=20u L=45n AS=18p PS=41.8u AD=18p PD=41.8u  
MNMOS_2 N_2 In Gnd 0 NMOS W=400n L=45n AS=360f PS=2.6u AD=360f PD=2.6u 
MNMOS_3 N_2 Out Vdd Vdd NMOS W=400n L=45n AS=360f PS=2.6u AD=360f PD=2.6u  
MPMOS_1 N_1 In Vdd Vdd PMOS W=400n L=45n AS=360f PS=2.6u AD=360f PD=2.6u 
MPMOS_2 Out In N_1 Out PMOS W=400n L=45n AS=360f PS=2.6u AD=360f PD=2.6u  
MPMOS_3 N_1 Out Gnd Gnd PMOS W=2u L=45n AS=1.8p PS=5.8u AD=1.8p PD=5.8u  
.ends

.subckt schimit_trigger_2 In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 N_1 In Gnd Out NMOS W=390n L=130n AS=351f PS=2.58u AD=351f PD=2.58u  
MNMOS_2 Out N_1 Gnd N_1 NMOS W=390n L=130n AS=351f PS=2.58u AD=351f PD=2.58u  
MPMOS_1 N_1 In Vdd Out PMOS W=390n L=130n AS=351f PS=2.58u AD=351f PD=2.58u  
MPMOS_2 Out N_1 Vdd N_1 PMOS W=390n L=130n AS=351f PS=2.58u AD=351f PD=2.58u  
.ends

.subckt schimit_trigger_new In Out Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 Out In N_2 0 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_2 N_2 In Gnd 0 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MNMOS_3 N_2 Out Vdd 0 NMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_1 N_1 In Vdd Vdd PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_2 Out In N_1 Vdd PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MPMOS_3 N_1 Out Gnd Vdd PMOS W=1.5u  L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XINV_1 In N_1 Gnd Vdd INV  
Xnew_INV_1 In N_2 Gnd Vdd new_INV  
XINV_2 N_1 Out5 Gnd Vdd INV  
Xnew_INV_2 N_2 Out4 Gnd Vdd new_INV  
XBuf2_1 In Out1 Gnd Vdd Buf2  
Xbuffer_new_1 In Out3 Gnd Vdd buffer_new  
Xbuffer_1 In Out2 Gnd Vdd buffer  
Xschimit_trigger_1 In Out6 Gnd Vdd schimit_trigger  
Xschimit_trigger_new_1 In Out10 Gnd Vdd schimit_trigger_new  
Xschimit_trigger_2_1 In Out9 Gnd Vdd schimit_trigger_2  
XS_T_3_1 In Out7 Gnd Vdd S_T_3  
XS_T_4_1 In Out8 Vcc Gnd Vdd S_T_4  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 1V
VPower2 Vcc Gnd 1V
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.tran 0.01p 100p start=0
.include "C:\Users\makif\Desktop\130tech\45nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({0001111111} pw=1n lt=1n ht=1n on=1 off=0 rt=0.001n ft=0.001n delay=0)
*ilk 2 si 99.75n
*ilk 3 :99.64n

*VStop Stop 0 BIT ({0111000000} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)

*VClock Stop 0 PULSE (0 3.3V 0 0.001n 0.001n 1n 2n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)


.tran 0.01n 10n start=0
.print tran   v(In,Gnd) v(Out6,Gnd) v(Out7,Gnd) v(Out8,Gnd)   v(Out10,Gnd) 
.print tran   v(In,Gnd) v(Out1,Gnd) v(Out2,Gnd) v(Out3,Gnd) v(Out4,Gnd)  v(Out5,Gnd) 
.end

