*TotParser
catchUnaryFor: aRule at: anIndex given: anOp

	^ (anIndex < self size)
		ifTrue: [ |unaryOp | 
			(TGrammar unaryOps includes: (unaryOp := (self at: anIndex + 1)))
				ifTrue: [ aRule perform: anOp withArguments: { (self at: anIndex) perform: unaryOp }. true ]
				ifFalse: [ false ]
		] ifFalse: [ false ]
