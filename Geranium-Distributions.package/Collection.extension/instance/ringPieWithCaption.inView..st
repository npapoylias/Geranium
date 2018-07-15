*Geranium-Distributions
ringPieWithCaption: aString inView: aView

	"{ #a -> 20 . #b -> 70 . #c -> 10 } ringPieWithCaption: 'meh'"

	|b percentages sum|
	
	sum := (self collect: [ :a | a value ]) sum.
	percentages := (self collect: [ :a | a key -> ((a value / sum) * 100) ]) asDictionary.
	
	b := RTPieBuilder new.
	"b extent: self vizSize."
	aView ifNotNil: [ b view: aView ].
	b shape current
		innerRadius: 70;
		externalRadius: 100.
	b interaction popup.
	b objects: self.
	b slice: [:assoc | assoc value].
	b normalizer distinctColor.
	b labeled: [ :assoc | assoc key asString , ': ' , ((percentages at: assoc key) printShowingDecimalPlaces: 1) , '%' ].
	aString ifNotNil: [self addLabel: aString onGraph: b].
	^ b 