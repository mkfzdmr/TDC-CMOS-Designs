* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 24 14:23:14 2012
* Design:           Full_Adder
* Cell:             Full_Adder
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\Dhiraj\Desktop\VLSI Designs\Full_Adder
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Documents and Settings\Dhiraj\My Documents\Tanner EDA\Tanner Tools v13.0\Tanner_Libraries\Generic_025_Kit\Generic_025_SPICE_Models_Level1.lib"

*************** Subcircuits *****************
.subckt NAND_Gate Vin1 Vin2 Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin1 N_1 Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_1 Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt NOR_Gate Vin1 Vin2 Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin1 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 Vout Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt NOT_Gate Vin Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends

.subckt XNOR_Gate Vin1 Vin2 Vout Gnd Vdd  
*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd N_1  R=500  
RResistor_2 Vdd Vout  R=500  
RResistor_3 Vdd N_7  R=500  
MNMOS_1 Vout N_1 N_2 Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_2 Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 Vout N_7 N_5 Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_5 Vin1 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 N_1 Vin1 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_6 N_7 Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
.ends


********* Simulation Settings - Parameters and SPICE Options *********

XNAND_Gate_1 Vin2 Vin1 N_4 Gnd Vdd NAND_Gate  
XNAND_Gate_2 Vcin N_3 N_5 Gnd Vdd NAND_Gate  
XXNOR_Gate_1 Vin2 Vin1 N_1 Gnd Vdd XNOR_Gate  
XXNOR_Gate_2 Vcin N_3 N_2 Gnd Vdd XNOR_Gate  
XNOR_Gate_1 N_6 N_7 N_8 Gnd Vdd NOR_Gate  
XNOT_Gate_1 N_4 N_6 Gnd Vdd NOT_Gate  
XNOT_Gate_2 N_1 N_3 Gnd Vdd NOT_Gate  
XNOT_Gate_3 N_5 N_7 Gnd Vdd NOT_Gate  
XNOT_Gate_4 N_2 Sum Gnd Vdd NOT_Gate  
XNOT_Gate_5 N_8 Carry Gnd Vdd NOT_Gate  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
V1 Vin1 Gnd bit {(00001111)}
V2 Vin2 Gnd bit {(00110011)}
V3 Vcin Gnd bit {(01010101)}
V4 Vdd Gnd dc 5
.tran 1n 100n
.print Vin1 Vin2 Vcin Sum Carry
.end

