initialization
lexMatch: aChar "aChar can be nil marking auto"

	^ 	(self check: aChar) 
			ifTrue: [ self followEpsilons ] 
			ifFalse:[ {  } ] 
		