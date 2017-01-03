tests
testNonPegOrdJustO

	charts := ParsecOrderedAlgo new log
		parse: 'xxxxxxx'
		using: ParsecGrammar nonPegOrd.
		
	self assert: charts succeeded