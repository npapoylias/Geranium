accessing
lexMatch: aStream

	^ (aStream peek between: operand key and: operand value)
			ifTrue: [ aStream next. true ]
			ifFalse: [ false ] 