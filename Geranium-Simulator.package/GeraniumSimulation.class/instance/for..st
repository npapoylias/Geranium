instance creation
for: aScenario

	inputScenario := Scenario retrieve: aScenario. 
	visitor := ScenarioToModelVisitor new.
	time := visitor years * 365 * 24.
	areaOfInterest := visitor analyze: inputScenario. 