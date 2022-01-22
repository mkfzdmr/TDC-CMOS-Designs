* SPICE export by:  SEDIT 13.00
* Export time:      Sat Feb 02 23:17:56 2019
* Design:           Counter_TDC
* Cell:             dff_deneme
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
.subckt DFFC ClB Clk Data Q QB Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: LogicGates / Cell: DFFC / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: D Flip-Flop with Clear
* Date: 6/11/2007 10:39:34 PM
* Revision: 43

* Design: LogicGates / Cell: DFFC / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: D Flip-Flop with Clear
* Date: 6/11/2007 10:39:34 PM
* Revision: 43

*-------- Devices: SPICE.ORDER > 0 --------
MN1 5 Data Gnd 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN2 4 CB 5 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN3 7 10 8 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN4 4 C 7 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN27 14 Q Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN11 CB Clk Gnd 0 NMOS W=1u L=130n AS=900f PS=3.8u AD=900f PD=3.8u 
MN12 C CB Gnd 0 NMOS W=1u L=130n AS=900f PS=3.8u AD=900f PD=3.8u 
MN13 8 ClB Gnd 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN14 10 4 Gnd 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN15 Q 12 Gnd 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN16 12 CB QB 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN17 QB ClB 14 0 NMOS W=2.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MN18 12 C 13 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MN19 13 10 Gnd 0 NMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MP1 4 C 3 Vdd PMOS W=2.15u L=130n AS=1.935p PS=6.1u AD=1.935p PD=6.1u 
MP2 3 Data Vdd Vdd PMOS W=2.15u L=130n AS=1.935p PS=6.1u AD=1.935p PD=6.1u 
MP3 4 CB 6 Vdd PMOS W=1.75u L=130n AS=1.575p PS=5.3u AD=1.575p PD=5.3u 
MP11 CB Clk Vdd Vdd PMOS W=1u L=130n AS=900f PS=3.8u AD=900f PD=3.8u 
MP4 6 10 Vdd Vdd PMOS W=1.75u L=130n AS=1.575p PS=5.3u AD=1.575p PD=5.3u 
MP12 C CB Vdd Vdd PMOS W=1u L=130n AS=900f PS=3.8u AD=900f PD=3.8u 
MP13 4 CB 9 Vdd PMOS W=1.4u L=130n AS=1.26p PS=4.6u AD=1.26p PD=4.6u 
MP14 10 4 Vdd Vdd PMOS W=1.9u L=130n AS=1.71p PS=5.6u AD=1.71p PD=5.6u 
MP17 Q 12 Vdd Vdd PMOS W=3.4u L=130n AS=3.06p PS=8.6u AD=3.06p PD=8.6u 
MP9 9 ClB Vdd Vdd PMOS W=1.5u L=130n AS=1.35p PS=4.8u AD=1.35p PD=4.8u 
MP22 QB Q Vdd Vdd PMOS W=3u L=130n AS=2.7p PS=7.8u AD=2.7p PD=7.8u 
MP26 12 CB 11 Vdd PMOS W=2u L=130n AS=1.8p PS=5.8u AD=1.8p PD=5.8u 
MP27 11 10 Vdd Vdd PMOS W=2u L=130n AS=1.8p PS=5.8u AD=1.8p PD=5.8u 
MP28 12 C QB Vdd PMOS W=2u L=130n AS=1.8p PS=5.8u AD=1.8p PD=5.8u 
MP29 QB ClB Vdd Vdd PMOS W=3u L=130n AS=2.7p PS=7.8u AD=2.7p PD=7.8u 
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

.subckt new_DFF Clk D INV_Q Q Gnd Vdd  
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C  
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C  
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C  
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C  
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XDFFC_1 Vdd Clk In Out2 N_1 Gnd Vdd DFFC  
Xnew_DFF_1 Clk In N_2 Out1 Gnd Vdd new_DFF  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\TSMC_0.18u_cmos.md"
*.include "C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\SCN_0.25u_CMOS.md"
*.include "C:\Users\Hp\Google Drive\TEZ ÇALIÞMAM\çizim\Ýleri VLSI\VLSI_tech_files\130nm.md"
*.tran 0.01p 100p start=0


*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({0011101100} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=6n)
*VStop Stop 0 BIT ({1110000000} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)

VClock Clk 0 dc 0 PULSE (0 3.3V 0 0.001n 0.001n 5n 10n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.00000001n 0.00000001n 0.1n 0.02n)
*VIn In 0 dc 0 PULSE (0 3.3 0 0.1p 0.1p 10p 20p)

.tran 0.1n 100n start=0
.print tran   v(In,Gnd) v(Out1,Gnd)  v(Clk,Gnd) 
.end

