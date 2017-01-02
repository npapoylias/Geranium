tests
testNonPegOrdJustO

	charts := TOAlgo new log
		parse: 'xxxxxxx'
		using: TGrammar nonPegOrd.
		
	self assert: charts succeeded