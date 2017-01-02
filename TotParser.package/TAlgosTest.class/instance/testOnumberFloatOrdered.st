tests
testOnumberFloatOrdered

	charts := TOAlgo new log
		parse: '23.23'
		using: TGrammar numberFloatOrdered.
		
	self assert: charts succeeded