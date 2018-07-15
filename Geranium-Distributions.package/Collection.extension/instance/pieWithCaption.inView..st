*Geranium-Distributions
pieWithCaption: aString inView: aView

	"{ #a -> 20 . #b -> 70 . #c -> 10 } pieWithCaption: 'meh'"

	| b sum percentages |
	b := RTPieBuilder new.
	sum := (self collect: [ :a | a value ]) sum.
	percentages := (self collect: [ :a | a key -> ((a value / sum) * 100) ]) asDictionary.
	"b extent: self vizSize."
	aView ifNotNil: [ b view: aView ].
	b interaction popup.
	b objects: self.
	b slice: [:assoc | assoc value].
	b normalizer distinctColor.
	b labeled: [ :assoc | assoc key asString , ': ' , ((percentages at: assoc key) printShowingDecimalPlaces: 1) , '%' ].
	b emphasize: self first by: 20. 
	b emphasize: self second by: 20.
	aString ifNotNil: [self addLabel: aString onGraph: b].
	^ b 