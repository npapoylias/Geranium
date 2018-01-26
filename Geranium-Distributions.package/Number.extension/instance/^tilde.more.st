*Geranium-Distributions
~> aNumber
	
	^ (self isInteger and: [ aNumber isInteger ])
				ifTrue: [ NormalIntegerRangedDistribution new with: self -> aNumber ]
				ifFalse: [ NormalRangedDistribution new with: self -> aNumber ]