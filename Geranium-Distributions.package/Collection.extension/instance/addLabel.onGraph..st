*Geranium-Distributions
addLabel: aString onGraph: b
	| lb |
	aString ifNotNil: [
		lb := RTLegendBuilder new.
		lb view: b view.
		lb addColoredText: aString color: Color white.
		lb
			offset: 50;
			below.
		lb build
	]