as yet unclassified
englishWithTempsEmptyAndInlineTerminals

	"See VP on Verb and Debug"

	^ self new 
	named: #EnglishGrammar;
	with: {  
		#start --> #NP , #VP | #Aux , #NP , #VP | #VP.
		#NP --> #('that' | 'this' | 'a') , #Nominal | #ProperNoun | #Pronoun.
		#Nominal --> #Noun | #Nominal , #Noun | #Nominal , #PP.
		#PP --> #Prep, #NP.	
		#VP --> #Verb , #(NP | e) , #(PP | e) | #VP , #PP. "this is actually the op = ?"
		"#Det --> 'that' | 'this' | 'a'."
		#Noun --> 'book' | 'flight' | 'meal' | 'money'.
		#Verb --> 'book' | 'include' | 'prefer'.
		#Aux --> 'does'.
		#Prep --> 'from' | 'to' | 'on' | 'near' | 'through'.
		#ProperNoun --> 'Houston' | 'TWA'.
		#Pronoun --> 'I' | 'She' | 'Me'.
	}