* SPICE export by:  S-Edit 16.30
* Export time:      Sun May 05 18:00:56 2019
* Design:           Counter_TDC
* Cell:             gated_ring_TDC
* Interface:        view0
* View:             view0
* View type:        connectivity
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty cells: yes
* Exclude .model:   no
* Exclude .end:     no
* Exclude simulator commands:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\makif\Google Drive\TEZ ÇALIÞMAM\çizim\Counter_TDC\Counter_TDC
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********

*************** Subcircuits *****************
.subckt DFFC ClB Clk Data Q QB Gnd Vdd 
* Design: LogicGates / Cell: DFFC / View: Name / Page: P2
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: D Flip-Flop with Clear
* Date: 06/11/07 22:39:34
* Revision: 43 $ $x=7600 $y=600 $w=3600 $h=1200
* Design: LogicGates / Cell: DFFC / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: D Flip-Flop with Clear
* Date: 06/11/07 22:39:34
* Revision: 43 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 5 Data Gnd 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=4700 $y=3000 $w=400 $h=600
MN2 4 CB 5 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=4700 $y=3800 $w=400 $h=600
MN3 7 10 8 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=6100 $y=3000 $w=400 $h=600
MN4 4 C 7 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=6100 $y=3800 $w=400 $h=600
MN11 CB Clk Gnd 0 NMOS W=1u L=45n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=1100 $y=2700 $w=400 $h=600
MN12 C CB Gnd 0 NMOS W=1u L=45n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=2500 $y=2700 $w=400 $h=600
MN13 8 ClB Gnd 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=6100 $y=2200 $w=400 $h=600
MN14 10 4 Gnd 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=7600 $y=2500 $w=400 $h=600
MN15 Q 12 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6800 $y=3600 $w=400 $h=600
MN16 12 CB QB 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=4200 $y=3500 $w=400 $h=600
MN17 QB ClB 14 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5700 $y=2700 $w=400 $h=600
MN18 12 C 13 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=2700 $y=3500 $w=400 $h=600
MN19 13 10 Gnd 0 NMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=2700 $y=2700 $w=400 $h=600
MN27 14 Q Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5700 $y=1900 $w=400 $h=600
MP1 4 C 3 Vdd PMOS W=2.15u L=45n AS=1.935p PS=6.1u AD=1.935p PD=6.1u $ $x=4700 $y=4600 $w=400 $h=600
MP2 3 Data Vdd Vdd PMOS W=2.15u L=45n AS=1.935p PS=6.1u AD=1.935p PD=6.1u $ $x=4700 $y=5400 $w=400 $h=600
MP3 4 CB 6 Vdd PMOS W=1.75u L=45n AS=1.575p PS=5.3u AD=1.575p PD=5.3u $ $x=6500 $y=4600 $w=400 $h=600 $m
MP4 6 10 Vdd Vdd PMOS W=1.75u L=45n AS=1.575p PS=5.3u AD=1.575p PD=5.3u $ $x=6100 $y=5400 $w=400 $h=600
MP9 9 ClB Vdd Vdd PMOS W=1.5u L=45n AS=1.35p PS=4.8u AD=1.35p PD=4.8u $ $x=7600 $y=5400 $w=400 $h=600
MP11 CB Clk Vdd Vdd PMOS W=1u L=45n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=1100 $y=3300 $w=400 $h=600
MP12 C CB Vdd Vdd PMOS W=1u L=45n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=2500 $y=3300 $w=400 $h=600
MP13 4 CB 9 Vdd PMOS W=1.4u L=45n AS=1.26p PS=4.6u AD=1.26p PD=4.6u $ $x=7600 $y=4600 $w=400 $h=600
MP14 10 4 Vdd Vdd PMOS W=1.9u L=45n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=7600 $y=3300 $w=400 $h=600
MP17 Q 12 Vdd Vdd PMOS W=3.4u L=45n AS=3.06p PS=8.6u AD=3.06p PD=8.6u $ $x=6800 $y=4200 $w=400 $h=600
MP22 QB Q Vdd Vdd PMOS W=3u L=45n AS=2.7p PS=7.8u AD=2.7p PD=7.8u $ $x=5700 $y=5100 $w=400 $h=600
MP26 12 CB 11 Vdd PMOS W=2u L=45n AS=1.8p PS=5.8u AD=1.8p PD=5.8u $ $x=2700 $y=4300 $w=400 $h=600
MP27 11 10 Vdd Vdd PMOS W=2u L=45n AS=1.8p PS=5.8u AD=1.8p PD=5.8u $ $x=2700 $y=5100 $w=400 $h=600
MP28 12 C QB Vdd PMOS W=2u L=45n AS=1.8p PS=5.8u AD=1.8p PD=5.8u $ $x=4200 $y=4300 $w=400 $h=600
MP29 QB ClB Vdd Vdd PMOS W=3u L=45n AS=2.7p PS=7.8u AD=2.7p PD=7.8u $ $x=4200 $y=5100 $w=400 $h=600
.ends

