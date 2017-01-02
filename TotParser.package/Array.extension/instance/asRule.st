*TotParser
asRule

	| rule op|

	rule := TSubRule new name: ('t' , self hash asString) asSymbol.

	op := #,.
	
	self doWithIndex: [ :item :index | "catch unary" 
		(self catchUnaryFor: rule at: index given: op)
			ifFalse: [  
				(TGrammar unaryOps includes: item) "ignore cause it was handled as unary"
					ifFalse: [  
						(item isSymbol and: [TGrammar binaryOps includes: item])
							ifTrue: [ op := item ]
							ifFalse: [  rule perform: op withArguments: {item} ]
				]
			]
	].

	^ rule