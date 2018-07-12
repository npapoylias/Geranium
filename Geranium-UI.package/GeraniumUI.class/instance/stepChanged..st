events
stepChanged: aStep

	slider widget label: (step := aStep) asString , '/' , stepMax asString. "fix for max" 
	outputDiagramsTotStructure update: step. 
	outputDiagramsSocialMicroClimate update: step. 
	self renderClimateConsumptionIndicators.