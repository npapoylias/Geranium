*Geranium-Distributions
frequencies

	|f|
	
	f := Dictionary new.
	self do: [ :item | 
		f at: item put: (f at: item ifAbsent: [ 0 ]) + 1
	].

	^ f