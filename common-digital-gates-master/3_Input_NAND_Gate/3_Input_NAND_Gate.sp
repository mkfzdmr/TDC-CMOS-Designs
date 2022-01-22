* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 24 16:59:32 2012
* Design:           3_Input_NAND_Gate
* Cell:             3_Input_NAND_Gate
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\Dhiraj\Desktop\VLSI Designs\3_Input_NAND_Gate
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Documents and Settings\Dhiraj\My Documents\Tanner EDA\Tanner Tools v13.0\Tanner_Libraries\Generic_025_Kit\Generic_025_SPICE_Models_Level1.lib"

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
RResistor_1 Vdd Vout  R=500  
MNMOS_1 Vout Vin1 N_2 N_1 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_2 Vin2 N_4 N_3 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_4 Vin3 Gnd N_5 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  

V1 Vdd Gnd dc 5
V2 Vin1 Gnd bit {(00001111)}
V3 Vin2 Gnd bit {(00110011)}
V4 Vin3 Gnd bit {(01010101)}
********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
.tran 1n 100n 
.print Vin1 Vin2 Vin3 Vout
.end

