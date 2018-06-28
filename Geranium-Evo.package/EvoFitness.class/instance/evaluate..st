public access
evaluate: aPopulation

	sortedPopulation := self distanceFromOptimumPercentageSort: aPopulation.
	^ self bestDistPercentage 