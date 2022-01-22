* SPICE export by:  SEDIT 13.00
* Export time:      Mon Apr 23 19:43:41 2012
* Design:           XNOR_Gate
* Cell:             XNOR_Gate
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\Dhiraj\Desktop\VLSI Designs\XNOR_Gate
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Documents and Settings\Dhiraj\My Documents\Tanner EDA\Tanner Tools v13.0\Tanner_Libraries\Generic_025_Kit\Generic_025_SPICE_Models_Level1.lib"

********* Simulation Settings - Parameters and SPICE Options *********

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


V1 Vdd Gnd dc 5
V2 Vin1 Gnd bit {(0011)}
V3 Vin2 Gnd bit {(0101)}
********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
.tran 1n 100n
.print Vin1 Vin2 Vout
.end

