parsing
parseRe
	
	|result|
	result := ParsecLexerOption new.
	result add: self parseOptionOp.
	[stream peek = $|] 
		whileTrue: [ stream next. result add: self parseOptionOp. ].
	^ result size = 1 ifTrue: [ result first ] ifFalse: [ result ] "flatten"