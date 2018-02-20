accessing
temperatureSeriesForYears: y

	1 to: y do: [:i | self computeYearlyTemperatureSeries ].
	^ self temperatureSeries