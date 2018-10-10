*Geranium-Distributions
frequenciesAsColorDistribution
	|f sum colors|
	f := self frequencies.
	sum := f values sum.
	colors := Color distinctTenStrongColors.
	^ ((0 to: f keys size -1) collect: [ :i | (colors at: (i % colors size)+1) ]) 
	% (f values collect: [ :v | (v / sum) * 100.0  ])