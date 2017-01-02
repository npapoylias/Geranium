initialization
allNodesUntil: anotherNode given: aSet
	
	(aSet includes: self) ifTrue: [ ^ aSet] ifFalse: [ aSet add: self].
	self == anotherNode
		ifFalse: [ out do: [ :n | n allNodesUntil: anotherNode given: aSet ] ].
	^ aSet