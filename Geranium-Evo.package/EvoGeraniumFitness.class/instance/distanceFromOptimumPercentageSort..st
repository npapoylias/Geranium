public access
distanceFromOptimumPercentageSort: aPopulation

	^ aPopulation shallowCopy  
		sort: [ :a :b | 
			self selectBestBetween: a and: b
		]