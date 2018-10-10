tests
testMutationAndRestorationOfWeights

| initial mutated e1 |
	e1 := EvoGeraniumModelTest new randomInitialize.
	initial := e1 simulationOutput.
	self
		assert: e1 areaOfInterest numberOfBuildings = 39.
	mutated := (e1 reproduceWith: EvoGeraniumModel new randomInitialize)
		mutate simulationOutput.
	^ self assert: initial ~= mutated

