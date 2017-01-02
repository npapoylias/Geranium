parsing
parseConcatOp

	|operand|
	operand := self parseAtom.
	('+*?{' includes: stream peek) 
		ifTrue: [ ^ self parseUnaryOp: operand ]
		ifFalse: [ "flatOp optimization"
			((operand isKindOf: TotLexerOperand) ifTrue: [ ^ operand ] ifFalse: [ ^ TotLexerOperand new: operand ]).  ]