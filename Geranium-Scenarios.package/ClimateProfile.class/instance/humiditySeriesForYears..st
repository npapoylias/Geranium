accessing
humiditySeriesForYears: y

	1 to: y do: [:i | self computeYearlyHumiditySeries ].
	^ self humiditySeries