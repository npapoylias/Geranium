accessing
ruleAtDot

	^ ruleAtDot ifNil: [  
		self isIncomplete 
			ifTrue: [ ruleAtDot := dRefRightHand at: dotPosition + 1 ]
			ifFalse: [ nil ]
		]