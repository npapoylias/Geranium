*Geranium-Distributions
~ aNumber
	
	^ ((self isInteger and: [ aNumber isInteger ])
			ifTrue: [ IntegerRangedDistribution new ]
			ifFalse: [ NormalRangedDistribution new ])
				mean: self;
				standardDeviation: aNumber;
				generator: PMLinearCongruentialRandomGenerator new.