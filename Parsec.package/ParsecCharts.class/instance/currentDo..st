as yet unclassified
currentDo: aBlock

	self printToLog.

	stateIndex := 0. "chart may change while looping so using indexing"
	[ stateIndex < self current size ] whileTrue: [
			stateIndex := stateIndex + 1. 
			aBlock value: (self current at: stateIndex).
	].

