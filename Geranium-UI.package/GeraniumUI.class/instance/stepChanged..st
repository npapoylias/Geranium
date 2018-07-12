events
stepChanged: aStep

	slider widget label: (step := aStep) asString , '/' , stepMax asString. "fix for max" 
	outputDiagrams update: step."self updateElectricityConsumption."
	self renderClimateConsumptionIndicators.