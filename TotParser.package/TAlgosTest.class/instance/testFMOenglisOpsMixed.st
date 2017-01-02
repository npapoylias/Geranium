tests
testFMOenglisOpsMixed

	charts := TMOAlgo new log
		parse: 'book that flight   '
		using: TGrammar englishWithTempsEmptyInlineTerminalsAndOpsMixed.
		
	self assert: charts succeeded.