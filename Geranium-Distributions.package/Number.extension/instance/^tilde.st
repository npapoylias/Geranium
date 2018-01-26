*Geranium-Distributions
~ aNumber
	
	^ ((self isInteger and: [ aNumber isInteger ])
			ifTrue: [ NormalIntegerRangedDistribution new ]
			ifFalse: [ NormalRangedDistribution new ])
				mean: self;
				standardDeviation: aNumber;
				generator: PMLinearCongruentialRandomGenerator new.