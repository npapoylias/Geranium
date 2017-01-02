as yet unclassified
contextSensitive

	"add numbered plus ?"

	^ self new 
	named: #Cs;
	with: {  
		#start --> #(A , 'c') and, 'a' pluso , #B.
		#A --> 'a' , #A opto , 'b'.
		#B --> 'b' , #B opto , 'c'.
	}