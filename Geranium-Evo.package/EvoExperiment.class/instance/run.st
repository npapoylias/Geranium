running
run

	stats := OrderedCollection new.

	epoch := 1.

	population := self diversityPopulationClass new generate.
	fitnessMetric := self fitnessEvaluatorClass new.
	terminationCondition := self optimumTerminationClass new.
	generationGenerator := self generationGeneratorClass new.	

	[ terminationCondition 
		evaluate: (stats add: (fitnessMetric evaluate: population)) 
		atEpoch: epoch ] whileFalse: [  
			population individuals: 
				(generationGenerator 
					from: fitnessMetric sortedPopulation; 
					generate).
			epoch := epoch + 1  
		].
	
	^ {self . stats . fitnessMetric sortedPopulation first} 
		