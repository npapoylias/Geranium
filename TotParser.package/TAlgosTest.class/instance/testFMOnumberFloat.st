tests
testFMOnumberFloat

	charts := TMOAlgo new log
		parse: '23.23'
		using: TGrammar numberFloat.
		
	self assert: charts succeeded.