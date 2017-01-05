filtering
firstForRightHandSide: rule
	
	|symbolFirsts totalFirsts index|
	
	index := 1.
	totalFirsts := { } asOrderedCollection.
	[symbolFirsts = nil or: [(symbolFirsts includes: #e) and: [ index <= rule size ]]]
		whileTrue: [ 
			symbolFirsts := self firstsFor: (rule at: index).
			totalFirsts addAll: symbolFirsts. "will return asSet at the end" 
			index := index + 1 
		].
	
	^ totalFirsts deepFlatten asSet
