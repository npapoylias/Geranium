parsing
parseGroup

	stream next.	
	^ stream peek == $^ "not"
		ifTrue: [ stream next. TotLexerNotGroup new with: self parseGroupExpression ] "should return a lexer option"
		ifFalse: [ TotLexerGroup new with: self parseGroupExpression ]