initialization
asGraph: aSet
	
	| nots |
	^ (aSet includes: self) 
		ifTrue: [ {  } asOrderedCollection ]
		ifFalse: [ aSet add: self.
			nots := nfaNodes collect: [ :n | n char ]. 
			(out collect: [ :n | n asGraph add: self hash -> ('^ ' , nots asString) -> n hash; yourself ]) deepFlatten asOrderedCollection]