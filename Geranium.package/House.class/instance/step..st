accessing
step: time
	
	|step|
	step := super step: time.
	
	^ self class historyEnabled 
		ifTrue: [ 
			self 
				historyOf: #consumption
				add: step 
		] ifFalse: [ step ]
		 		