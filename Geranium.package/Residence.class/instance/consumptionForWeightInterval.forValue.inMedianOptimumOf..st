accessing
consumptionForWeightInterval: weightInterval forValue: aValue inMedianOptimumOf: aRange

	|fInterval impactPercentage impact|
	
	fInterval := self category fluctuationInterval.
	(aValue - (self medianOf: aRange)) abs <= ((self halfRadiusOf: aRange) * 0.1)
		ifTrue: [ impactPercentage := weightInterval key  ]
		ifFalse: [ impactPercentage := weightInterval value ].
	impact := impactPercentage * ((aValue - (self medianOf: aRange)) abs / (self halfRadiusOf: aRange)).
	^ fInterval * impact
	