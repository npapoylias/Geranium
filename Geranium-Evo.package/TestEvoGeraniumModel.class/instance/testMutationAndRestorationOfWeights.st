tests
testMutationAndRestorationOfWeights

	|initial mutated restored e1 e2|

	e1 := EvoGeraniumModel new.
	initial := e1 simulateAndReport output.
	
	self assert: { e1 areaOfInterest numberOfBuildings .
		e1 areaOfInterest numberOfResidences .
		e1 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.

	e1 areaOfInterestWeightsProfile day: [ -0.02 -> 0.02 ]; yourself.
	mutated := e1 simulateAndReport output.

	self assert: { e1 areaOfInterest numberOfBuildings .
		e1 areaOfInterest numberOfResidences .
		e1 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.
	
	self assert: initial ~= mutated.

	e2 := EvoGeraniumModel new.
	e2 areaOfInterestWeightsProfile copy: e2 scenarioWeightsProfile.
	restored := e2 simulateAndReport output.

	self assert: { e2 areaOfInterest numberOfBuildings .
		e2 areaOfInterest numberOfResidences .
		e2 areaOfInterest numberOfOccupants } = { 842 . 2166 . 3737 }.

	self assert: restored = initial.
