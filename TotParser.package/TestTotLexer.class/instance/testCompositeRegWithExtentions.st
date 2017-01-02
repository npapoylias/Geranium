tests
testCompositeRegWithExtentions
	
	|result|

	result := (TotLexer new parse: 'asd.\n[a-zA-Z]+aaa?|a{3}(abc|d){2,5}').
	self assert: result class = TotLexerOption.
	self assert: result first class = TotLexerConcat.
	self assert: result first first class = TotLexerOperand.
	self assert: result first first operand = 'asd'.
	self assert: result first second class = TotLexerAny.
	self assert: result first second operand = nil.
	self assert: result first third class = TotLexerEscape.
	self assert: result first fourth class = TotLexerPlus.
	"self assert: result first fourth operand class = TotLexerOption." "flattened"
	self assert: result second class = TotLexerConcat.
	self assert: result second first class = TotLexerRepetition.
	self assert: result second first operand operand = $a.
	self assert: result second second class = TotLexerRepetition.
	self assert: result second second operand class = TotLexerOption.	
	self assert: result second second operand first class = TotLexerOperand.	
	self assert: result second second operand first operand = 'abc'.	
	self assert: result second second operand second class = TotLexerOperand.	
	self assert: result second second operand second operand = $d.	
	