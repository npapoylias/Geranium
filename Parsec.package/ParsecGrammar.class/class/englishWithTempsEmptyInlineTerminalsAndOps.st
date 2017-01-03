as yet unclassified
englishWithTempsEmptyInlineTerminalsAndOps

	"See VP on Verb and Debug"

	^ self new 
	named: #EnglishGrammar;
	with: {  
		#start --> #NP , #VP | #Aux , #NP , #VP | #VP.
		#NP --> #('that' | 'this' | 'a') , #Nominal | #ProperNoun | #Pronoun.
		#Nominal --> #Noun | #Nominal , #Noun | #Nominal , #PP.
		#PP --> #Prep, #NP.	
		#VP --> #(Verb , NP opt , PP star) plus. "covers all"
		"#Det --> 'that' | 'this' | 'a'."
		#Noun --> 'book' | 'flight' | 'meal' | 'money'.
		#Verb --> 'book' | 'include' | 'prefer'.
		#Aux --> 'does'.
		#Prep --> 'from' | 'to' | 'on' | 'near' | 'through'.
		#ProperNoun --> 'Houston' | 'TWA'.
		#Pronoun --> 'I' | 'She' | 'Me'.
	}