accessing
report

	self reportMutex critical: [

	^ report ifNil: [ 

			self fullInternalApiScript.
			"min/max for non-hoping categories"
			report := GeraniumSimulation new
				for: #ScenarioA;
				run
		].
	
	]