as yet unclassified
evaluate: bestfitnessMetricDiffFromOptimum atEpoch: epoch

	Transcript show: 'Generation/Epoch: '; show: epoch; cr.  

	epoch >= self maximumEpoch ifTrue: [ ^ true ].

	^ bestfitnessMetricDiffFromOptimum  = 0 
			ifTrue: [ true ]
			ifFalse: [ 
				bestfitnessMetricDiffFromOptimum <= self fitnessPercentageGoal			
			]
	