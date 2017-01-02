tests
testCompositeReg
	
	|result|

	result := (TotLexer new parse: 'asdf+aaa?|a*(abc|d)?').
	self assert: result class = TotLexerOption.
	self assert: result first class = TotLexerConcat.
	self assert: result first first class = TotLexerPlus.
	self assert: result first first operand operand = 'asdf'.
	self assert: result first second class = TotLexerOpt.
	self assert: result first second operand operand = 'aaa'.
	self assert: result second class = TotLexerConcat.
	self assert: result second first class = TotLexerStar.
	self assert: result second first operand operand = $a.
	self assert: result second second class = TotLexerOpt.
	self assert: result second second operand class = TotLexerOption.	
	self assert: result second second operand first class = TotLexerOperand.	
	self assert: result second second operand first operand = 'abc'.	
	self assert: result second second operand second class = TotLexerOperand.	
	self assert: result second second operand second operand = $d.	
	