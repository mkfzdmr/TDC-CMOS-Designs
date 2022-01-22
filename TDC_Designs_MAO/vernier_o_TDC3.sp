* SPICE export by:  S-Edit 16.30
* Export time:      Sun May 05 16:32:26 2019
* Design:           TDC_Designs_MAO
* Cell:             vernier_o_TDC
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
* Root path:        TDC_Designs_MAO
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********

*************** Subcircuits *****************
.subckt buffer In Out Gnd Vdd 
MN1 N_1 In Gnd 0 NMOS W=1.5u L=130n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=0 $y=-225 $w=400 $h=600
MN2 Out N_1 Gnd 0 NMOS W=1.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=1200 $y=-225 $w=400 $h=600
MP1 N_1 In Vdd Vdd PMOS W=1.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=0 $y=775 $w=400 $h=600
MP2 Out N_1 Vdd Vdd PMOS W=1.5u L=130n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=1200 $y=775 $w=400 $h=600
.ends

.subckt INV A Out Gnd Vdd 
* Design: LogicGates / Cell: INV / View: Name / Page: Page0
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Inverter
* Date: 06/13/07 23:17:11
* Revision: 64 $ $x=7600 $y=600 $w=3600 $h=1200
MN1 Out A Gnd 0 NMOS W=1.5u L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=4600 $y=2600 $w=400 $h=600
MP1 Out A Vdd Vdd PMOS W=1.5u L=45n M=2 AS=4.5p PS=13.6u AD=3.125p PD=7.5u $ $x=4600 $y=3600 $w=400 $h=600
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
Xbuffer_2 T2 N_1 Gnd Vdd buffer $ $x=1300 $y=3000 $w=600 $h=400
Xbuffer_3 N_1 N_2 Gnd Vdd buffer $ $x=2300 $y=3000 $w=600 $h=400
Xbuffer_6 Start T2 Gnd Vdd buffer $ $x=-2400 $y=3000 $w=600 $h=400
Xbuffer_7 N_2 N_3 Gnd Vdd buffer $ $x=3400 $y=3000 $w=600 $h=400
Xbuffer_8 N_3 T3 Gnd Vdd buffer $ $x=4400 $y=3000 $w=600 $h=400
Xbuffer_9 N_4 T4 Gnd Vdd buffer $ $x=8500 $y=3000 $w=600 $h=400
Xbuffer_10 N_5 N_4 Gnd Vdd buffer $ $x=7500 $y=3000 $w=600 $h=400
Xbuffer_11 N_6 N_5 Gnd Vdd buffer $ $x=6300 $y=3000 $w=600 $h=400
Xbuffer_12 T3 N_6 Gnd Vdd buffer $ $x=5300 $y=3000 $w=600 $h=400
Xbuffer_13 N_9 T5 Gnd Vdd buffer $ $x=8400 $y=1900 $w=600 $h=400
Xbuffer_14 T5 N_7 Gnd Vdd buffer $ $x=9400 $y=1900 $w=600 $h=400
Xbuffer_15 N_7 N_8 Gnd Vdd buffer $ $x=10400 $y=1900 $w=600 $h=400
Xbuffer_16 N_10 N_9 Gnd Vdd buffer $ $x=7500 $y=1900 $w=600 $h=400
Xbuffer_17 N_11 N_10 Gnd Vdd buffer $ $x=6600 $y=1900 $w=600 $h=400
Xbuffer_18 T4 N_11 Gnd Vdd buffer $ $x=5700 $y=1900 $w=600 $h=400
Xbuffer_19 N_8 N_12 Gnd Vdd buffer $ $x=11500 $y=1900 $w=600 $h=400
Xbuffer_20 N_12 T6 Gnd Vdd buffer $ $x=12500 $y=1900 $w=600 $h=400
Xbuffer_21 N_13 T7 Gnd Vdd buffer $ $x=16600 $y=1900 $w=600 $h=400
Xbuffer_22 N_14 N_13 Gnd Vdd buffer $ $x=15600 $y=1900 $w=600 $h=400
Xbuffer_23 N_15 N_14 Gnd Vdd buffer $ $x=14400 $y=1900 $w=600 $h=400
Xbuffer_24 T6 N_15 Gnd Vdd buffer $ $x=13400 $y=1900 $w=600 $h=400
Xbuffer_25 Stop S2 Gnd Vdd buffer $ $x=-4400 $y=400 $w=600 $h=400
Xbuffer_29 S2 N_16 Gnd Vdd buffer $ $x=-2000 $y=400 $w=600 $h=400
Xbuffer_30 N_16 S3 Gnd Vdd buffer $ $x=-1400 $y=400 $w=600 $h=400
Xbuffer_33 S3 N_17 Gnd Vdd buffer $ $x=400 $y=400 $w=600 $h=400
Xbuffer_34 N_17 S4 Gnd Vdd buffer $ $x=1000 $y=400 $w=600 $h=400
Xbuffer_37 S4 N_18 Gnd Vdd buffer $ $x=2800 $y=400 $w=600 $h=400
Xbuffer_38 N_18 S5 Gnd Vdd buffer $ $x=3400 $y=400 $w=600 $h=400
Xbuffer_41 S5 N_19 Gnd Vdd buffer $ $x=5200 $y=400 $w=600 $h=400
Xbuffer_42 N_19 S6 Gnd Vdd buffer $ $x=5800 $y=400 $w=600 $h=400
Xbuffer_45 S6 N_20 Gnd Vdd buffer $ $x=7600 $y=400 $w=600 $h=400
Xbuffer_46 N_20 S7 Gnd Vdd buffer $ $x=8200 $y=400 $w=600 $h=400
Xencoder8x3_1 B1 B2 B3 B4 B5 B6 B7 D0 D1 D2 Gnd Vdd encoder8x3 $ $x=800 $y=-2750 $w=800 $h=500 $r=90
Xnew_DFF_2 S7 T7 N_21 B7 Gnd Vdd new_DFF $ $x=4050 $y=-1400 $w=300 $h=800 $r=90
Xnew_DFF_3 S6 T6 N_22 B6 Gnd Vdd new_DFF $ $x=2750 $y=-1400 $w=300 $h=800 $r=90
Xnew_DFF_4 S5 T5 N_23 B5 Gnd Vdd new_DFF $ $x=1750 $y=-1400 $w=300 $h=800 $r=90
Xnew_DFF_5 S4 T4 N_24 B4 Gnd Vdd new_DFF $ $x=850 $y=-1400 $w=300 $h=800 $r=90
Xnew_DFF_6 Stop Start N_25 B1 Gnd Vdd new_DFF $ $x=-1950 $y=-1400 $w=300 $h=800 $r=90
Xnew_DFF_7 S2 T2 N_26 B2 Gnd Vdd new_DFF $ $x=-950 $y=-1400 $w=300 $h=800 $r=90
Xnew_DFF_8 S3 T3 N_27 B3 Gnd Vdd new_DFF $ $x=-50 $y=-1400 $w=300 $h=800 $r=90

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 1V
.include "C:\Users\makif\Desktop\130tech\45nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart Start 0 BIT ({0011111111} pw=1n lt=1n ht=1n on=1 off=0 rt=0.001n ft=0.001n delay=0.5n)
VStop Stop 0 BIT ({0111000000} pw=1n lt=1n ht=1n on=1 off=0 rt=0.001n ft=0.001n delay=0)


.tran 0.01n 10n start=0
*.print tran   v(Start,Gnd) v(T2,Gnd) * v(T3,Gnd) v(T4,Gnd) v(T5,Gnd) v(T6,Gnd) v(T7,Gnd) 
*.print tran   v(D0,Gnd)v(D1,Gnd) v(D2,Gnd)
*.print tran   v(B1,Gnd) v(B2,Gnd) v(B3,Gnd)  v(B4,Gnd) v(B5,Gnd) v(B6,Gnd) v(B7,Gnd)
*.print tran   v(Stop,Gnd) v(S2,Gnd) *v(S3,Gnd)  v(S4,Gnd) v(S5,Gnd) v(S6,Gnd) v(S7,Gnd)


.print tran p(VPower)
.power VPower
.end

