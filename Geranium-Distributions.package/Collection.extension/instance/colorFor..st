*Geranium-Distributions
colorFor: aString
	
	"good enough"
	^ Color fromRgbTriplet: ((1 to: 3) collect: [ :i | (aString hash digitAt: i) / 255.0]). 