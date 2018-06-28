tests
testMutationAndRestorationOfWeights

	|initial mutated restored e1 e2 e3 |

	e1 := EvoGeraniumModel new.
	initial := e1 simulationOutput.
	
	self assert: { e1 areaOfInterest numberOfBuildings .
		e1 areaOfInterest numberOfResidences .
		e1 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.

	e2 := EvoGeraniumModel new.
	e2 areaOfInterestWeightsProfile day: [ -0.02 -> 0.02 ]; yourself.
	mutated := e2 simulationOutput.

	self assert: { e2 areaOfInterest numberOfBuildings .
		e2 areaOfInterest numberOfResidences .
		e2 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.
	
	self assert: initial ~= mutated.

	e3 := EvoGeraniumModel new.
	e3 restoreInitialWeights.
	restored := e3 simulationOutput.

	self assert: { e3 areaOfInterest numberOfBuildings .
		e3 areaOfInterest numberOfResidences .
		e3 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.

	self assert: restored = initial.
