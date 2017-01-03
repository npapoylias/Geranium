tests
testStringNFA

	|result|	
	
	result := (ParsecLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	self assert: result asList = {#ParsecLexerConcat. {
						{#ParsecLexerOperand. $"}. 
						{#ParsecLexerStar. 
							{#ParsecLexerOption. {
								{#ParsecLexerConcat. {
									{#ParsecLexerEscape. $\}. 
									{#ParsecLexerGroup. 
									{#ParsecLexerOption. {
										{#ParsecLexerEscape. $\}. 
										{#ParsecLexerOperand. $/}. 
										{#ParsecLexerOperand. $"}. 
										{#ParsecLexerOperand. $b}. 
										{#ParsecLexerOperand. $f}. 
										{#ParsecLexerOperand. $n}. 
										{#ParsecLexerOperand. $r}. 
										{#ParsecLexerOperand. $t}}}}}}. 
						 		{#ParsecLexerConcat. {
									{#ParsecLexerEscape. $\}. 
									{#ParsecLexerOperand. $u}. 
									{#ParsecLexerRepetition. { #ParsecLexerGroup. 
									{#ParsecLexerOption. {
										{#ParsecLexerRange. $0->$9}. 
										{#ParsecLexerRange. $a->$f}. 
										{#ParsecLexerRange. $A->$F}}}}}}}. 
								{#ParsecLexerNotGroup. 
									{#ParsecLexerOption. {
										{#ParsecLexerEscape. $\}. 
										{#ParsecLexerOperand. $"}}}}}}}. 
						{#ParsecLexerOperand. $"}}}.
		self assert: (result match: '"hallo world\n"').
		self assert: (result match: '"hallo world\n') not.
		self assert: (result asNFA match: '"hallo world\n"').
		self assert: (result asNFA match: '"hallo "world\n"').
		self assert: (result asNFA match: '"hallo world\n') not.