*Geranium-Distributions
addLabel: aString onGraph: b
	| lb |
	lb := RTLegendBuilder new.
	lb view: b view.
	lb addColoredText: aString color: Color white.
	lb
		offset: 50;
		below.
	lb build