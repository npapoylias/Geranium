initialization
awarenessChanged: aNewValue

	awarenessSlider widget label: 'Set awareness to: ' , ((aNewValue * 100) printShowingDecimalPlaces: 1) , '%'.
	^ awarenessPercentage := aNewValue