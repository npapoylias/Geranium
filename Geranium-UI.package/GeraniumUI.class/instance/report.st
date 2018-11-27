accessing
report

	self reportMutex critical: [

	^ report ifNil: [ 
			Transcript show: (report whatIf at: #temperature ifAbsentPut: [0]); cr. 
			self perform: self scenario.
			"min/max for non-hoping categories"
			report := GeraniumSimulation new
				for: #Geranium;
				run
		].
	
	]