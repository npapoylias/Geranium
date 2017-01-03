parsing
parseCountedRepetition

	|from to next|

	from := String new writeStream.
	to := String new writeStream.
	[ (next := stream next) isDigit ] whileTrue: [ from nextPut: next ].
	from := from contents asNumber.
	
	stream peek == $.
		ifTrue: [  
			stream next.
			[ (next := stream next) isDigit ] whileTrue: [ to nextPut: next ].
			to := to asNumber.		
		] ifFalse: [  
			to := from.	
		].
	
	^ ParsecLexerRepetition new between: from->to