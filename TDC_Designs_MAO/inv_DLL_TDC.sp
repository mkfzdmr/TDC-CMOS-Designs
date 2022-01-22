* SPICE export by:  S-Edit 16.30
* Export time:      Tue Mar 05 10:01:21 2019
* Design:           Counter_TDC
* Cell:             inv_DLL_TDC
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
.subckt INV A Out Gnd Vdd 
* Design: LogicGates / Cell: INV / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 06/13/07 23:17:11
* Revision: 64 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=2.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4600 $y=3600 $w=400 $h=600
.ends

.subckt NAND2C A B Out1 Out2 Gnd Vdd 
* Design: LogicGates / Cell: NAND2C / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 2 Input NAND with complementary output.
* Date: 06/13/07 23:17:11
* Revision: 62 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out1 A 1 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=3500 $y=3600 $w=400 $h=600
MN2 1 B Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=3500 $y=2800 $w=400 $h=600
MN3 Out2 Out1 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5900 $y=3600 $w=400 $h=600
MP1 Out1 A Vdd Vdd PMOS W=2.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=3500 $y=4400 $w=400 $h=600
MP2 Out1 B Vdd Vdd PMOS W=2.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4700 $y=4400 $w=400 $h=600
MP3 Out2 Out1 Vdd Vdd PMOS W=2.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=5900 $y=4400 $w=400 $h=600
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
MNMOS_1 N_23 N_20 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-1400 $w=400 $h=600
MNMOS_2 N_21 N_20 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-1400 $w=400 $h=600
MNMOS_3 N_22 N_20 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-1400 $w=400 $h=600
MNMOS_4 N_23 N_18 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-2400 $w=400 $h=600
MNMOS_5 N_21 N_18 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-2400 $w=400 $h=600
MNMOS_6 N_23 N_15 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-3400 $w=400 $h=600
MNMOS_7 N_22 N_15 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-3400 $w=400 $h=600
MNMOS_8 N_23 N_12 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=-4400 $w=400 $h=600
MNMOS_9 N_21 N_9 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-5200 $w=400 $h=600
MNMOS_10 N_22 N_9 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-5200 $w=400 $h=600
MNMOS_11 N_21 N_6 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=-6200 $w=400 $h=600
MNMOS_12 N_22 N_3 Gnd 0 NMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=-7000 $w=400 $h=600
MPMOS_1 N_23 Gnd Vdd Vdd PMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=-800 $y=800 $w=400 $h=600
MPMOS_2 N_21 Gnd Vdd Vdd PMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=400 $y=800 $w=400 $h=600
MPMOS_3 N_22 Gnd Vdd Vdd PMOS W=2.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=1700 $y=800 $w=400 $h=600
.ends

.subckt new_DFF Clk D INV_Q Q Gnd Vdd 
XNAND2C_1 D D N_1 N_2 Gnd Vdd NAND2C $ $x=-2900 $y=3500 $w=1200 $h=600
XNAND2C_2 Clk N_1 N_3 N_4 Gnd Vdd NAND2C $ $x=-1000 $y=3700 $w=1200 $h=600
XNAND2C_3 D Clk N_5 N_6 Gnd Vdd NAND2C $ $x=-1000 $y=4900 $w=1200 $h=600
XNAND2C_4 Q N_3 INV_Q N_7 Gnd Vdd NAND2C $ $x=1000 $y=3900 $w=1200 $h=600
XNAND2C_5 INV_Q N_5 Q N_8 Gnd Vdd NAND2C $ $x=1000 $y=5100 $w=1200 $h=600
.ends


