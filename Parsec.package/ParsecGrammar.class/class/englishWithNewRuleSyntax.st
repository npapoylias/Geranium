as yet unclassified
englishWithNewRuleSyntax


	^ self new 
	named: #EnglishGrammar;
	with: #(  
		start -> NP  VP | Aux NP  VP | VP.
		...
	)