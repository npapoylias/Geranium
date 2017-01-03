tests
testCompositeRegWithExtentions
	
	|result|

	result := (ParsecLexer new parse: 'asd.\n[a-zA-Z]+aaa?|a{3}(abc|d){2,5}').
	self assert: result class = ParsecLexerOption.
	self assert: result first class = ParsecLexerConcat.
	self assert: result first first class = ParsecLexerOperand.
	self assert: result first first operand = 'asd'.
	self assert: result first second class = ParsecLexerAny.
	self assert: result first second operand = nil.
	self assert: result first third class = ParsecLexerEscape.
	self assert: result first fourth class = ParsecLexerPlus.
	"self assert: result first fourth operand class = TotLexerOption." "flattened"
	self assert: result second class = ParsecLexerConcat.
	self assert: result second first class = ParsecLexerRepetition.
	self assert: result second first operand operand = $a.
	self assert: result second second class = ParsecLexerRepetition.
	self assert: result second second operand class = ParsecLexerOption.	
	self assert: result second second operand first class = ParsecLexerOperand.	
	self assert: result second second operand first operand = 'abc'.	
	self assert: result second second operand second class = ParsecLexerOperand.	
	self assert: result second second operand second operand = $d.	
	