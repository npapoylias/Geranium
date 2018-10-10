examples
simulationOutput

	^ simulationOutput ifNil: [ Transcript show: '.'; cr. simulationOutput := self simulateAndReport output ]