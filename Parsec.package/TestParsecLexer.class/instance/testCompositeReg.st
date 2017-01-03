tests
testCompositeReg
	
	|result|

	result := (ParsecLexer new parse: 'asdf+aaa?|a*(abc|d)?').
	self assert: result class = ParsecLexerOption.
	self assert: result first class = ParsecLexerConcat.
	self assert: result first first class = ParsecLexerPlus.
	self assert: result first first operand operand = 'asdf'.
	self assert: result first second class = ParsecLexerOpt.
	self assert: result first second operand operand = 'aaa'.
	self assert: result second class = ParsecLexerConcat.
	self assert: result second first class = ParsecLexerStar.
	self assert: result second first operand operand = $a.
	self assert: result second second class = ParsecLexerOpt.
	self assert: result second second operand class = ParsecLexerOption.	
	self assert: result second second operand first class = ParsecLexerOperand.	
	self assert: result second second operand first operand = 'abc'.	
	self assert: result second second operand second class = ParsecLexerOperand.	
	self assert: result second second operand second operand = $d.	
	