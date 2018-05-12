accessing
report

	^ report ifNil: [ 
		self fullInternalApiScript.
		"min/max for non-hoping categories"
		report := GeraniumSimulation new
			for: #ScenarioA;
			run
	]