accessing
consumptionForWeightInterval: weightInterval forValue: aValue inBooleanOptimumOf: aBoolean

	|fInterval impactPercentage|

	fInterval := self category fluctuationInterval.
	aBoolean ~= aValue
		ifTrue: [ impactPercentage := weightInterval key  ]
		ifFalse: [ impactPercentage := weightInterval value ].
	^ fInterval * impactPercentage