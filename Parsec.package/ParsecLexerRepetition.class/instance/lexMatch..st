accessing
lexMatch: aStream
	
	|times currentPosition|
	times := 0.
	currentPosition := aStream position.
	[ super lexMatch: aStream ] whileTrue: [ times := times + 1 ].
	^ (times between: between key and: between value)
		ifTrue: [ true ]
		ifFalse: [ aStream position: currentPosition. false ] 
