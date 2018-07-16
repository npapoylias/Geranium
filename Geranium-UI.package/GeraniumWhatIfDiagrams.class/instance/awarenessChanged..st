initialization
awarenessChanged: aNewValue

	awarenessSlider widget label: 'Set awareness to: ' , (aNewValue printShowingDecimalPlaces: 1) , '%'.
	^ awarenessPercentage := aNewValue