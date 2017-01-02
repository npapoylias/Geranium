tests
testString

	|result|	
	
	result := (TotLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: result asList = {#TotLexerConcat. {
						{#TotLexerOperand. $"}. 
						{#TotLexerStar. 
							{#TotLexerOption. {
								{#TotLexerConcat. {
									{#TotLexerEscape. $\}. 
									{#TotLexerGroup. 
									{#TotLexerOption. {
										{#TotLexerEscape. $\}. 
										{#TotLexerOperand. $/}. 
										{#TotLexerOperand. $"}. 
										{#TotLexerOperand. $b}. 
										{#TotLexerOperand. $f}. 
										{#TotLexerOperand. $n}. 
										{#TotLexerOperand. $r}. 
										{#TotLexerOperand. $t}}}}}}. 
						 		{#TotLexerConcat. {
									{#TotLexerEscape. $\}. 
									{#TotLexerOperand. $u}. 
									{#TotLexerRepetition. { #TotLexerGroup. 
									{#TotLexerOption. {
										{#TotLexerRange. $0->$9}. 
										{#TotLexerRange. $a->$f}. 
										{#TotLexerRange. $A->$F}}}}}}}. 
								{#TotLexerNotGroup. 
									{#TotLexerOption. {
										{#TotLexerEscape. $\}. 
										{#TotLexerOperand. $"}}}}}}}. 
						{#TotLexerOperand. $"}}}.
		self assert: (result match: '"hallo world\n"').
		self assert: (result match: '"hallo world\n') not.