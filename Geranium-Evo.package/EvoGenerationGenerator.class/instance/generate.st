instance creation
generate

	|newGeneration threshold randomIndividual reproductionPopulation|
	
	newGeneration := OrderedCollection new.
	threshold := (self sortedPopulation size * self survivalPercentage) rounded.
	
	1 to: threshold do: [:i | newGeneration add: (self sortedPopulation at: i) ].
	
	reproductionPopulation := newGeneration shallowCopy.
	
	threshold + 1 to: self sortedPopulation size do: [ :i | 
			|father mother|
			randomIndividual := [ 1 -> reproductionPopulation size ] asRangedDistribution.
			[ father == mother ] whileTrue: [ 
					father := reproductionPopulation at: randomIndividual next.
					mother := reproductionPopulation at: randomIndividual next.
			].
			newGeneration add: (father reproduceWith: mother) mutate.
			reproductionPopulation remove: father.
	].

	^ newGeneration
	