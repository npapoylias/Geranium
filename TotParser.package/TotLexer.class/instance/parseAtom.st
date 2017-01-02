parsing
parseAtom

	^ $( == stream peek
		ifTrue: [ |ret| stream next. ret := self parseRe. 
			stream next = $) ifFalse: [ self error: ') expected' ].
			ret 
		]
		ifFalse: [  
			|atom peek|
			atom := '' writeStream.
			peek := stream peek.
			$[ == peek ifTrue: [ ^ self parseGroup ].
			$. == peek ifTrue: [ ^ self parseAny ].
			$\ == peek ifTrue: [ ^ self parseEscape ].
			[(#($( $) $+ $* $| $? $[ $. $\ ${ nil) includes: stream peek)] 
				whileFalse: [ atom nextPut: stream next ].
			TotLexerOperand new: atom contents.
		]  