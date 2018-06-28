public access
distanceFromOptimumPercentageSort: aPopulation

	^ aPopulation individuals shallowCopy  
		sort: [ :a :b | 
			self selectBestBetween: a and: b
		]