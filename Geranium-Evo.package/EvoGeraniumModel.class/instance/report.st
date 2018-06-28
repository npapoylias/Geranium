examples
report

	^ report ifNil: [ 
		self fullInternalApiScript.
		Building disableHistory.
		report := GeraniumSimulation new
			for: #ScenarioA;
			run.
		Building enableHistory.
	]