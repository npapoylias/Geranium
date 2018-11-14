instance creation
with: aRange

	min := aRange key. 
	max := aRange value.
	mean ifNotNil: [ "may have been already set" 
		self mean: max + min / 2.
		self standardDeviation: (max - mean) / 4. "4 sigma till max"
		"self generator: PMLinearCongruentialRandomGenerator new."
	].