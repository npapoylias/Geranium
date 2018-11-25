accessing
consumptionForWeightInterval: weightInterval forValue: aValue inBooleanOptimumOf: aBoolean

	|fInterval impactPercentage|

	fInterval := self category fluctuationInterval.
	aBoolean ~= aValue
		ifTrue: [ impactPercentage := weightInterval value  ]
		ifFalse: [ impactPercentage := weightInterval key ].
	^ fInterval * impactPercentage