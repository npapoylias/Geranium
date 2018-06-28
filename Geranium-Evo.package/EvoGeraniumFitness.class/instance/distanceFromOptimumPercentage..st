public access
distanceFromOptimumPercentage: fitnessMetric

	^ (fitnessMetric - self optimumFitness) abs / self optimumFitness