tests
testNonPegOrd

	charts := TMOAlgo new log
		parse: 'xxxxxxx'
		using: TGrammar nonPegOrd.
		
	self assert: charts succeeded