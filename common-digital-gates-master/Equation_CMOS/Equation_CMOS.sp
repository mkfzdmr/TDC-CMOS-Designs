* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 24 10:31:56 2012
* Design:           Equation_CMOS
* Cell:             Equation_CMOS
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\Dhiraj\Desktop\VLSI Designs\Equation_CMOS
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Documents and Settings\Dhiraj\My Documents\Tanner EDA\Tanner Tools v13.0\Tanner_Libraries\Generic_025_Kit\Generic_025_SPICE_Models_Level1.lib"

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 Vout Vin1 N_1 Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_1 Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 Vout Vin1 N_2 Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_2 N_3 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 N_3 Vin2 Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 N_4 Vin1 Vdd Gnd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_2 Vout Vin1 N_4 Gnd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 Vout Vin2 N_4 Gnd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_4 Vdd N_3 N_4 Gnd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_5 N_3 Vin2 N_5 Gnd PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  


V1 Vdd Gnd dc 5
V2 Vin1 Gnd bit{(0011)}
V3 Vin2 Gnd bit{(0101)}

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
.tran 1n 100n 
.print Vin1 Vin2 Vout 
.end

