accessing
temperatureSeries: aCollection

	^ temperatureSeries 
			ifNil: [ temperatureSeries := aCollection ]
			ifNotNil: [ temperatureSeries addAll: aCollection; yourself ]