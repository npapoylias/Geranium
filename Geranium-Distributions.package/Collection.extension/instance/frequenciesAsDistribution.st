*Geranium-Distributions
frequenciesAsDistribution
	|f sum|
	f := self frequencies.
	sum := f values sum.
	^ f keys % (f values collect: [ :v | v / sum  ])