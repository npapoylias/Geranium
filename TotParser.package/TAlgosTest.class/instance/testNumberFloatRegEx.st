tests
testNumberFloatRegEx

	charts := TAlgo new log
		parse: '23.23'
		using: TGrammar numberFloatRegEx.
		
	self assert: charts succeeded