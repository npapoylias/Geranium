accessing
step: time
	
	|step awareStep ownStep|
	awareStep := 0.
	ownStep := 0.
	step := super step: time.
	self occupants awareness asBoolean
				ifTrue: [ awareStep := awareStep + step ].
	self occupants ownership 
				ifTrue: [ ownStep := ownStep + step ].
	
	^ { self class historyEnabled 
		ifTrue: [ 
			self 
				historyOf: #consumption
				add: step 
		] ifFalse: [ step ] . ownStep . awareStep}
		 		