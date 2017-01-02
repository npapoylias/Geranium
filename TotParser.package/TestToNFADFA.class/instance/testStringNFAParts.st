tests
testStringNFAParts

	|result|	
	"start with this an build your way through"
	result := (TotLexer new parse: '"(\\[\\/"bfnrt])*"').
	self assert: (result asNFA match: '"\"\\\/\b\f\n\r\t\n"').
	result := (TotLexer new parse: '"[^\\"]*"').
	self assert: (result asNFA match: '"meh"').
	result := (TotLexer new parse: 'a*b*').
	self assert: (result asNFA match: 'sdfasdf'). "matched null string"
	result := (TotLexer new parse: '"(\\u[0-9a-fA-F]{4})*"').
	self assert: (result asNFA match: '"\u0aBc\u1dfE"').
	result := (TotLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: (result asNFA match: '"hallo world\n"').

	
