parsing
parseUnaryOp: operand

	|op flatOp|
	op := stream next.
	"flatOp := (operand isKindOf: TotLexerOperand) ifTrue: [ operand operand ] ifFalse: [ operand ]. "
	flatOp := operand. "review flattening, cause it can change not-group semantics"
	"optimization: either string or composite" 
	op = $+ ifTrue: [ ^ ParsecLexerPlus new: flatOp ].
	op = $* ifTrue: [ ^ ParsecLexerStar new: flatOp ].
	op = $? ifTrue: [ ^ ParsecLexerOpt new: flatOp ].	
	op = ${ ifTrue: [ ^ self parseCountedRepetition with: flatOp ].