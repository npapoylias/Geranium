as yet unclassified
evaluate: bestfitnessMetricDiffFromOptimum atEpoch: epoch

	epoch > self maximumEpoch ifTrue: [ ^ false ].

	^ bestfitnessMetricDiffFromOptimum  = 0 
			ifTrue: [ false ]
			ifFalse: [ 
				bestfitnessMetricDiffFromOptimum > self fitnessPercentageGoal			
			]
	