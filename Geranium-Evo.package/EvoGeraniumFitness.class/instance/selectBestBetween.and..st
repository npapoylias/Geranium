public access
selectBestBetween: a and: b
	
	| aDist bDist |
	aDist := self distanceFromOptimumPercentage: a.
	bDist := self distanceFromOptimumPercentage: b.
	aDist < bDist
		ifTrue: [ bestDistPercentage := aDist. true ]
		ifFalse: [ bestDistPercentage := bDist. false ] 

		