events
stepChanged: aStep

	slider widget label: (step := aStep) asString , '/' , stepMax asString. "fix for max" 
	self updateElectricityConsumption.
	self renderClimateConsumptionIndicators.