accessing
lexMatch: aStream

	^ operand == aStream peek
		ifTrue: [ aStream next. true ]
		ifFalse: [ false ]