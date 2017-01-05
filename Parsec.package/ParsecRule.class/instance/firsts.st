filtering
firsts

	"should be precomputed after all rules are in but before parsing so to 
	avoid lazy overhead while parsing, on live update should be recomputed.
	Infinite recursion avoided because of memoizaton currently (recheck)"

	^ firsts ifNil: [  
			firsts := OrderedCollection new.
			rightHandSide do: [ :rule | 
				firsts add: (self firstForRightHandSide: rule)
			].
			firsts
		]
	
	