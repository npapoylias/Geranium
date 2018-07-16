initialization
dpeAChanged: aNewValue
	
	dpeASlider widget label: 'Set DPEA to: ' , (aNewValue printShowingDecimalPlaces: 1) , '%'. 
	^ dpeAPercentage := aNewValue