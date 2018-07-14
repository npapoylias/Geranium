*Geranium-Distributions
percentageFrequencies

	|f sum|

	f := self frequencies.
	sum := f values sum.
	^ (f associations collect: [ :assoc | assoc key -> (assoc value / sum) ]) asDictionary