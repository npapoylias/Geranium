parsing
parseGroup

	stream next.	
	^ stream peek == $^ "not"
		ifTrue: [ stream next. ParsecLexerNotGroup new with: self parseGroupExpression ] "should return a lexer option"
		ifFalse: [ ParsecLexerGroup new with: self parseGroupExpression ]