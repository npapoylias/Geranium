accessing
seed: symbolOrNumber

	symbolOrNumber isSymbol
		ifTrue: [ GRSeed perform: symbolOrNumber ]
		ifFalse: [ GRSeed seed: symbolOrNumber ]
