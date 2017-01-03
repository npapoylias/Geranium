tests
testNonPeg

	charts := ParsecMixedOrderAlgo new log
		parse: 'xxxxxxx'
		using: ParsecGrammar nonPeg.
		
	self assert: charts succeeded