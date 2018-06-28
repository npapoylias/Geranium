as yet unclassified
withSize: populationSize

	individuals := (1 to: populationSize) collect: [self individualClass new randomInitialize]