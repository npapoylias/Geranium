instance creation
for: aScenario

	inputScenario := Scenario retrieve: aScenario. 
	visitor := ScenarioToModelVisitor new.
	areaOfInterest := visitor analyze: inputScenario. 
	time := visitor years * 365 * 24.