initialization
temperatureChanged: aNewValue

	temperatureSlider widget label: 'Temperature Increase by: ' , aNewValue asString. 
	temperature := aNewValue.
	scatterplot smoothRefresh.
	^ temperature
	