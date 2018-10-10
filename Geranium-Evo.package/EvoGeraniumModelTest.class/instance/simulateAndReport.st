examples
simulateAndReport

	^ report ifNil: [  
		Building disableHistory.
		self areaOfInterestWeightsProfile copy: genes weightsProfile.
		report := self class simulation runForTotalConsumptionReport.
		Building enableHistory.
		report ]