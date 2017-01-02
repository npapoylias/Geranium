as yet unclassified
rightHandSideAsNewStatesOn: readingPosition

	^ self ruleAtDot 
		rightHandSideAsNewStatesOn: self to 
		fromTerminal: self toTerminal 
		toTerminal: self toTerminal.
			