.subckt INV A Out Gnd Vdd 
* Design: LogicGates / Cell: INV / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 06/13/07 23:17:11
* Revision: 64 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=45nm L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=45nm L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4600 $y=3600 $w=400 $h=600
.ends

.subckt NAND2C A B Out1 Out2 Gnd Vdd 
* Design: LogicGates / Cell: NAND2C / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NAND with complementary output.
* Date: 06/13/07 23:17:11
* Revision: 62 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out1 A 1 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=3500 $y=3600 $w=400 $h=600
MN2 1 B Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=3500 $y=2800 $w=400 $h=600
MN3 Out2 Out1 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5900 $y=3600 $w=400 $h=600
MP1 Out1 A Vdd Vdd PMOS W=1.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=3500 $y=4400 $w=400 $h=600
MP2 Out1 B Vdd Vdd PMOS W=1.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4700 $y=4400 $w=400 $h=600
MP3 Out2 Out1 Vdd Vdd PMOS W=1.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=5900 $y=4400 $w=400 $h=600
.ends

.subckt VCDL_inv Enable In INV_Enable Out Gnd Vdd 
MNMOS_1 Out In N_1 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=500 $w=400 $h=600
MNMOS_2 N_1 Enable Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=-100 $w=400 $h=600
MPMOS_1 Out In N_2 Vdd PMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1100 $w=400 $h=600
MPMOS_2 N_2 INV_Enable Vdd Vdd PMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=100 $y=1700 $w=400 $h=600
.ends

.subckt Counter In Q0 Q1 Q2 Q3 Gnd Vdd 
XDFFC_1 Vdd In N_1 Q0 N_1 Gnd Vdd DFFC $ $x=900 $y=-1000 $w=800 $h=1000
XDFFC_2 Vdd N_1 N_2 Q1 N_2 Gnd Vdd DFFC $ $x=2300 $y=-1000 $w=800 $h=1000
XDFFC_3 Vdd N_2 N_3 Q2 N_3 Gnd Vdd DFFC $ $x=3600 $y=-1000 $w=800 $h=1000
XDFFC_4 Vdd N_3 N_4 Q3 N_4 Gnd Vdd DFFC $ $x=4900 $y=-1000 $w=800 $h=1000
.ends

.subckt encoder8x3 B1 B2 B3 B4 B5 B6 B7 D0 D1 D2 Gnd Vdd 
XINV_1 N_22 D0 Gnd Vdd INV $ $x=3850 $y=400 $w=900 $h=600
XINV_2 N_21 D1 Gnd Vdd INV $ $x=3850 $y=-300 $w=900 $h=600
XINV_3 N_23 D2 Gnd Vdd INV $ $x=3850 $y=-1000 $w=900 $h=600
XINV_4 B2 N_1 Gnd Vdd INV $ $x=-2850 $y=-6600 $w=900 $h=600
XINV_5 B3 N_4 Gnd Vdd INV $ $x=-2750 $y=-5700 $w=900 $h=600
XINV_6 B4 N_7 Gnd Vdd INV $ $x=-2850 $y=-4300 $w=900 $h=600
XINV_7 B5 N_10 Gnd Vdd INV $ $x=-3850 $y=-3400 $w=900 $h=600
XINV_8 B6 N_13 Gnd Vdd INV $ $x=-3850 $y=-2400 $w=900 $h=600
XINV_9 B7 N_16 Gnd Vdd INV $ $x=-3950 $y=-1400 $w=900 $h=600
XNAND2C_1 N_1 B1 N_2 N_3 Gnd Vdd NAND2C $ $x=-1700 $y=-6700 $w=1200 $h=600
XNAND2C_2 N_4 B2 N_5 N_6 Gnd Vdd NAND2C $ $x=-1700 $y=-5800 $w=1200 $h=600
XNAND2C_3 N_7 B3 N_8 N_9 Gnd Vdd NAND2C $ $x=-1800 $y=-4600 $w=1200 $h=600
XNAND2C_4 N_10 B4 N_11 N_12 Gnd Vdd NAND2C $ $x=-2800 $y=-3500 $w=1200 $h=600
XNAND2C_5 N_13 B5 N_14 N_15 Gnd Vdd NAND2C $ $x=-2800 $y=-2500 $w=1200 $h=600
XNAND2C_6 N_16 B6 N_17 N_18 Gnd Vdd NAND2C $ $x=-2900 $y=-1500 $w=1200 $h=600
XNAND2C_7 Vdd B7 N_19 N_20 Gnd Vdd NAND2C $ $x=-2900 $y=-700 $w=1200 $h=600
MNMOS_1 N_23 N_20 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-1400 $w=400 $h=600
MNMOS_2 N_21 N_20 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-1400 $w=400 $h=600
MNMOS_3 N_22 N_20 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-1400 $w=400 $h=600
MNMOS_4 N_23 N_18 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-2400 $w=400 $h=600
MNMOS_5 N_21 N_18 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-2400 $w=400 $h=600
MNMOS_6 N_23 N_15 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-3400 $w=400 $h=600
MNMOS_7 N_22 N_15 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-3400 $w=400 $h=600
MNMOS_8 N_23 N_12 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-4400 $w=400 $h=600
MNMOS_9 N_21 N_9 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-5200 $w=400 $h=600
MNMOS_10 N_22 N_9 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-5200 $w=400 $h=600
MNMOS_11 N_21 N_6 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-6200 $w=400 $h=600
MNMOS_12 N_22 N_3 Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-7000 $w=400 $h=600
MPMOS_1 N_23 Gnd Vdd Vdd PMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=800 $w=400 $h=600
MPMOS_2 N_21 Gnd Vdd Vdd PMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=800 $w=400 $h=600
MPMOS_3 N_22 Gnd Vdd Vdd PMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=800 $w=400 $h=600
.ends

