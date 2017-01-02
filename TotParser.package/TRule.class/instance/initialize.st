accessing
initialize

	super initialize.
	rightHandSide := OrderedCollection new.
	rightHandSide add: OrderedCollection new.
	childRules := OrderedCollection new.
	directRefs := Dictionary new.
	isAnd := false. 
	isNot := false. 
	ordered := false. "by default -- changes with \"