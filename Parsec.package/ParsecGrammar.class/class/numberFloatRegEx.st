as yet unclassified
numberFloatRegEx

	"See VP on Verb and Debug"

	^ self new 
	named: #EnglishGrammar;
	with: {  
		#start --> #Number , #('\.' , Number) opt.
		#Number --> '[0-9]+'.
	}