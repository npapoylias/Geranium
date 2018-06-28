instance creation
generate

	|newGeneration threshold randomIndividual|
	
	randomIndividual := [ 1 -> self sortedPopulation size ] asRangedDistribution.
	
	newGeneration := OrderedCollection new.
	threshold := (self sortedPopulation size * self survivalPercentage) round.
	
	1 to: threshold do: [:i | newGeneration add: (self sortedPopulation at: i) ].
	
	threshold + 1 to: self sortedPopulation size do: [ :i | 
			|father mother|
			father := self sortedPopulation at: randomIndividual next.
			mother := self sortedPopulation at: randomIndividual next.
			newGeneration add: (father reproduceWith: mother) mutate.
	]
	