initialization
testExample

	|visitor areaOfInterest|

	visitor := ScenarioToModelVisitor new.
	areaOfInterest := visitor analyze: (Scenario retrieve: #ScenarioA)