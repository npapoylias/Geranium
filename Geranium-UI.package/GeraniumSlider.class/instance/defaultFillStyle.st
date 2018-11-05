accessing
defaultFillStyle
	"Answer the hue gradient."
	^ ImageFillStyle form: (self appForm: #slider).
	"^(GradientFillStyle colors: (self gradientRange collect: [:a | Color h: a s: 1.0 v: 1.0]))
		origin: self topLeft;
		direction: (self bounds isWide
					ifTrue: [self width@0]
					ifFalse: [0@self height])"