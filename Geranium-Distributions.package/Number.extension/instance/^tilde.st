*Geranium-Distributions
~ aNumber
	
	^ ((self isInteger and: [ aNumber isInteger ])
			ifTrue: [ GRNormalIntegerRangedDistribution new ]
			ifFalse: [ GRNormalRangedDistribution new ])
				mean: self;
				standardDeviation: aNumber";
				generator: PMLinearCongruentialRandomGenerator new."