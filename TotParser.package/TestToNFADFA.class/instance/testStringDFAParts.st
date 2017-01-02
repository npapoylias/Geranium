tests
testStringDFAParts

	|result|	
	"start with this an build your way through"
	result := (TotLexer new parse: '"(\\[\\/"bfnrt])*"').
	self assert: (result asDFA match: '"\"\\\/\b\f\n\r\t\n"').
	result := (TotLexer new parse: '"[^\\"]*"').
	self assert: (result asDFA match: '"meh"').
	result := (TotLexer new parse: '"(\\u[0-9a-fA-F]{4})"').
	self assert: (result asDFA match: '"\u0aBc"').
	result := (TotLexer new parse: '"(\\u[0-9a-fA-F]{4})+"').
	self assert: (result asDFA match: '"\u0aBc\u1dfE"').
	result := (TotLexer new parse: 'a*b*').
	self assert: (result asDFA match: 'sdfasdf'). "matched null string"
	result := (TotLexer new parse: 'a*b*').
	self assert: (result asDFA match: 'aaaaa').
	result := (TotLexer new parse: '"(a*)"').
	self assert: (result asDFA match: '"aaaaa"').
	result := (TotLexer new parse: '"(a*)(b*)').
	self assert: (result asDFA match: '"aaaaa').
	result := (TotLexer new parse: '"(a*)(b*)"').
	self assert: (result asDFA match: '"aaaaa"').
	result := (TotLexer new parse: '"(\\u[0-9a-fA-F]{4})*"').
	self assert: (result asDFA match: '"\u0aBc\u1dfE"').
	result := (TotLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: (result asDFA match: '"hallo world\n"').
	
	
