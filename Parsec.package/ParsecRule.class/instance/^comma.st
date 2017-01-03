ops
, aSymbolOrStringOrArray


	aSymbolOrStringOrArray isSymbol
		ifTrue: [ rightHandSide last addLast: aSymbolOrStringOrArray ]
		ifFalse: [ childRules addLast: aSymbolOrStringOrArray asRule. self , childRules last name ]
	
	