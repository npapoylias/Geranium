accessing
step: time

	|step ownStep awareStep|
	
	ownStep := 0.
	
	awareStep := 0.
	
	step := (self appartments values collect: [ :appartment | |s|
			s := appartment step: time.
			appartment occupants awareness asBoolean
				ifTrue: [ awareStep := awareStep + s ].
			appartment occupants ownership 
				ifTrue: [ ownStep := ownStep + s ].
			s 
	]) sum.

	^ { self class historyEnabled 
		 ifTrue: [
			self 
				historyOf: #consumption
				add: step. 
		] ifFalse: [ step ] . ownStep . awareStep}

