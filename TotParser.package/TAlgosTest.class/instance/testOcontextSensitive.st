tests
testOcontextSensitive
	
	charts := TOAlgo new log
		parse: 'aaabbbccc'
		using: TGrammar contextSensitive.

	self assert: charts succeeded