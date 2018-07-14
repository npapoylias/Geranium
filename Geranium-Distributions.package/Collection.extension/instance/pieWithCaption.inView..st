*Geranium-Distributions
pieWithCaption: aString inView: aView

	"{ #a -> 20 . #b -> 70 . #c -> 10 } pieWithCaption: 'meh'"

	| b |
	b := RTPieBuilder new.
	"b extent: self vizSize."
	aView ifNotNil: [ b view: aView ].
	b interaction popup.
	b objects: self.
	b slice: [:assoc | assoc value].
	b normalizer distinctColor.
	b labeled: [ :assoc | assoc key ].
	b emphasize: self first by: 20. 
	b emphasize: self second by: 20.
	aString ifNotNil: [self addLabel: aString onGraph: b].
	^ b 