initialization
testConsumption
	
	self assert: report output avgConsumptionPerYear >= report output minAvgExpectedConsumptionPerYear.
	self assert: report output avgConsumptionPerYear <= report output maxAvgExpectedConsumptionPerYear.

	^ report