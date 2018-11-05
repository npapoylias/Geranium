events
stepChanged: aStep

	step := aStep.
	slider widget label: self sliderLabel. "fix for max" 
	outputDiagramsTotStructure update: step. 
	outputDiagramsSocialMicroClimate update: step. 
	self renderClimateConsumptionIndicators.
	aStep = stepMax ifTrue: [ self pauseTemperatureAnimation  ]