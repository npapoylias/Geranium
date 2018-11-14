accessing
randomSamplingGenerator

	^ randomSamplingGenerator ifNil: [  
			randomSamplingGenerator := PMLinearCongruentialRandomGenerator new.
			randomSamplingGenerator seed: GRSeed seed.
			randomSamplingGenerator
		]