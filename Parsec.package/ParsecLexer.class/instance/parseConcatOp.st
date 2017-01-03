parsing
parseConcatOp

	|operand|
	operand := self parseAtom.
	('+*?{' includes: stream peek) 
		ifTrue: [ ^ self parseUnaryOp: operand ]
		ifFalse: [ "flatOp optimization"
			((operand isKindOf: ParsecLexerOperand) ifTrue: [ ^ operand ] ifFalse: [ ^ ParsecLexerOperand new: operand ]).  ]