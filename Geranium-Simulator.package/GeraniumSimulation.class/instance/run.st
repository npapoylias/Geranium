instance creation
run
	areaOfInterest clearHistory.
	1 to: time do: [ :t | areaOfInterest step: t ].
	^ self report