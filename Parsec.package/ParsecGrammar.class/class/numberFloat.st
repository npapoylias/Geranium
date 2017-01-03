as yet unclassified
numberFloat

	"See VP on Verb and Debug"

	^ self new 
	named: #EnglishGrammar;
	with: {  
		#start --> #Number , #('\.' , Number) opt.
		#Number --> #Digit plus.
		#Digit --> '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'.
	}