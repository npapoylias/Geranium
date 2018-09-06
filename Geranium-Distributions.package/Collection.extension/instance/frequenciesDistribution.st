*Geranium-Distributions
frequenciesDistribution
	|f sum|
	f := self frequencies.
	sum := f values sum.
	^ f values collect: [ :v | v / sum  ]