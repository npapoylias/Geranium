initialization
doStep
	self stepChanged: (step := step + 1).
	^ slider widget updateValue