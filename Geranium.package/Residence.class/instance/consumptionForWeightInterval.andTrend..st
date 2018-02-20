accessing
consumptionForWeightInterval: weightInterval andTrend: trendPercentage

	|fInterval impactPercentage impact|

	fInterval := self category fluctuationInterval.
	trendPercentage < 0
		ifTrue: [ impactPercentage := weightInterval key  ]
		ifFalse: [ impactPercentage := weightInterval value ].
	impact := impactPercentage * trendPercentage.
	^ fInterval * impact
	