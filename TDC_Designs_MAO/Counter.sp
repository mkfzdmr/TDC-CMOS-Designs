* SPICE export by:  SEDIT 13.00
* Export time:      Sun Jan 27 21:32:20 2019
* Design:           Counter_TDC
* Cell:             Counter
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

.subckt new_DFF Clk D INV_Q Q Gnd Vdd  
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C  
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C  
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C  
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C  
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

Xnew_DFF_1 Clock Start N_1 time_interval Gnd Vdd new_DFF  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"

*.tran 0.01p 100p start=0


*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart Start 0 BIT ({1011110001} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)
*VStop Stop 0 BIT ({0000011111} pw=100n lt=100n ht=100n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VClock Clock 0 dc 0 PULSE (0 3.3V 0 0.1n 0.1n 60n 120n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)

.tran 1n 1000n start=0
.print tran   v(Clock,Gnd)  v(time_interval,Gnd) v(Start,Gnd)
*v(Start,Gnd) v(Stop,Gnd)
* v(INV_Q,Gnd)
.end

