parsing
parseOptionOp

	|result|
	result := ParsecLexerConcat new.
	result add: self parseConcatOp.
	[(#($| $) nil) includes: stream peek)] 
		whileFalse: [ result add: self parseConcatOp. ]. 
	^ result size = 1 ifTrue: [ result first ] ifFalse: [ result ] "flatten"