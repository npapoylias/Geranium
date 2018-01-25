instance creation
with: aValue

	aValue isNumber ifTrue: [ ^ ConstantDistribution new constant: aValue ].
	(aValue isKindOf: PMNumberGenerator) ifTrue: [ ^ aValue ].
	aValue isBlock ifTrue: [ |pair| 
		pair := aValue value. 
		^ (pair key isInteger and: [ pair value isInteger ])
				ifTrue: [ IntegerRangedDistribution new with: pair ]
				ifFalse: [ NormalRangedDistribution new with: pair ]
	]
	