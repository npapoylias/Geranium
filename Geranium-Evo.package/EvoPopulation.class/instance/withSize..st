as yet unclassified
withSize: populationSize

	individuals := (1 to: populationSize) collect: [:i | self individualClass new randomInitialize]