examples
simulationOutput

	^ simulationOutput ifNil: [ simulationOutput := self simulateAndReport output ]