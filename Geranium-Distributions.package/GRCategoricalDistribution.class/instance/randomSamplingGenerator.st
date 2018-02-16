accessing
randomSamplingGenerator

	^ randomSamplingGenerator ifNil: [  
			randomSamplingGenerator := PMLinearCongruentialRandomGenerator new
		]