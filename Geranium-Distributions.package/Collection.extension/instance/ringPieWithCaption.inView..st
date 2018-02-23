*Geranium-Distributions
ringPieWithCaption: aString inView: aView

	"{ #a -> 20 . #b -> 70 . #c -> 10 } ringPieWithCaption: 'meh'"

	| b |
	b := RTPieBuilder new.
	b extent: self vizSize.
	aView ifNotNil: [ b view: aView ].
	b shape current
		innerRadius: 70;
		externalRadius: 100.
	b interaction popup.
	b objects: self.
	b slice: [:assoc | assoc value].
	b normalizer distinctColor.
	b labeled: [ :assoc | assoc key ].
	self addLabel: aString onGraph: b.
	^ b 