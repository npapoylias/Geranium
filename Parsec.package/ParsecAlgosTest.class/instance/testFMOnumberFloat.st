tests
testFMOnumberFloat

	charts := ParsecMixedOrderAlgo new log
		parse: '23.23'
		using: ParsecGrammar numberFloat.
		
	self assert: charts succeeded.