accessing
preComputeDirectRefs
	
	1 to: rightHandSide size do: [ :i | self directRefsAt: i ]. "will memoize"
	directRefs := directRefs values asOrderedCollection asArray.
	
