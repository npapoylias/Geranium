tests
testFMOcontextSensitive

	charts := TMOAlgo new log
		parse: 'aaabbbccc'
		using: TGrammar contextSensitive.
		
	self assert: charts succeeded.