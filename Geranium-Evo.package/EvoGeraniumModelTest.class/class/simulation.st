examples
simulation

	^ simulation ifNil: [ 
		self fullInternalApiScript.
		simulation := GeraniumSimulation new
			for: #ScenarioA.
		simulation
	]