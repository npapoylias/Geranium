tests
testNonPegOrd

	charts := ParsecMixedOrderAlgo new log
		parse: 'xxxxxxx'
		using: ParsecGrammar nonPegOrd.
		
	self assert: charts succeeded