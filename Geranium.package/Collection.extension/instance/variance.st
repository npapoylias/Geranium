*Geranium
variance

	|avg|
	avg := self average.
	^ (self collect: [ :i | (avg - i) squared / self size  ]) sum