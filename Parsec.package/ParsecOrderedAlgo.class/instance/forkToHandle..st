as yet unclassified
forkToHandle: aState

	|resultPosition forkedGrammar |
	
	"optimizaiton: retrieve memoized terminals"
	(forkedGrammar := grammar copy)
		at: aState ruleAtDot name put: aState ruleAtDot copy beVanilla;
		at: #start put: ((#start --> aState ruleAtDot name) "firsts: aState ruleAtDot firsts").

	resultPosition := 
		(logging
			ifTrue: [ self class new log ]
			ifFalse: [ self class new ]) 
			forkParse: input 
			at: readingPosition 
			using: forkedGrammar.
	input position: readingPosition. "restore"
	charts printToLog.
	(resultPosition > readingPosition) "succeed"
			ifTrue: [ aState expectingAnd 
								ifTrue: [ aState advanceDot. self totAlgoOn: aState ]
								ifFalse: [ self backTrack "expected not but succeeded" ] ]
			ifFalse: [ aState expectingNot
								ifTrue: [ aState advanceDot. self totAlgoOn: aState ] "failed with not"
								ifFalse: [ self backTrack ] ] "failed with and"		
