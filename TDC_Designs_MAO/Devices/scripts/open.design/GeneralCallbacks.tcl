set gdTOLERANCE 1E-16

proc gNearestMultiple {nValue nFactor} {
	set dValue [expr double($nValue) ]
	set dFactor [expr double($nFactor) ]
	set dHalfFactor [expr { $dFactor / 2.0 } ]
	if { $dValue >= 0 } {
		set dValue [expr { $dValue + $dHalfFactor } ]
	} else {
		set dValue [expr { $dValue - $dHalfFactor } ]
	}
	return [expr { floor($dValue / $dFactor) * $dFactor } ]
}

set dMfgGrid 50.0E-9

proc CheckSpecificDimension { sDimensionName sPropertyName nMinMaxBoth sMinimumDimension sMaximumDimension { sProcName "" } } {
	global dMfgGrid
	global gdTOLERANCE
	
	set dMinimumDimension [ stod $sMinimumDimension ]
	set dMaximumDimension [ stod $sMaximumDimension ]

	set dDimension [ stod [ property get $sPropertyName] ]
	
	if { $dDimension != 0 } {
		set dSnappedDimension [ gNearestMultiple $dDimension $dMfgGrid ]
		if { [expr abs($dDimension-$dSnappedDimension) ] > $gdTOLERANCE } {
			set sMsg "$sDimensionName is not on the manufacturing grid.  $sDimensionName has been snapped to [dtos $dSnappedDimension]"
			tk_messageBox -message $sMsg -type ok -icon error		
			property set $sPropertyName -value [dtos $dSnappedDimension ]
			set dDimension $dSnappedDimension
		}
	
		set sMsg ""
		if { ($nMinMaxBoth == 0) && ($dDimension < $dMinimumDimension) } {
			set sMsg "$sDimensionName is too small.  [dtos $dMinimumDimension] <= $sDimensionName"
		} elseif { ($nMinMaxBoth == 1) && ($dDimension > $dMaximumDimension) } {
			set sMsg "$sDimensionName is too big.  $sDimensionName <= [dtos $dMaximumDimension]"	
		} elseif { ($nMinMaxBoth == 2) && (($dDimension < $dMinimumDimension) || ($dDimension > $dMaximumDimension)) } {
			set sMsg "$sDimensionName is out of range.  [dtos $dMinimumDimension] <= $sDimensionName <= [dtos $dMaximumDimension]"
		}
		if { $sMsg != "" } {
			tk_messageBox -message $sMsg -type ok -icon error
			return $sMsg
		}
	}

	if { $sProcName != "" } {
		eval $sProcName
	}
}

proc CalcResistorParameters { nWhatChanged } {
	global dMfgGrid
	global gdTOLERANCE
	
	set dR [ stod [ property get "R" ] ]
	set dL [ stod [ property get "L" ] ]
	set dW [ stod [ property get "W" ] ]
	set nNumOfStripes [ property get "NumStripe" ]
	set dRsh [ stod [ property get "Rsh" ] ]

	if { $nWhatChanged == 1 } {
		# Resistance Changed
		set dL [ gNearestMultiple [expr $dR*$dW/$dRsh/$nNumOfStripes ] $dMfgGrid ]
		property set "L" -value [ dtos $dL ]
		
		set dSnappedR [expr $dL/$dW*$dRsh*$nNumOfStripes ]
		if { [expr abs($dR-$dSnappedR) ] > $gdTOLERANCE } {
			set sMsg "R has been adjusted to [dtos $dSnappedR] to match the calculated length that is on grid."
			tk_messageBox -message $sMsg -type ok -icon error
			property set "R" -value [ dtos $dSnappedR ]
		}
	} else {
		if { $nWhatChanged == 2 } {
			# L Changed
			set sErrMsg [ eval CheckSpecificDimension { "Resistor Length" "L" 0 0.5u 0 } ]
			if { $sErrMsg != "" } {
				return $sErrMsg
			}
			set dL [ stod [ property get "L" ] ]
		} elseif { $nWhatChanged == 3 } {
			# W Changed
			set sErrMsg [ eval CheckSpecificDimension { "Resistor Width" "W" 0 0.5u 0 } ]
			if { $sErrMsg != "" } {
				return $sErrMsg
			}
			set dW [ stod [ property get "W" ] ]
		} elseif { ($nWhatChanged == 4) } {
			# NumStripe or Rsh Changed
		}
		set dR [expr $dL/$dW*$dRsh*$nNumOfStripes ]
		property set "R" -value [ dtos $dR ]		
	}
}

puts "Loading Callbacks from [info script]"
