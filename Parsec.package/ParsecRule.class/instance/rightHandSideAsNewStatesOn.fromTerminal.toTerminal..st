accessing
rightHandSideAsNewStatesOn: readingPosition fromTerminal: fromTerminal toTerminal: toTerminal

	| newStates |
	newStates := ParsecCollection new.

	1 to: self rightHandSide size do: [ :i |
		newStates add: 
			((ParsecState 
				on: self alternative: i 
				from: readingPosition 
				to: readingPosition 
				dot: 0)
				fromTerminal: fromTerminal;
				toTerminal: toTerminal)
	].

	^ newStates