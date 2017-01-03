tests
testStringNFAParts

	|result|	
	"start with this an build your way through"
	result := (ParsecLexer new parse: '"(\\[\\/"bfnrt])*"').
	self assert: (result asNFA match: '"\"\\\/\b\f\n\r\t\n"').
	result := (ParsecLexer new parse: '"[^\\"]*"').
	self assert: (result asNFA match: '"meh"').
	result := (ParsecLexer new parse: 'a*b*').
	self assert: (result asNFA match: 'sdfasdf'). "matched null string"
	result := (ParsecLexer new parse: '"(\\u[0-9a-fA-F]{4})*"').
	self assert: (result asNFA match: '"\u0aBc\u1dfE"').
	result := (ParsecLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: (result asNFA match: '"hallo world\n"').

	
