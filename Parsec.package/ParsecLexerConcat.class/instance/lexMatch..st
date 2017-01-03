accessing
lexMatch: aStream

	sequence do: [ :node | (node lexMatch: aStream) ifFalse: [ ^ false ] ].
	^ true