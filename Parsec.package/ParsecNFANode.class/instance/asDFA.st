initialization
asDFA

	"unroll collect and anySatisfy here, after testing"

	|setToInt counter newSetStack finalCollection|
	finalCollection := OrderedCollection new.
	setToInt := Dictionary new.
	newSetStack := FILOStack new.
	counter := 0.
	newSetStack push: (self isAuto ifFalse: [{self}] ifTrue: [self followEpsilons])  asSet. "follow epsilons in the initial state".
	setToInt at: newSetStack top put: (counter := counter + 1).
	[newSetStack isEmpty] whileFalse: [ |current|
		current := newSetStack pop.  
		finalCollection add: (Array new: 257). "the last one marks if this is end"
		finalCollection last at: 257 put: (current anySatisfy: [:n | n isEnd]). 
		0 to: 255 do: [ :i |  |newSet|
			newSet := (current collect: [ :n | n lexMatch: (Character value: i)]) deepFlatten asSet.
			newSet isEmpty
				ifTrue: [ finalCollection last at: i + 1 put: nil ]
			 	ifFalse: [  |index|
					index := setToInt at: newSet ifAbsent: [ newSetStack push: newSet. setToInt at: newSet put: (counter := counter + 1) ].
					finalCollection last at: i + 1 put: index.
				]
		]
	].

	^ ParsecDFAArray new with: finalCollection asArray