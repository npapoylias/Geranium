parsing
parseGroupExpression

	|optionNode|
	
	optionNode := TotLexerOption new.
	[(stream peek == $]) not] whileTrue: [  
		stream peek = $\
			ifTrue: [ optionNode add: self parseEscape ]
			ifFalse: [ |start| start := stream next. 
				stream peek = $- 
					ifTrue: [ |finish| 
						stream next. 
						finish := stream next. 
						optionNode 
							add: (TotLexerRange new with: start -> finish)  ]
					ifFalse: [ optionNode add: (TotLexerOperand new with: start) ]
			]].
	stream next. "eat ]"
	^ optionNode size = 1 ifTrue: [ optionNode first ] ifFalse: [ optionNode ] "flatten"