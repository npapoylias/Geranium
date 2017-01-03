tests
testOcontextSensitive
	
	charts := ParsecOrderedAlgo new log
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitive.

	self assert: charts succeeded