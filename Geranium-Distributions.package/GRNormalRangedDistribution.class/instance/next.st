instance creation
next

	|n|
	n := super next.
	min ifNil: [ ^ n ]. "no range has been defined"
	^ n < min 
		ifTrue: [ min ] 
		ifFalse: [ 
			n > max 
				ifTrue: [ max ] 
				ifFalse: [ n ] ]