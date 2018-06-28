tests
testMutationAndRestorationOfWeights

	|initial mutated  e1  |

	e1 := EvoGeraniumModel new randomInitialize.
	initial := e1 simulationOutput.
	
	self assert: { e1 areaOfInterest numberOfBuildings .
		e1 areaOfInterest numberOfResidences .
		e1 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.

	mutated := (e1 reproduceWith: EvoGeraniumModel new randomInitialize) mutate simulationOutput.
	
	self assert: initial ~= mutated.

