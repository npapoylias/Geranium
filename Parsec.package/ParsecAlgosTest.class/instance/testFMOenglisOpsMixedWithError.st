tests
testFMOenglisOpsMixedWithError


	charts := ParsecMixedOrderAlgo new log
		parse: 'book that flight   8'
		using: ParsecGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded not.