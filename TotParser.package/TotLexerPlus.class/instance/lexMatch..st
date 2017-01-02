accessing
lexMatch: aStream

	^ (super lexMatch: aStream)
			ifTrue: [ [ super lexMatch: aStream ] whileTrue. true ]
			ifFalse: [ false ]
