*TotParser
lexMatch: aStream

	^ aStream peek == self ifTrue: [ aStream next. true ] ifFalse: [ false ]