accessing
report

	self reportMutex critical: [

	^ report ifNil: [ 
			self perform: self scenario.
			"min/max for non-hoping categories"
			report := GeraniumSimulation new
				for: #Geranium;
				run.
			Transcript show: (report whatIf at: #temperature ifAbsentPut: [0]); cr. 
			report
		].
	
	]