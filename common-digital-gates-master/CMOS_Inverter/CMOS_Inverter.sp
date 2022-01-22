* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 24 20:16:12 2012
* Design:           CMOS_Inverter
* Cell:             CMOS_Inverter
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\Dhiraj\Desktop\VLSI Designs\CMOS_Inverter
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Documents and Settings\Dhiraj\My Documents\Tanner EDA\Tanner Tools v13.0\Tanner_Libraries\Generic_025_Kit\Generic_025_SPICE_Models_Level1.lib"

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 Vout Vin Gnd N_1 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 Vout Vin Vdd N_2 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********
V1 Vdd Gnd dc 5
V2 Vin Gnd bit {(10101)}

.tran 1n 100n
.print Vin Vout
.end

