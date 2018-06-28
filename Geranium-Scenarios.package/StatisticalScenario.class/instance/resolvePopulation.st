accessing
resolvePopulation

	^ totalNumberOfPopulation 
		ifNotNil: [ totalNumberOfPopulation next ]
		ifNil: [ nil ]