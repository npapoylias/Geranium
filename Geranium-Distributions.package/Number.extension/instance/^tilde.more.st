*Geranium-Distributions
~> aNumber
	
	^ (self isInteger and: [ aNumber isInteger ])
				ifTrue: [ GRNormalIntegerRangedDistribution new with: self -> aNumber ]
				ifFalse: [ GRNormalRangedDistribution new with: self -> aNumber ]