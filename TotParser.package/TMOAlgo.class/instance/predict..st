as yet unclassified
predict: aState

	aState ruleAtDot isOrdered
		ifTrue: [ super predict: aState ]
		ifFalse: [ super predictUnordered: aState ]