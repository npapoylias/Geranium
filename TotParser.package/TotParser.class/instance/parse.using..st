parsing
parse: aString using: anAlgorithmClass

	| algoInst |
	algo := anAlgorithmClass.
	algoInst := self class log 
		ifTrue: [ algo new log ]
		ifFalse: [ algo new ].
	^ algoInst  parse: aString using: grammar