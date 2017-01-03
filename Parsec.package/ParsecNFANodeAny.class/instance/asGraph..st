initialization
asGraph: aSet

	^ (aSet includes: self) 
		ifTrue: [ {  } ]
		ifFalse: [ aSet add: self. (out collect: [ :n | n asGraph add: self hash -> '.' -> n hash; yourself ]) deepFlatten asOrderedCollection]