tests
testOnumberFloatOrdered

	charts := ParsecOrderedAlgo new log
		parse: '23.23'
		using: ParsecGrammar numberFloatOrdered.
		
	self assert: charts succeeded