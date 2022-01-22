* SPICE export by:  S-Edit 16.30
* Export time:      Thu Mar 07 22:34:32 2019
* Design:           Counter_TDC
* Cell:             Counter
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
MN1 5 Data Gnd 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=4700 $y=3000 $w=400 $h=600
MN2 4 CB 5 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=4700 $y=3800 $w=400 $h=600
MN3 7 10 8 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=6100 $y=3000 $w=400 $h=600
MN4 4 C 7 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=6100 $y=3800 $w=400 $h=600
MN11 CB Clk Gnd 0 NMOS W=1u L=250n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=1100 $y=2700 $w=400 $h=600
MN12 C CB Gnd 0 NMOS W=1u L=250n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=2500 $y=2700 $w=400 $h=600
MN13 8 ClB Gnd 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=6100 $y=2200 $w=400 $h=600
MN14 10 4 Gnd 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=7600 $y=2500 $w=400 $h=600
MN15 Q 12 Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=6800 $y=3600 $w=400 $h=600
MN16 12 CB QB 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=4200 $y=3500 $w=400 $h=600
MN17 QB ClB 14 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5700 $y=2700 $w=400 $h=600
MN18 12 C 13 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=2700 $y=3500 $w=400 $h=600
MN19 13 10 Gnd 0 NMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=2700 $y=2700 $w=400 $h=600
MN27 14 Q Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u $ $x=5700 $y=1900 $w=400 $h=600
MP1 4 C 3 Vdd PMOS W=2.15u L=250n AS=1.935p PS=6.1u AD=1.935p PD=6.1u $ $x=4700 $y=4600 $w=400 $h=600
MP2 3 Data Vdd Vdd PMOS W=2.15u L=250n AS=1.935p PS=6.1u AD=1.935p PD=6.1u $ $x=4700 $y=5400 $w=400 $h=600
MP3 4 CB 6 Vdd PMOS W=1.75u L=250n AS=1.575p PS=5.3u AD=1.575p PD=5.3u $ $x=6500 $y=4600 $w=400 $h=600 $m
MP4 6 10 Vdd Vdd PMOS W=1.75u L=250n AS=1.575p PS=5.3u AD=1.575p PD=5.3u $ $x=6100 $y=5400 $w=400 $h=600
MP9 9 ClB Vdd Vdd PMOS W=1.5u L=250n AS=1.35p PS=4.8u AD=1.35p PD=4.8u $ $x=7600 $y=5400 $w=400 $h=600
MP11 CB Clk Vdd Vdd PMOS W=1u L=250n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=1100 $y=3300 $w=400 $h=600
MP12 C CB Vdd Vdd PMOS W=1u L=250n AS=900f PS=3.8u AD=900f PD=3.8u $ $x=2500 $y=3300 $w=400 $h=600
MP13 4 CB 9 Vdd PMOS W=1.4u L=250n AS=1.26p PS=4.6u AD=1.26p PD=4.6u $ $x=7600 $y=4600 $w=400 $h=600
MP14 10 4 Vdd Vdd PMOS W=1.9u L=250n AS=1.71p PS=5.6u AD=1.71p PD=5.6u $ $x=7600 $y=3300 $w=400 $h=600
MP17 Q 12 Vdd Vdd PMOS W=3.4u L=250n AS=3.06p PS=8.6u AD=3.06p PD=8.6u $ $x=6800 $y=4200 $w=400 $h=600
MP22 QB Q Vdd Vdd PMOS W=3u L=250n AS=2.7p PS=7.8u AD=2.7p PD=7.8u $ $x=5700 $y=5100 $w=400 $h=600
MP26 12 CB 11 Vdd PMOS W=2u L=250n AS=1.8p PS=5.8u AD=1.8p PD=5.8u $ $x=2700 $y=4300 $w=400 $h=600
MP27 11 10 Vdd Vdd PMOS W=2u L=250n AS=1.8p PS=5.8u AD=1.8p PD=5.8u $ $x=2700 $y=5100 $w=400 $h=600
MP28 12 C QB Vdd PMOS W=2u L=250n AS=1.8p PS=5.8u AD=1.8p PD=5.8u $ $x=4200 $y=4300 $w=400 $h=600
MP29 QB ClB Vdd Vdd PMOS W=3u L=250n AS=2.7p PS=7.8u AD=2.7p PD=7.8u $ $x=4200 $y=5100 $w=400 $h=600
.ends


***** Top Level *****
XDFFC_1 Vdd In N_1 Q0 N_1 Gnd Vdd DFFC $ $x=900 $y=-1000 $w=800 $h=1000
XDFFC_2 Vdd N_1 N_2 Q1 N_2 Gnd Vdd DFFC $ $x=2300 $y=-1000 $w=800 $h=1000
XDFFC_3 Vdd N_2 N_3 Q2 N_3 Gnd Vdd DFFC $ $x=3600 $y=-1000 $w=800 $h=1000
XDFFC_4 Vdd N_3 N_4 Q3 N_4 Gnd Vdd DFFC $ $x=4900 $y=-1000 $w=800 $h=1000

********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********
VPower Vdd Gnd 3.3V
.include "C:\Users\makif\Desktop\130tech\130nm.md"

*VIn In Gnd BIT ({00001111} pw=5n lt=5n ht=5n on=3.3 off=0 rt=0.1n ft=0.1n delay=0)

VStart In 0 BIT ({000101010101} pw=10n lt=10n ht=10n on=3.3 off=0 rt=0.001n ft=0.001n delay=0)



.tran 0.1n 100n start=0

.print tran    v(Q0,Gnd) v(Q1,Gnd) v(Q2,Gnd) v(Q3,Gnd) v(In,Gnd)
.end

