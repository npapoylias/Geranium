accessing
directRefsAt: anIndex

	^ self isTerminal 
		ifTrue: [ self ]
		ifFalse: [  
			directRefs at: anIndex ifAbsent: [
				directRefs 
					at: anIndex 
					put: ((rightHandSide at: anIndex) collect: [ :symbol | grammar at: symbol ]) ]
	]