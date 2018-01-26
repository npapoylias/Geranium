*Geranium-Distribution
with: aValue

	aValue isNumber ifTrue: [ ^ ConstantDistribution new constant: aValue ].
	(aValue isKindOf: PMNumberGenerator) ifTrue: [ ^ aValue ].
	aValue isBlock ifTrue: [ |pair| 
		pair := aValue value. 
		pair class = Association ifFalse: [ ^ pair "other kind of generator" ].
		^ (pair key isInteger and: [ pair value isInteger ])
				ifTrue: [ UniformIntegerRangedDistribution new with: pair ]
				ifFalse: [ UniformRangedDistribution new with: pair ]
	]
	