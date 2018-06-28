running
run

	epoch := 1.

	population := self diversityPopulationClass new generate.
	fitnessMetric := self fitnessEvaluatorClass new.
	terminationCondition := self optimumTerminationClass new.
	generationGenerator := self generationGeneratorClass new.	

	[ terminationCondition 
		evaluate: (fitnessMetric evaluate: population) 
		atEpoch: epoch ] whileFalse: [  
			population := generationGenerator 
				from: fitnessMetric sortedPopulation; 
				generate  
		]
		