*Geranium-Distribution
with: aValue

	aValue isNumber ifTrue: [ ^ GRConstantDistribution new constant: aValue ].
	(aValue isKindOf: PMNumberGenerator) ifTrue: [ ^ aValue ].
	aValue isBlock ifTrue: [ |pair| 
		pair := aValue value. 
		pair class = Association ifFalse: [ ^ pair "other kind of generator" ].
		^ (pair key isInteger and: [ pair value isInteger ])
				ifTrue: [ GRUniformIntegerRangedDistribution new with: pair ]
				ifFalse: [ GRUniformRangedDistribution new with: pair ]
	].
	^ aValue "something else"
	