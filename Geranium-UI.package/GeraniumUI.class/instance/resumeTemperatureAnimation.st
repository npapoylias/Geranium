initialization
resumeTemperatureAnimation

	tempContinue := true.
	mapView decorationElements do: [ :el | tempAnimation value: el ].
	