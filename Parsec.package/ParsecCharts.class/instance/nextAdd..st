adding
nextAdd: aState
	"optimized version without anySatisfy.. where are my macros"
	
	|current next|
	
	next := self next.
	1 to: next size do: [ :i | ((next at: i) equalTo: aState) ifTrue: [ ^ self ]  ].
	current := self current.
	1 to: current size do: [ :i | ((current at: i) equalTo: aState) ifTrue: [ ^ self ]  ].
	self atEnd ifTrue: [self augment]. self next add: aState. 