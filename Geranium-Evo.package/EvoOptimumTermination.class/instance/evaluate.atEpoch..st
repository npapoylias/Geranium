as yet unclassified
evaluate: bestfitnessMetricDiffFromOptimum atEpoch: epoch

	epoch > self maximumEpoch ifTrue: [ ^ true ].

	^ bestfitnessMetricDiffFromOptimum  = 0 
			ifTrue: [ true ]
			ifFalse: [ 
				bestfitnessMetricDiffFromOptimum <= self fitnessPercentageGoal			
			]
	