as yet unclassified
terminalMatchForInput: input atPosition: readingPosition
	
	readingPosition == input size 
		ifTrue: [ ^ readingPosition  ]. "no match already at end"		
	input position: readingPosition. "already the case ?"
	^ (self regExpr matchesStreamPrefix: input)
			ifTrue: [self ignoreRegExpr matchesStreamPrefix: input. input position]
			ifFalse: [ readingPosition ]
			