initialization
asGraph: aSet

	^ (aSet includes: self) 
		ifTrue: [ {  } asOrderedCollection ]
		ifFalse: [ aSet add: self. (out collect: [ :n | (n asGraph: aSet) add: self hash -> char -> n hash; yourself ]) deepFlatten asOrderedCollection ] 