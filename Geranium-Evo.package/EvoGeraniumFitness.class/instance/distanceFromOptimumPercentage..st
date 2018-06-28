public access
distanceFromOptimumPercentage: individual

	^ (individual fitnessMetric - self optimumFitness) abs / self optimumFitness