.subckt new_DFF Clk D INV_Q Q Gnd Vdd 
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C $ $x=-2900 $y=3500 $w=1200 $h=600
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C $ $x=-1000 $y=3700 $w=1200 $h=600
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C $ $x=-1000 $y=4900 $w=1200 $h=600
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C $ $x=1000 $y=3900 $w=1200 $h=600
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C $ $x=1000 $y=5100 $w=1200 $h=600
.ends


***** Top Level *****
*XCounter_1 T7 Q0 Q1 Q2 Q3 Gnd Vdd Counter $ $x=13000 $y=1000 $w=1800 $h=1400
Xencoder8x3_1 B1 B2 B3 B4 B5 B6 B7 D0 D1 D2 Gnd Vdd encoder8x3 $ $x=5400 $y=-3650 $w=800 $h=500 $r=90
Xnew_DFF_2 Enable T7 N_1 B7 Gnd Vdd new_DFF $ $x=8650 $y=-2300 $w=300 $h=800 $r=90
Xnew_DFF_3 Enable T6 N_2 B6 Gnd Vdd new_DFF $ $x=7350 $y=-2300 $w=300 $h=800 $r=90
Xnew_DFF_4 Enable T5 N_3 B5 Gnd Vdd new_DFF $ $x=6350 $y=-2300 $w=300 $h=800 $r=90
Xnew_DFF_5 Enable T4 N_4 B4 Gnd Vdd new_DFF $ $x=5450 $y=-2300 $w=300 $h=800 $r=90
Xnew_DFF_6 Enable T1 N_5 B1 Gnd Vdd new_DFF $ $x=2650 $y=-2300 $w=300 $h=800 $r=90
Xnew_DFF_7 Enable T2 N_6 B2 Gnd Vdd new_DFF $ $x=3650 $y=-2300 $w=300 $h=800 $r=90
Xnew_DFF_8 Enable T3 N_7 B3 Gnd Vdd new_DFF $ $x=4550 $y=-2300 $w=300 $h=800 $r=90
XVCDL_inv_1 Enable T7 INV_Enable T1 Gnd Vdd VCDL_inv $ $x=400 $y=600 $w=1800 $h=1600
XVCDL_inv_2 Enable T1 INV_Enable T2 Gnd Vdd VCDL_inv $ $x=2200 $y=600 $w=1800 $h=1600
XVCDL_inv_3 Enable T2 INV_Enable T3 Gnd Vdd VCDL_inv $ $x=4000 $y=600 $w=1800 $h=1600
XVCDL_inv_4 Enable T3 INV_Enable T4 Gnd Vdd VCDL_inv $ $x=5800 $y=600 $w=1800 $h=1600
XVCDL_inv_5 Enable T4 INV_Enable T5 Gnd Vdd VCDL_inv $ $x=7600 $y=600 $w=1800 $h=1600
XVCDL_inv_6 Enable T5 INV_Enable T6 Gnd Vdd VCDL_inv $ $x=9400 $y=600 $w=1800 $h=1600
XVCDL_inv_7 Enable T6 INV_Enable T7 Gnd Vdd VCDL_inv $ $x=11200 $y=600 $w=1800 $h=1600

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********


VPower Vdd Gnd 1V


.include "C:\Users\makif\Desktop\130tech\45nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)


VStop Enable 0 BIT ({0011001100} pw=1n lt=1n ht=1n on=1 off=0 rt=0.01n ft=0.01n delay=0)
VStop2 INV_Enable 0 BIT ({1100110011} pw=1n lt=1n ht=1n on=1 off=0 rt=0.01n ft=0.01n delay=0)

.tran 0.001n 10n start=0

.print tran    v(T1,Gnd) v(T2,Gnd) v(T3,Gnd) v(T4,Gnd) v(T5,Gnd) v(T6,Gnd) v(T7,Gnd) v(Enable,Gnd) 
*v(INV_Enable,Gnd)
*.print tran    v(Q0,Gnd) v(Q1,Gnd) v(Q2,Gnd) v(Q3,Gnd)

*.print tran    v(B1,Gnd) v(B2,Gnd) v(B3,Gnd) v(B4,Gnd) v(B5,Gnd) v(B6,Gnd) v(B7,Gnd)
*.print tran    v(D0,Gnd) v(D1,Gnd) v(D2,Gnd) 


.power VPower



.end

