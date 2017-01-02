tests
testStringParts

	|result|	
	"start with this an build your way through"
	result := (TotLexer new parse: '"(\\[\\/"bfnrt])*"').
	self assert: (result match: '"\"\\\/\b\f\n\r\t\n"').
	result := (TotLexer new parse: '"[^\\"]*"').
	self assert: (result match: '"meh"').
	result := (TotLexer new parse: '"(\\u[0-9a-fA-F]{4})*"').
	self assert: (result match: '"\u0aBc\u1dfE"').
	result := (TotLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: (result match: '"hallo world\n"').

	
