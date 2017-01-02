as yet unclassified
contextSensitiveWithNot

	"add numbered plus ?"

	^ self new 
	named: #Cs;
	with: {  
		#start --> #(A , 'c') and, 'a' pluso , #B , #('d' not \ 'd' pluso).
		#A --> 'a' , #A opto , 'b'.
		#B --> 'b' , #B opto , 'c'.
	}