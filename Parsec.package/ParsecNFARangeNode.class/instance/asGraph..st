instance creation
asGraph: aSet

	^ (aSet includes: self) 
		ifTrue: [ {  } asOrderedCollection ]
		ifFalse: [ (out collect: [ :n | n asGraph add: self hash -> rangePair -> n hash; yourself ]) deepFlatten asOrderedCollection]