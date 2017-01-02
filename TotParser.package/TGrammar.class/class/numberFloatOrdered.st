as yet unclassified
numberFloatOrdered

	"See VP on Verb and Debug"

	^ self new 
	named: #EnglishGrammar;
	with: {  
		#start --> #Number , #('\.' , Number) opto.
		#Number --> #Digit pluso.
		#Digit --> '0' | '1' | '2' | '3' | '4' | '5' | '6' \'7' | '8' | '9'. "one oredered will change the whole rule"
	}