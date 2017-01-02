tests
testFMOenglisOpsMixedWithError


	charts := TMOAlgo new log
		parse: 'book that flight   8'
		using: TGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded not.