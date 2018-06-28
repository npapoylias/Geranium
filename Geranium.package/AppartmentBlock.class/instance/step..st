accessing
step: time

	|step|
	step := (self appartments values collect: 
		[ :appartment | appartment step: time ]) sum.

	^ self class historyEnabled 
		ifTrue: [ 
			self 
				historyOf: #consumption
				add: step 
		] ifFalse: [ step ]

