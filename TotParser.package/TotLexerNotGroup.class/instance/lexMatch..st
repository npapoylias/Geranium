accessing
lexMatch: aStream

	|curPosition| "this is not so we need to backtrack on success and procceed on failure"
	curPosition := aStream position.
	^ (super lexMatch: aStream)
		ifTrue: [ aStream position: curPosition. false ]
		ifFalse: [ aStream atEnd ifTrue: [^ false]. 
			aStream next . "groups progress by single chars" true ]