as yet unclassified
forkParse: aStream at: position using: aGrammar

	input := aStream.
	grammar := aGrammar. "can be optimized"
	dummyRule grammar: grammar.
	charts currentAdd: 
		(ParsecState on: dummyRule alternative: 1 from: 0 to: 0 dot: 0).
		
	(grammar at: #ignore) regExpr matchesStreamPrefix: input. "always at the start of next token"
	
	readingPosition := position.
	
	charts current last start: readingPosition; end: readingPosition. "dummy rule starts at fork" 
	
	"proceed returns true while we have more charts to loop through"
	[charts currentDo: 
		[:state | self totAlgoOn: state]; proceed] whileTrue.

	^ (charts last detect: [ :state | state rule name = #gamma ]) to " on NotFound ? "
	 