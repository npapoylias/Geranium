accessing
yearlyMedianTemperature: aMeanTemperature withStandardDeviation: sd varyingSeasonally: degrees

	|winter spring summer fall|

	winter := self 
		seasonalTemperatureSeriesAround: aMeanTemperature - (2*degrees)
		withStandardDeviation: sd.
	spring := self
		seasonalTemperatureSeriesAround: aMeanTemperature + degrees
		withStandardDeviation: sd.
	summer := self
		seasonalTemperatureSeriesAround: aMeanTemperature + (2*degrees)
		withStandardDeviation: sd.
	fall := self
		seasonalTemperatureSeriesAround: aMeanTemperature - degrees
		withStandardDeviation: sd.
		
	self temperatureSeries: (winter addAll: spring; addAll: summer; addAll: fall; yourself)