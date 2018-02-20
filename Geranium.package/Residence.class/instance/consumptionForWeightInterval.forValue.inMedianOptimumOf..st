accessing
consumptionForWeightInterval: weightInterval forValue: aValue inMedianOptimumOf: aRange

	|fInterval impactPercentage impact|

	fInterval := self category fluctuationInterval.
	(aValue - (self medianOf: aRange)) abs <= (self halfRadiusOf: aRange) * 0.05
		ifTrue: [ impactPercentage := weightInterval value  ]
		ifFalse: [ impactPercentage := weightInterval key ].
	impact := impactPercentage * ((aValue - self medianOf: aRange) abs / (self halfRadiusOf: aRange)).
	^ fInterval * impact
	