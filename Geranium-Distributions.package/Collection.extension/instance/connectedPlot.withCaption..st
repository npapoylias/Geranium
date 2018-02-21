*Geranium-Distributions
connectedPlot: aColor withCaption: aString

	| b ds |
	
	b := RTGrapher new.
	b extent: 300 @ 200.
	ds := RTData new.
		ds noDot.
		ds points: self.
		ds connectColor: aColor.
		b add: ds.
	b
		axisX;
		axisY.
	b build.
	self addLabel: aString onGraph: b.
	^ b view.