***** Top Level *****
Xencoder8x3_1 B1 B2 B3 B4 B5 B6 B7 D0 D1 D2 Gnd Vdd encoder8x3 $ $x=800 $y=-2750 $w=800 $h=500 $r=90
XINV_1 Start N_1 Gnd Vdd INV $ $x=-4250 $y=1000 $w=900 $h=600
XINV_2 N_1 N_2 Gnd Vdd INV $ $x=-3350 $y=1000 $w=900 $h=600
XINV_3 N_2 T1 Gnd Vdd INV $ $x=-2450 $y=1000 $w=900 $h=600
XINV_4 T1 N_3 Gnd Vdd INV $ $x=-1550 $y=1000 $w=900 $h=600
XINV_5 N_3 N_4 Gnd Vdd INV $ $x=-650 $y=1000 $w=900 $h=600
XINV_6 N_4 T2 Gnd Vdd INV $ $x=250 $y=1000 $w=900 $h=600
XINV_7 T2 N_5 Gnd Vdd INV $ $x=1150 $y=1000 $w=900 $h=600
XINV_8 N_5 N_6 Gnd Vdd INV $ $x=2050 $y=1000 $w=900 $h=600
XINV_9 N_6 T3 Gnd Vdd INV $ $x=2950 $y=1000 $w=900 $h=600
XINV_10 T3 N_7 Gnd Vdd INV $ $x=3850 $y=1000 $w=900 $h=600
XINV_11 N_7 N_8 Gnd Vdd INV $ $x=4750 $y=1000 $w=900 $h=600
XINV_12 N_8 T4 Gnd Vdd INV $ $x=5650 $y=1000 $w=900 $h=600
XINV_13 T4 N_9 Gnd Vdd INV $ $x=6550 $y=1000 $w=900 $h=600
XINV_14 N_9 N_10 Gnd Vdd INV $ $x=7450 $y=1000 $w=900 $h=600
XINV_15 N_10 T5 Gnd Vdd INV $ $x=8350 $y=1000 $w=900 $h=600
XINV_16 T5 N_11 Gnd Vdd INV $ $x=9250 $y=1000 $w=900 $h=600
XINV_17 N_11 N_12 Gnd Vdd INV $ $x=10150 $y=1000 $w=900 $h=600
XINV_18 N_12 T6 Gnd Vdd INV $ $x=11050 $y=1000 $w=900 $h=600
XINV_19 T6 N_13 Gnd Vdd INV $ $x=11950 $y=1000 $w=900 $h=600
XINV_20 N_13 N_14 Gnd Vdd INV $ $x=12850 $y=1000 $w=900 $h=600
XINV_21 N_14 T7 Gnd Vdd INV $ $x=13750 $y=1000 $w=900 $h=600
XINV_22 N_22 B1 Gnd Vdd INV $ $x=-2000 $y=-2050 $w=600 $h=900 $r=90
XINV_24 N_25 B3 Gnd Vdd INV $ $x=-300 $y=-1850 $w=600 $h=900 $r=90
XINV_25 N_19 B5 Gnd Vdd INV $ $x=1500 $y=-1750 $w=600 $h=900 $r=90
XINV_27 N_16 B7 Gnd Vdd INV $ $x=4000 $y=-1950 $w=600 $h=900 $r=90
Xnew_DFF_2 Stop T7 N_15 N_16 Gnd Vdd new_DFF $ $x=4050 $y=-1100 $w=300 $h=800 $r=90
Xnew_DFF_3 Stop T6 N_17 B6 Gnd Vdd new_DFF $ $x=2750 $y=-1100 $w=300 $h=800 $r=90
Xnew_DFF_4 Stop T5 N_18 N_19 Gnd Vdd new_DFF $ $x=1750 $y=-1100 $w=300 $h=800 $r=90
Xnew_DFF_5 Stop T4 N_20 B4 Gnd Vdd new_DFF $ $x=850 $y=-1100 $w=300 $h=800 $r=90
Xnew_DFF_6 Stop T1 N_21 N_22 Gnd Vdd new_DFF $ $x=-1950 $y=-1100 $w=300 $h=800 $r=90
Xnew_DFF_7 Stop T2 N_23 B2 Gnd Vdd new_DFF $ $x=-950 $y=-1100 $w=300 $h=800 $r=90
Xnew_DFF_8 Stop T3 N_24 N_25 Gnd Vdd new_DFF $ $x=-50 $y=-1100 $w=300 $h=800 $r=90

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 1V
.include "C:\Users\makif\Desktop\130tech\45nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart Start 0 BIT ({0001111111} pw=10n lt=10n ht=10n on=1 off=0 rt=0.001n ft=0.001n delay=9.88n)
VStop Stop 0 BIT ({0111000000} pw=10n lt=10n ht=10n on=1 off=0 rt=0.001n ft=0.001n delay=0)


.tran 0.1n 100n start=0
.print tran   v(Stop,Gnd) v(Start,Gnd) v(T1,Gnd) v(T2,Gnd) v(T3,Gnd) v(T4,Gnd) v(T5,Gnd) v(T6,Gnd) v(T7,Gnd) 
.print tran   v(D0,Gnd)v(D1,Gnd) v(D2,Gnd)
.print tran   v(B1,Gnd) v(B2,Gnd) v(B3,Gnd)  v(B4,Gnd) v(B5,Gnd) v(B6,Gnd) v(B7,Gnd)

.end

