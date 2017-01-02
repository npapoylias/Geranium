as yet unclassified
englishWithTemps

	"TODO: add #(0-9) for digit , #number and #(A-Za-z) for chars and ids 
	as primitives / terminals, then epsilon, plus, star and ochoice..
	You can have the same with a Class. This is the bigger grammar from 2nd edition.
	
	Optimz Note: the notion of terminal can be generilized to arbitary complex hand-written
	or not expressions"

	^ self new 
	named: #EnglishGrammar;
	with: {  
		#start --> #NP , #VP | #(#Aux , #NP , #VP) | #VP.
		#NP --> #Det , #Nominal | #ProperNoun | #Pronoun.
		#Nominal --> #Noun | #(#Nominal , #Noun | #Nominal , #PP).
		#PP --> #Prep, #NP.	
		#VP --> #Verb | #Verb , #NP | #Verb , #NP , #PP | #Verb , #PP | #VP , #PP.
		#Det --> 'that' | 'this' | 'a'.
		#Noun --> 'book' | 'flight' | 'meal' | 'money'.
		#Verb --> 'book' | 'include' | 'prefer'.
		#Aux --> 'does'.
		#Prep --> 'from' | 'to' | 'on' | 'near' | 'through'.
		#ProperNoun --> 'Houston' | 'TWA'.
		#Pronoun --> 'I' | 'She' | 'Me'.
	}