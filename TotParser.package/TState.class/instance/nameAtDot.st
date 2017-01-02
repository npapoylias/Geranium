as yet unclassified
nameAtDot

	self isIncomplete 
		ifTrue: [ rightHand at: dotPosition + 1 ]
		ifFalse: [ nil ]
