tests
testFMOcontextSensitive

	charts := ParsecMixedOrderAlgo new log
		parse: 'aaabbbccc'
		using: ParsecGrammar contextSensitive.
		
	self assert: charts succeeded.