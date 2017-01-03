copying
copyStatesWaitingFor: aState from: start to: end

	| name chart newCollection element newState |

	name := aState rule name.

	
	chart := (self at: aState fromTerminal + 1).
	newCollection := chart copyEmpty.

    1 to: chart size do: [ :index |
		element := chart at: index.
		(element expecting: name at: start)
			ifTrue: [  
				newState := element copy.
				newState previousStates add: aState.
				newState fromTerminal: element fromTerminal; toTerminal: chartIndex - 1.
				newState advanceDot end: end.
				newCollection addLast: newState  
			]
	].

	^ newCollection