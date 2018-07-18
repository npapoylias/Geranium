accessing
computeYearlyTemperatureSeries

	|winter spring summer fall|

	winter := self seasonalTemperatureSeriesWithDeviation: -2 * seasonalTemperatureVariation.
	spring := self seasonalTemperatureSeriesWithDeviation: 0 * seasonalTemperatureVariation.
	summer := self seasonalTemperatureSeriesWithDeviation: 2 * seasonalTemperatureVariation.
	fall := self seasonalTemperatureSeriesWithDeviation: -1 * seasonalTemperatureVariation.
		
	^ self temperatureSeries: (winter addAll: spring; addAll: summer; addAll: fall; yourself)