tests
testFMOcontextSensitiveWithNot

	charts := TMOAlgo new log
		parse: 'aaabbbccc'
		using: TGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.
	
	charts := TMOAlgo new log
		parse: 'aaabbbcccddd' "staro with not and pluso"
		using: TGrammar contextSensitiveWithNot.
		
	self assert: charts succeeded.