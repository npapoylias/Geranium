*Geranium-Distributions
pieWithCaption: aString

	"{ #a -> 20 . #b -> 70 . #c -> 10 } pieWithCaption: 'meh'"

	| b |
	b := RTPieBuilder new.
	b extent: self vizSize.
	b interaction popup.
	b objects: self.
	b slice: [:assoc | assoc value].
	b normalizer distinctColor.
	b labeled: [ :assoc | assoc key ].
	b emphasize: self first by: 20. "could be min and max"
	b emphasize: self second by: 20.
	self addLabel: aString onGraph: b.
	^ b 