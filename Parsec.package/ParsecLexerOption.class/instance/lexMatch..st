accessing
lexMatch: aStream

	options do: [ :node | |currentPos|
		currentPos := aStream position.
		(node lexMatch: aStream) 
			ifTrue: [ ^ true ] 
			ifFalse: [ aStream position: currentPos ] "backtrack -- handles any and others"
	]. "first that matches not longer"
	^ false