accessing
report

	self reportMutex critical: [

	^ report ifNil: [ 

			self geraniumUpdated.
			"min/max for non-hoping categories"
			report := GeraniumSimulation new
				for: #Geranium;
				run
		].
	
	]