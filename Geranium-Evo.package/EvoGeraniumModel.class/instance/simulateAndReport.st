examples
simulateAndReport

	^ report ifNil: [  
		Building disableHistory.
		report := self class simulation runForTotalConsumptionReport.
		Building enableHistory.
		report ]