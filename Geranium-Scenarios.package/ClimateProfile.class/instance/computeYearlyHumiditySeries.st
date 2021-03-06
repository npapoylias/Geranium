accessing
computeYearlyHumiditySeries

	|winter spring summer fall|

	winter := self seasonalHumiditySeriesWithDeviation: 2 * seasonalTemperatureVariation.
	spring := self seasonalHumiditySeriesWithDeviation: -1 * seasonalTemperatureVariation.
	summer := self seasonalHumiditySeriesWithDeviation: -1 * seasonalTemperatureVariation.
	fall := self seasonalHumiditySeriesWithDeviation: 2 * seasonalTemperatureVariation.
		
	^ self humiditySeries: (winter addAll: spring; addAll: summer; addAll: fall; yourself)