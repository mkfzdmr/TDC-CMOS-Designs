* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 24 18:30:55 2012
* Design:           MUX_4x1
* Cell:             MUX_4x1
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\Dhiraj\Desktop\VLSI Designs\MUX_4x1
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Documents and Settings\Dhiraj\My Documents\Tanner EDA\Tanner Tools v13.0\Tanner_Libraries\Generic_025_Kit\Generic_025_SPICE_Models_Level1.lib"

*************** Subcircuits *****************
.subckt 4_Input_NAND_Gate Vin1 Vin2 Vin3 Vin4 Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin1 N_2 N_1 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_2 Vin2 N_4 N_3 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_4 Vin3 N_6 N_5 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_6 Vin4 Gnd N_7 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt 4_Input_NOR_Gate Vin1 Vin2 Vin3 Vin4 Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin1 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 Vout Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 Vout Vin3 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 Vout Vin4 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt NOT_Gate Vin Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XNOT_Gate_6 s1 N_2 Gnd Vdd NOT_Gate  
XNOT_Gate_7 s0 N_1 Gnd Vdd NOT_Gate  
X4_Input_NOR_Gate_1 N_9 N_10 N_11 N_12 N_7 Gnd Vdd 4_Input_NOR_Gate  
XNOT_Gate_1 N_3 N_12 Gnd Vdd NOT_Gate  
XNOT_Gate_2 N_4 N_11 Gnd Vdd NOT_Gate  
X4_Input_NAND_Gate_1 E N_1 N_2 Vin1 N_3 Gnd Vdd 4_Input_NAND_Gate  
XNOT_Gate_3 N_5 N_10 Gnd Vdd NOT_Gate  
X4_Input_NAND_Gate_2 E s0 N_2 Vin2 N_4 Gnd Vdd 4_Input_NAND_Gate  
XNOT_Gate_4 N_6 N_9 Gnd Vdd NOT_Gate  
X4_Input_NAND_Gate_3 E N_1 s1 Vin3 N_5 Gnd Vdd 4_Input_NAND_Gate  
XNOT_Gate_5 N_7 Vout Gnd Vdd NOT_Gate  
X4_Input_NAND_Gate_4 E s0 s1 Vin4 N_6 Gnd Vdd 4_Input_NAND_Gate  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********

V1 Vdd Gnd dc 5
V2 E Gnd bit {(1)}
V3 Vin1 Gnd bit {(1010)}
V4 Vin2 Gnd bit {(0101)}
V5 Vin3 Gnd bit {(0011)}
V6 Vin4 Gnd bit {(0001)}
V7 s0 Gnd bit {(0011)}
V8 s1 Gnd bit {(0101)}

.tran 1n 100n
.print s0 s1 Vin1 Vin2 Vin3 Vin4 Vout
.end

