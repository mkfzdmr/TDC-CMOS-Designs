
#******************************************************************************
# Function Name    : SetDelayMeasureOutput
# Parameters       : bInvert - 0 Non-Inverting delay, 1 Inverting delay.
# Description      : Sets the SPICE.OUTPUT for the delay calculation.
# Returns          : Nothing.
#******************************************************************************
#  Revision History
#   11/27/2007 - NJW - Created function.
#******************************************************************************
proc SetDelayMeasureOutput { bInvert } {
	set sType [ property get "Type" ]
	set sSPICEOutput ""
	
	if { $bInvert != 0 } {
		set sOutRise "FALL"
		set sOutFall "RISE"
	} else{
		set sOutRise "RISE"
		set sOutFall "FALL"		
	}	
	
	if { [string compare $sType "Rising"] == 0 } {
		set sSPICEOutput [format ".MEASURE TRAN \${MeasureName} TRIG v(%%{Vin}) VAL='\${Calc.StartVoltage}' TD='\${Delay}' RISE=1 TARG v(%%{Vout}) VAL='\${Calc.EndVoltage}' TD='\${Delay}' %s=1 \${PrintMeasure}" $sOutRise]
	} elseif { [string compare $sType "Falling"] == 0 } {
		set sSPICEOutput [format ".MEASURE TRAN \${MeasureName} TRIG v(%%{Vin}) VAL='\${Calc.StartVoltage}' TD='\${Delay}' FALL=1 TARG v(%%{Vout}) VAL='\${Calc.EndVoltage}' TD='\${Delay}' %s=1 \${PrintMeasure}" $sOutFall]
	} elseif { [string compare $sType "Average"] == 0 } {
		set sSPICEOutput [format ".MEASURE TRAN RiseDelay_\${Name} TRIG v(%%{Vin}) VAL='\${Calc.StartVoltage}' TD='\${Delay}' RISE=1 TARG v(%%{Vout}) VAL='\${Calc.EndVoltage}' TD='\${Delay}' %s=1 OFF\n.MEASURE TRAN FallDelay_\${Name} TRIG v(%%{Vin}) VAL='\${Calc.StartVoltage}' TD='\${Delay}' FALL=1 TARG v(%%{Vout}) VAL='\${Calc.EndVoltage}' TD='\${Delay}' %s=1 OFF\n.MEASURE TRAN ${MeasureName} PARAM='(RiseDelay_${Name}+FallDelay_${Name})/2.0' ${PrintMeasure}" $sOutRise $sOutFall]		
	}

	property set "SPICE.OUTPUT" -value $sSPICEOutput
}

#******************************************************************************
# Function Name    : SetTempSweep
# Parameters       : None.
# Description      : Sets Temperatures for the temperature sweep
# Returns          : Nothing.
#******************************************************************************
#  Revision History
#   11/27/2007 - NJW - Created function.
#******************************************************************************
proc SetTempSweep { } {
	set sType [ property get "SweepType" ]

	if { [string compare $sType "Commercial"] == 0 } {
		set sT "0 10 25 40 55 70"
	} elseif { [string compare $sType "Industrial"] == 0 } {
		set sT "-40 -20 0 10 25 40 70 85"
	} elseif { [string compare $sType "Extended"] == 0 } {
		set sT "-40 -20 0 10 25 40 70 85 110 125"
	} elseif { [string compare $sType "Military"] == 0 } {
		set sT "-55 -40 -20 0 10 25 40 70 85 110 125"
	}

	property set "T" -value $sT	
}
	
puts "Loading Callbacks from [info script]"
