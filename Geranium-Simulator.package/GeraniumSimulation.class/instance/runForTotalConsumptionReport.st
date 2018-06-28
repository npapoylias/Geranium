instance creation
runForTotalConsumptionReport

	areaOfInterest clearHistory.
	1 to: time do: [ :t | areaOfInterest step: t ].
	^ self totalConsumptionReport