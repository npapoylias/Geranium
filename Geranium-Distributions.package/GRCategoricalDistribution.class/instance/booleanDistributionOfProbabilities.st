accessing
booleanDistributionOfProbabilities

	^ booleanDistributionOfProbabilities ifNil: [  
			booleanDistributionOfProbabilities := probabilities collect: [:p | true % p ]]