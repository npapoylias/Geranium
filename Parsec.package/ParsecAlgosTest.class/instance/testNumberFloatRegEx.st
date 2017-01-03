tests
testNumberFloatRegEx

	charts := ParsecAlgo new log
		parse: '23.23'
		using: ParsecGrammar numberFloatRegEx.
		
	self assert: charts succeeded