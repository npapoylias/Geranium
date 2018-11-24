initialization
dpeBChanged: aNewValue
	
	dpeBSlider widget label: 'Set DPEB to: ' , (aNewValue printShowingDecimalPlaces: 1) , '%'. 
	dpeBPercentage := aNewValue.
	pie smoothRefresh.
	^ dpeBPercentage 