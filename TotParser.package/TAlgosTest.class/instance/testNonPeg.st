tests
testNonPeg

	charts := TMOAlgo new log
		parse: 'xxxxxxx'
		using: TGrammar nonPeg.
		
	self assert: charts succeeded