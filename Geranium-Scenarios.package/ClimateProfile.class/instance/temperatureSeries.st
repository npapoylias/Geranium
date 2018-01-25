accessing
temperatureSeries

	^ temperatureSeries ifNil: [ self computeYearlyTemperatureSeries ]